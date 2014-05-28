/*
 * my_control.cpp
 *
 *  Created on: Mar 31, 2011
 *      Author: Rohit Kalaskar
 *	 Email: rohitkalaskar22@gmail.com
 */

#include <iostream>
#include <vector>
#include <string>

#include <boost/ref.hpp>
#include <boost/bind.hpp>
#include <boost/tuple/tuple.hpp>
#include <boost/thread.hpp>


#include "ros/ros.h"

#include "wam_srvs/BHandFingerPos.h"
#include "wam_srvs/BHandGraspPos.h"
#include "wam_srvs/BHandSpreadPos.h"
#include "wam_srvs/BHandFingerVel.h"
#include "wam_srvs/BHandGraspVel.h"
#include "wam_srvs/BHandSpreadVel.h"
#include "std_srvs/Empty.h"
#include "sensor_msgs/JointState.h"



#include <barrett/detail/stl_utils.h>  // waitForEnter()
#include <barrett/math.h>
#include <barrett/units.h>
#include <barrett/systems.h>
#include <barrett/log.h>
#include <barrett/products/product_manager.h>

#include <barrett/standard_main_function.h>


static const int PUBLISH_FREQ = 50; // Default Control Loop / Publishing Frequency

using namespace barrett;
using detail::waitForEnter;
using systems::connect;
using systems::disconnect;
using systems::reconnect;


enum TP_STATE {
	WAIT_FOR_TEACH,
	TEACHING,
	WAIT_FOR_PLAY,
	PLAYING,
	DONE_PLAYING,
	IDLE
} tpState = WAIT_FOR_TEACH;
bool loop = false;

void assertPosition(Hand* hand, Hand::jp_type innerLinkJp, double tolerance = 0.05) {
        hand->update();
        if (math::abs(hand->getInnerLinkPosition() - innerLinkJp).maxCoeff() > tolerance) {
                std::cout << hand->getInnerLinkPosition() << " is not close enough to " << innerLinkJp << "\n";
                exit(2);
        }
}



void displayEntryPoint(Hand* hand) {
	
	typedef Hand::jp_type hjp_t;
	double O = 0.0;
        double C = 2.4;
	double C1= 1.2;
        double SC = M_PI;
        hjp_t open(O);
        hjp_t closed(C);
	hjp_t closed1(C1);
        closed[3] = SC;
	closed1[3]= SC;

        double OR = -0.75;
        double CR = 0.75;
        Hand::jv_type opening(OR);
        Hand::jv_type closing(CR);
	Hand::jt_type oopen(-1.00);
	Hand::jt_type cclose(1.00);
	Hand::jt_type cclose1(0.50);



	if (hand != NULL) {
		printf("Press [Enter] to initialize the Hand. (Make sure it has room!)");
		waitForEnter();	
		hand->initialize();
	} else {
		printf("WARNING: No Hand found!\n");
	}

	assertPosition(hand, open);
        hand->close();
        assertPosition(hand, closed);
        hand->open();
        assertPosition(hand, open);
        hand->close(Hand::SPREAD);

/*
	{
                // Original interface preserved? Should move all 4 motors.
                hand->trapezoidalMove(closed);
                assertPosition(hand, closed);
                hand->trapezoidalMove(open, false);
                hand->waitUntilDoneMoving();
                assertPosition(hand, open);

                // New interface
                hand->trapezoidalMove(closed1, Hand::SPREAD);
                assertPosition(hand, hjp_t(O,O,O,SC));std::cout<<"111"<<std::endl;
                hand->trapezoidalMove(closed1, Hand::F1);
                assertPosition(hand, hjp_t(C1,O,O,SC));std::cout<<"222"<<std::endl;
                hand->trapezoidalMove(closed1, Hand::F2);
                assertPosition(hand, hjp_t(C1,C1,O,SC));std::cout<<"333"<<std::endl;
                hand->trapezoidalMove(closed1, Hand::F3);
                assertPosition(hand, closed1);std::cout<<"444"<<std::endl;
                hand->trapezoidalMove(open, Hand::GRASP);
                assertPosition(hand, hjp_t(O,O,O,SC));std::cout<<"555"<<std::endl;
                hand->trapezoidalMove(open, Hand::SPREAD);
                assertPosition(hand, open);std::cout<<"666"<<std::endl;
                hand->trapezoidalMove(closed1, Hand::F3 | Hand::SPREAD);
                assertPosition(hand, hjp_t(O,O,C1,SC));std::cout<<"777"<<std::endl;
                hand->trapezoidalMove(open, Hand::WHOLE_HAND);
                assertPosition(hand, open);
        }

	{
                double t = 0.0;

                // Original interface preserved? Should move all 4 motors.
                hand->velocityMove(closing);
                btsleep(1);
                t = 1.0;
                assertPosition(hand, hjp_t(CR*t), 0.2);

                // New interface
                hand->velocityMove(opening, Hand::GRASP);
                btsleep(1);
                t = 2.0;
                assertPosition(hand, hjp_t(O,O,O,CR*t), 0.4);
                hand->velocityMove(opening, Hand::WHOLE_HAND);
                hand->waitUntilDoneMoving();
                assertPosition(hand, open);
        }

*/


	Hand::jp_type currentPos(0.0);
	Hand::jp_type nextPos(M_PI);
	nextPos[3] = 0;


	printf("\n");
	printf("Commands:\n");
	printf("  t    Start teaching a new trajectory\n");
	printf("  p    Play back recorded trajectory\n");
	printf("  l    Loop recorded trajectory\n");
	printf("  s    Stop teaching, stop playing\n");
	printf("  At any time, press [Enter] to open or close the Hand.\n");
	printf("\n");

	std::string line;
	while (true) {
		printf(">> ");
		std::getline(std::cin, line);

		if (line.size() == 0) {
			if (hand != NULL) {
				hand->trapezoidalMove(nextPos, false);
				std::swap(currentPos, nextPos);
			}
		} else {
			switch (line[0]) {
			case 'c':
				hand->setTorqueMode();
				hand->setTorqueCommand(cclose);
				tpState = TEACHING;
				break;
			case 'l':
				hand->setTorqueMode();
                                hand->setTorqueCommand(cclose1);

				//loop = true;
				break;
			case 'o':
				hand->open();
				tpState = PLAYING;
				break;
			case 's':
				loop = false;
				if (tpState == TEACHING) {
					tpState = WAIT_FOR_PLAY;
				} else if (tpState == PLAYING  ||  tpState == DONE_PLAYING) {
					tpState = IDLE;
				}
				break;
			default:
				break;
			}
		}
	}
}

template<size_t DOF>
int wam_main(int argc, char** argv, ProductManager& pm, systems::Wam<DOF>& wam) {
	BARRETT_UNITS_TEMPLATE_TYPEDEFS(DOF);
	typedef boost::tuple<double, jp_type> jp_sample_type;


	char tmpFile[] = "/tmp/btXXXXXX";
	if (mkstemp(tmpFile) == -1) {
		printf("ERROR: Couldn't create temporary file!\n");
		return 1;
	}

	const double T_s = pm.getExecutionManager()->getPeriod();


	//wam.gravityCompensate();
	boost::thread displayThread(displayEntryPoint, pm.getHand());



	std::remove(tmpFile);
	pm.getSafetyModule()->waitForMode(SafetyModule::IDLE);

	return 0;
}

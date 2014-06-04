#include "ros/ros.h"
#include "std_msgs/String.h"
#include "wam_msgs/RTJointPos.h"
#include "wam_msgs/RTOrtnVel.h"
#include "wam_msgs/RTCartPos.h"

#include <sstream>

/**
 * This tutorial demonstrates simple sending of messages over the ROS system.
 */
int main(int argc, char **argv)
{
//std::cout<<"6666";ROS_INFO("6");
  /**
   * The ros::init() function needs to see argc and argv so that it can perform
   * any ROS arguments and name remapping that were provided at the command line. For programmatic
   * remappings you can use a different version of init() which takes remappings
   * directly, but for most command-line programs, passing argc and argv is the easiest
   * way to do it.  The third argument to init() is the name of the node.
   *
   * You must call one of the versions of ros::init() before using any other
   * part of the ROS system.
   */
  ros::init(argc, argv,"posi");

  /**
   * NodeHandle is the main access point to communications with the ROS system.
   * The first NodeHandle constructed will fully initialize this node, and the last
   * NodeHandle destructed will close down the node.
   */
  ros::NodeHandle n;
  ros::NodeHandle cart_h;

  /**
   * The advertise() function is how you tell ROS that you want to
   * publish on a given topic name. This invokes a call to the ROS
   * master node, which keeps a registry of who is publishing and who
   * is subscribing. After this advertise() call is made, the master
   * node will notify anyone who is trying to subscribe to this topic name,
   * and they will in turn negotiate a peer-to-peer connection with this
   * node.  advertise() returns a Publisher object which allows you to
   * publish messages on that topic through a call to publish().  Once
   * all copies of the returned Publisher object are destroyed, the topic
   * will be automatically unadvertised.
   *
   * The second parameter to advertise() is the size of the message queue
   * used for publishing messages.  If messages are published more quickly
   * than we can send them, the number here specifies how many messages to
   * buffer up before throwing some away.
   */
//std::cout<<"1111";ROS_INFO("1");
  ros::Publisher chatter_pub = n.advertise<wam_msgs::RTJointPos>("/wam/jnt_pos_cmd", 1000);
  ros::Publisher Cart_pub = cart_h.advertise<wam_msgs::RTCartPos>("/wam/cart_pos_cmd", 1000);
//std::cout<<"2222";ROS_INFO("2");
  ros::Rate loop_rate(10);
//std::cout<<"3333";ROS_INFO("3");
  /**
   * A count of how many messages we have sent. This is used to create
   * a unique string for each message.
   */
  int count = 0;
  while (ros::ok())
  {
    /**
     * This is a message object. You stuff it with data, and then publish it.
     */
//    _msgs::String msg;
    wam_msgs::RTJointPos msg1;
    wam_msgs::RTCartPos  msg2;
    msg1.joints.resize(7);
    msg1.rate_limits.resize(7);


//    ss << "hello world " << count;
//    msg.data = ss.str();
//std::cout<<"4444";ROS_INFO("4");
//ROS_INFO("%d",(CHAR_BIT * sizeof (float)));
//ROS_INFO("66");
    msg1.joints[0] = 0.0;//{0.5,0.5,0.5,0.5,0.5,0.5,0.5};
    msg1.joints[1] = 0.0;
    msg1.joints[2] = 0.0;
    msg1.joints[3] = 3.0;
    msg1.joints[4] = 0.0;
    msg1.joints[5] = 3.0;
    msg1.joints[6] = 3.0;

    msg1.rate_limits[0] = 0.50;//{0.5,0.5,0.5,0.5,0.5,0.5,0.5};
    msg1.rate_limits[1] = 0.50;
    msg1.rate_limits[2] = 0.50;
    msg1.rate_limits[3] = 0.50;
    msg1.rate_limits[4] = 0.50;
    msg1.rate_limits[5] = 0.50;
    msg1.rate_limits[6] = 0.50;

    msg2.position[0] = 0.5;//0.5-0.1*(count%10);
    msg2.position[1] = 0.5;//0.5-0.1*(count%10);
    msg2.position[2] = 0.5;//0.5;
    msg2.rate_limits[0] = 0.1;
    msg2.rate_limits[1] = 0.1;
    msg2.rate_limits[2] = 0.1;
    ROS_INFO("5");

    /**
     * The publish() function is how you send messages. The parameter
     * is the message object. The type of this object must agree with the type
     * given as a template parameter to the advertise<>() call, as was done
     * in the constructor above.
     */

    //chatter_pub.publish(msg1);
    Cart_pub.publish(msg2);
    ros::spinOnce();

    loop_rate.sleep();
    ++count;
  }


  return 0;
}

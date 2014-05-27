#include "ros/ros.h"

#include "wam_srvs/BHandFingerPos.h"
#include "wam_srvs/BHandGraspPos.h"
#include "wam_srvs/BHandSpreadPos.h"
#include "wam_srvs/BHandFingerVel.h"
#include "wam_srvs/BHandGraspVel.h"
#include "wam_srvs/BHandSpreadVel.h"
#include "std_srvs/Empty.h"
#include "sensor_msgs/JointState.h"

#include <barrett/os.h>
#include <barrett/math.h>
#include <barrett/products/product_manager.h>

static const int PUBLISH_FREQ = 50; // Default Control Loop / Publishing Frequency

using namespace barrett;

//BHandNode Class
class BHandNode
{
public:
  ros::NodeHandle n_; // BarrettHand specific nodehandle
  Hand* hand;

  //Published Topics
  sensor_msgs::JointState wam_joint_state, bhand_joint_state;

  //Publishers
  ros::Publisher wam_joint_state_pub, bhand_joint_state_pub, wam_pose_pub;

  //Services
  ros::ServiceServer hand_init_srv, hand_open_srv, hand_close_srv;
  ros::ServiceServer hand_open_grsp_srv, hand_close_grsp_srv, hand_open_sprd_srv;
  ros::ServiceServer hand_close_sprd_srv, hand_fngr_pos_srv, hand_fngr_vel_srv;
  ros::ServiceServer hand_grsp_pos_srv, hand_grsp_vel_srv, hand_sprd_pos_srv;
  ros::ServiceServer hand_sprd_vel_srv;

  BHandNode(Hand* hand_) :
      n_("bhand"), hand(hand_)
  {
  }
  void
  init();

  ~BHandNode()
  {
  }

  bool
  initialize(std_srvs::Empty::Request &req, std_srvs::Empty::Response &res);
  bool
  openGrasp(std_srvs::Empty::Request &req, std_srvs::Empty::Response &res);
  bool
  closeGrasp(std_srvs::Empty::Request &req, std_srvs::Empty::Response &res);
  bool
  openSpread(std_srvs::Empty::Request &req, std_srvs::Empty::Response &res);
  bool
  closeSpread(std_srvs::Empty::Request &req, std_srvs::Empty::Response &res);
  bool
  fingerPos(wam_srvs::BHandFingerPos::Request &req, wam_srvs::BHandFingerPos::Response &res);
  bool
  graspPos(wam_srvs::BHandGraspPos::Request &req, wam_srvs::BHandGraspPos::Response &res);
  bool
  spreadPos(wam_srvs::BHandSpreadPos::Request &req, wam_srvs::BHandSpreadPos::Response &res);
  bool
  fingerVel(wam_srvs::BHandFingerVel::Request &req, wam_srvs::BHandFingerVel::Response &res);
  bool
  graspVel(wam_srvs::BHandGraspVel::Request &req, wam_srvs::BHandGraspVel::Response &res);
  bool
  spreadVel(wam_srvs::BHandSpreadVel::Request &req, wam_srvs::BHandSpreadVel::Response &res);
  void
  publish(void);
};

void BHandNode::init()
{
  bhand_joint_state_pub = n_.advertise < sensor_msgs::JointState > ("joint_states", 1); // bhand/joint_states

  hand_init_srv = n_.advertiseService("initialize", &BHandNode::initialize, this); // bhand/initialize
  hand_open_grsp_srv = n_.advertiseService("open_grasp", &BHandNode::openGrasp, this); // bhand/open_grasp
  hand_close_grsp_srv = n_.advertiseService("close_grasp", &BHandNode::closeGrasp, this); // bhand/close_grasp
  hand_open_sprd_srv = n_.advertiseService("open_spread", &BHandNode::openSpread, this); // bhand/open_spread
  hand_close_sprd_srv = n_.advertiseService("close_spread", &BHandNode::closeSpread, this); // bhand/close_spread
  hand_fngr_pos_srv = n_.advertiseService("finger_pos", &BHandNode::fingerPos, this); // bhand/finger_pos
  hand_grsp_pos_srv = n_.advertiseService("grasp_pos", &BHandNode::graspPos, this); // bhand/grasp_pos
  hand_sprd_pos_srv = n_.advertiseService("spread_pos", &BHandNode::spreadPos, this); // bhand/spread_pos
  hand_fngr_vel_srv = n_.advertiseService("finger_vel", &BHandNode::fingerVel, this); // bhand/finger_vel
  hand_grsp_vel_srv = n_.advertiseService("grasp_vel", &BHandNode::graspVel, this); // bhand/grasp_vel
  hand_sprd_vel_srv = n_.advertiseService("spread_vel", &BHandNode::spreadVel, this); // bhand/spread_vel

  //Set up the BarrettHand joint state publisher
  const char* bhand_jnts[] = {"inner_f1", "inner_f2", "inner_f3", "spread", "outer_f1", "outer_f2", "outer_f3"};
  std::vector < std::string > bhand_joints(bhand_jnts, bhand_jnts + 7);
  bhand_joint_state.name.resize(7);
  bhand_joint_state.name = bhand_joints;
  bhand_joint_state.position.resize(7);
}

bool BHandNode::initialize(std_srvs::Empty::Request &req, std_srvs::Empty::Response &res)
{
  hand->initialize();
  hand->update();
  return true;
}
bool BHandNode::openGrasp(std_srvs::Empty::Request &req, std_srvs::Empty::Response &res)
{
  ROS_INFO("Opening the BarrettHand Grasp");
  hand->open(Hand::GRASP, false);
  return true;
}
bool BHandNode::closeGrasp(std_srvs::Empty::Request &req, std_srvs::Empty::Response &res)
{
  ROS_INFO("Closing the BarrettHand Grasp");
  hand->close(Hand::GRASP, false);
  return true;
}
bool BHandNode::openSpread(std_srvs::Empty::Request &req, std_srvs::Empty::Response &res)
{
  ROS_INFO("Opening the BarrettHand Spread");
  hand->open(Hand::SPREAD, false);
  return true;
}
bool BHandNode::closeSpread(std_srvs::Empty::Request &req, std_srvs::Empty::Response &res)
{
  ROS_INFO("Closing the BarrettHand Spread");
  hand->close(Hand::SPREAD, false);
  return true;
}
bool BHandNode::fingerPos(wam_srvs::BHandFingerPos::Request &req, wam_srvs::BHandFingerPos::Response &res)
{
  ROS_INFO("Moving BarrettHand to Finger Positions: %.3f, %.3f, %.3f radians", req.radians[0], req.radians[1],
           req.radians[2]);
  hand->trapezoidalMove(Hand::jp_type(req.radians[0], req.radians[1], req.radians[2], 0.0), Hand::GRASP, false);
  return true;
}
bool BHandNode::graspPos(wam_srvs::BHandGraspPos::Request &req, wam_srvs::BHandGraspPos::Response &res)
{
  ROS_INFO("Moving BarrettHand Grasp: %.3f radians", req.radians);
  hand->trapezoidalMove(Hand::jp_type(req.radians), Hand::GRASP, false);
  return true;
}
bool BHandNode::spreadPos(wam_srvs::BHandSpreadPos::Request &req, wam_srvs::BHandSpreadPos::Response &res)
{
  ROS_INFO("Moving BarrettHand Spread: %.3f radians", req.radians);
  hand->trapezoidalMove(Hand::jp_type(req.radians), Hand::SPREAD, false);
  return true;
}
bool BHandNode::fingerVel(wam_srvs::BHandFingerVel::Request &req, wam_srvs::BHandFingerVel::Response &res)
{
  ROS_INFO("Moving BarrettHand Finger Velocities: %.3f, %.3f, %.3f m/s", req.velocity[0], req.velocity[1],
           req.velocity[2]);
  hand->velocityMove(Hand::jv_type(req.velocity[0], req.velocity[1], req.velocity[2], 0.0), Hand::GRASP);
  return true;
}
bool BHandNode::graspVel(wam_srvs::BHandGraspVel::Request &req, wam_srvs::BHandGraspVel::Response &res)
{
  ROS_INFO("Moving BarrettHand Grasp: %.3f m/s", req.velocity);
  hand->velocityMove(Hand::jv_type(req.velocity), Hand::GRASP);
  return true;
}
bool BHandNode::spreadVel(wam_srvs::BHandSpreadVel::Request &req, wam_srvs::BHandSpreadVel::Response &res)
{
  ROS_INFO("Moving BarrettHand Spread: %.3f m/s", req.velocity);
  usleep(5000);
  hand->velocityMove(Hand::jv_type(req.velocity), Hand::SPREAD);
  return true;
}
void BHandNode::publish(void)
{
  hand->update(); // Update the hand sensors
  Hand::jp_type hi = hand->getInnerLinkPosition(); // get finger positions information
  Hand::jp_type ho = hand->getOuterLinkPosition();
  for (size_t i = 0; i < 4; i++) // Save finger positions
    bhand_joint_state.position[i] = hi[i];
  for (size_t j = 0; j < 3; j++)
    bhand_joint_state.position[j + 4] = ho[j];
  bhand_joint_state.header.stamp = ros::Time::now(); // Set the timestamp
  bhand_joint_state_pub.publish(bhand_joint_state); // Publish the BarrettHand joint states
  btsleep(1.0 / PUBLISH_FREQ); // Sleep according to the specified publishing frequency
}

int main(int argc, char** argv)
{
  ros::init(argc, argv, "bhand_node");

  ProductManager pm;
  if (!pm.foundHand())
  {
    printf("ERROR: No Hand found on bus!\n");
    return 1;
  }

  Hand* hand = pm.getHand();

  BHandNode bhand_node(hand);

  bhand_node.init();

  ros::Rate pub_rate(PUBLISH_FREQ);

  while (bhand_node.n_.ok())
  {
    ros::spinOnce();
    bhand_node.publish();
    pub_rate.sleep();
  }

  hand->idle();

  return 0;
}

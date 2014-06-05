#!/usr/bin/env python
# license removed for brevity
import rospy
import math
PACKAGE='wam_msgs'
import roslib
roslib.load_manifest(PACKAGE)

from std_msgs.msg import String
from wam_msgs.msg import RTCartPos
from wam_msgs.msg import RTOrtnVel
from wam_msgs.msg import RTJointPos
from wam_msgs.msg import RTJointVel

def talker():
    joint_pos_pub = rospy.Publisher('/wam/jnt_pos_cmd', RTJointPos)
    cart_pos_pub  = rospy.Publisher('/wam/cart_pos_cmd', RTCartPos)
    joint_vel_pub = rospy.Publisher('/wam/jnt_vel_cmd', RTJointVel)

    rospy.init_node('wam_python', anonymous=True)
    r = rospy.Rate(10) # 10hz
    msg2 = RTCartPos()
    t=0.0

    while not rospy.is_shutdown():

        #cart_pos_pub.publish(cart_pos_msg(t))
        joint_pos_pub.publish(joint_pos_msg(t))
        #joint_vel_pub.publish(joint_vel_msg(t))
        t=t+0.1
        rospy.loginfo(t)
        r.sleep()


def joint_pos_msg(t):

    msg = RTJointPos([math.sin(t/5),3.1416/2,3.1416/2,math.cos(t/5),0.0,3.1416/2,0.0],[0.2*abs(math.cos(t/5)),0.2,0.2,0.2*abs(math.sin(t/5)),0.2,0.2,0.2])
    #msg = RTJointPos([0,3.1416/2,3.1416/2,0,0.0,3.1416/2,0.0],[0.2,0.2,0.2,0.2,0.2,0.2,0.2])
    
    return msg


def joint_vel_msg(t):
    msg = RTJointVel([0.4*math.sin(t/5),0.0,0.0,0.4*math.cos(t/5),0.0,0.0,0.0])
    
    return msg


def cart_pos_msg(t):
    msg = RTCartPos()
    
    msg.position[0] = 0.5*math.sin((0.4/6.28)*t)
    msg.position[1] = 0.5*math.cos((0.4/6.28)*t)
    msg.position[2] = 0.5
    msg.rate_limits[0] = 0.1
    msg.rate_limits[1] = 0.1
    msg.rate_limits[2] = 0.1

    return msg


if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException: pass

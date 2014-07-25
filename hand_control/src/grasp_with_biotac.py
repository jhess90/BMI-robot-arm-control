#!/usr/bin/env python
# license removed for brevity
import rospy
import math
PACKAGE='wam_node'
#PACKAGE2='wam_node'
import roslib
roslib.load_manifest(PACKAGE)
#roslib.load_manifest(PACKAGE2)
from std_msgs.msg import String
from wam_node.msg import HandPosVel
from biotac_sensors.msg import BioTacHand

global f_1
global f_2
global f_3




def talker():
    rospy.Subscriber("biotac_pub", BioTacHand , callback_biotac)
    joint_vel_pub = rospy.Publisher('/bhand/hand_pos_vel_cmd', HandPosVel)

    rospy.init_node('wam_python', anonymous=True)
    r = rospy.Rate(10) # 10hz
    

    while not rospy.is_shutdown():

        rospy.loginfo(f1)
        r.sleep()


def callback_biotac(msg):
    global f_1
    global f_2
    global f_3

    f_1=msg.bt_data[0].tdc_data
    f_2=msg.bt_data[1].tdc_data
    f_3=msg.bt_data[2].tdc_data
    

def joint_vel_msg(t):
    msg = RTJointVel([0.4*math.sin(t/5),0.0,0.0,0.4*math.cos(t/5),0.0,0.0,0.0])
    
    return msg


if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException: pass

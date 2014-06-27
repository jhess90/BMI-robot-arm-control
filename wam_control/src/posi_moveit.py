#!/usr/bin/env python
# license removed for brevity
import rospy
import math
PACKAGE='wam_msgs'
import roslib
from operator import sub
from operator import add
from operator import mul

roslib.load_manifest(PACKAGE)

from std_msgs.msg import String
from wam_msgs.msg import RTCartPos
from wam_msgs.msg import RTOrtnVel
from wam_msgs.msg import RTJointPos
from wam_msgs.msg import RTJointVel
from sensor_msgs.msg import JointState
from moveit_msgs.msg import DisplayTrajectory

Talker_hz=10
global Trajectory
global pos_actual
Trajectory = []

def roll():
    global Trajectory
    Trajectory=Trajectory[1:]

def fill_msg(msg):
    global Trajectory
    count=0
    for i in msg.trajectory[0].joint_trajectory.points:
        Trajectory.append(i)
        #rospy.loginfo(count)
        count+=1
    #MSG.append(RTJointPos(,))
    #publish_to_wam()

def wam_joints_actual(msg):
    global pos_actual
    pos_actual = msg.position
    #rospy.loginfo(pos_actual)

def joint_pos_msg(t):

    msg = RTJointPos([math.sin(t/5),3.1416/2,3.1416/2,math.cos(t/5),0.0,3.1416/2,0.0],[0.2*abs(math.cos(t/5)),0.2,0.2,0.2*abs(math.sin(t/5)),0.2,0.2,0.2])
    #msg = RTJointPos([0,3.1416/2,3.1416/2,0,0.0,3.1416/2,0.0],[0.2,0.2,0.2,0.2,0.2,0.2,0.2])
    
    return msg


def joint_vel_msg(t):
    msg = RTJointVel([0.4*math.sin(t/5),0.0,0.0,0.4*math.cos(t/5),0.0,0.0,0.0])
    
    return msg

def pos_init(r,joint_pos_pub):
    global Trajectory
    while (pow(sum(map(mul,[1,1,1,1,0,1,1],map(mul,map(sub,Trajectory[0].positions,pos_actual),map(sub,Trajectory[0].positions,pos_actual)))),0.5)>0.03):
        if len(Trajectory) == 0:
            pub_signal = False

        elif Trajectory[0].time_from_start == rospy.Duration(0):
            msg = RTJointPos( Trajectory[0].positions , [0.2,0.2,0.2,0.2,0.2,0.2,0.2])
            pub_signal = True
            Time = rospy.Duration(0)

        if pub_signal:
            joint_pos_pub.publish(msg)
            r.sleep()
        rospy.loginfo(pow(sum(map(mul,map(sub,Trajectory[0].positions,pos_actual),map(sub,Trajectory[0].positions,pos_actual))),0.5))



def cart_pos_msg(t):
    msg = RTCartPos()
    
    msg.position[0] = 0.5*math.sin((0.4/6.28)*t)
    msg.position[1] = 0.5*math.cos((0.4/6.28)*t)
    msg.position[2] = 0.5
    msg.rate_limits[0] = 0.1
    msg.rate_limits[1] = 0.1
    msg.rate_limits[2] = 0.1

    return msg

def talker():
    global Trajectory
    joint_pos_pub = rospy.Publisher('/wam/jnt_pos_cmd', RTJointPos)
    cart_pos_pub  = rospy.Publisher('/wam/cart_pos_cmd', RTCartPos)
    joint_vel_pub = rospy.Publisher('/wam/jnt_vel_cmd', RTJointVel)
    traj_plan_sub = rospy.Subscriber('/move_group/display_planned_path', DisplayTrajectory, fill_msg)
    wam_pos_sub = rospy.Subscriber('/wam/joint_states', JointState, wam_joints_actual)

    rospy.init_node('wam_python', anonymous=True)
    r = rospy.Rate(Talker_hz) # 10hz
    #msg2 = RTCartPos(r)
    publish_to_wam(r,joint_pos_pub)

def publish_to_wam(r,joint_pos_pub):
    global Trajectory
    #global pos_actual ############################################################## from wam
    temp = DisplayTrajectory()
    Time = rospy.Duration(0)
    t = rospy.Duration(1)/ float(Talker_hz)
    #pos_init(r,joint_pos_pub)

    while not rospy.is_shutdown():
        #rospy.loginfo(pos_actual)

        if len(Trajectory) == 0:
            pub_signal = False

        elif Trajectory[0].time_from_start == rospy.Duration(0):
            #msg = RTJointPos( Trajectory[0].positions , [0.2,0.2,0.2,0.2,0.2,0.2,0.2])
            pos_init(r,joint_pos_pub)
            pub_signal = False
            roll()
            Time = rospy.Duration(0)
            rospy.loginfo("############################333")    

        elif Trajectory[0].time_from_start >= (Time + t):
            #######################################global pos_actual
            pos_diff = map(sub,Trajectory[0].positions,pos_actual)
            time_diff = float(str(Trajectory[0].time_from_start - Time))*pow(10,-9)
            time_ratio = float(str(t))/float(str(time_diff))
            msg = RTJointPos( map(add , pos_actual , [x*time_ratio for x in pos_diff] ) , [abs(x/time_diff) for x in pos_diff]) # ) , 
            pub_signal = True
            roll()
            Time += t

        elif Trajectory[0].time_from_start < (Time + t) and len(Trajectory) > 1:
            pub_signal = False
            roll()

        elif Trajectory[0].time_from_start < (Time + t) and len(Trajectory) ==1:
            pos_diff = map(sub,Trajectory[0].positions,pos_actual)
            time_diff = float(str(Trajectory[0].time_from_start - Time))*pow(10,-9)
            time_ratio = float(str(t))/float(str(time_diff))
            msg = RTJointPos( Trajectory[0].positions , [0.2,0.2,0.2,0.2,0.2,0.2,0.2])  #[x/time_diff for x in pos_diff]
            pub_signal = True
            roll()
            Time += time_diff
        #cart_pos_pub.publish(cart_pos_msg(t))
        #joint_pos_pub.publish(joint_pos_msg(t))
        #joint_vel_pub.publish(joint_vel_msg(t))
        #t=t+1.0/10
        if pub_signal:
            rospy.loginfo(msg)
            joint_pos_pub.publish(msg)
            r.sleep()
        #rospy.loginfo(Time)

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException: pass

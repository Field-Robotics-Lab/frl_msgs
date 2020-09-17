#!/usr/bin/env python
import rospy
from frl_vehicle_msgs.msg import UwGliderCommand
from frl_vehicle_msgs.msg import UwGliderStatus

def cmd_callback(msg):
    print msg

def status_callback(msg):
    print msg

if __name__ == '__main__':
    rospy.init_node('glider_example', anonymous=True)
    rospy.Subscriber("glider_command", UwGliderCommand, cmd_callback)
    rospy.Subscriber("glider_status", UwGliderStatus, status_callback)
    rospy.spin() 



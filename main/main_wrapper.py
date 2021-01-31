#!/usr/bin/env python

import rospy
from std_msgs.msg import Int32MultiArray

from main import Robot

class mainWrapperROS:

    def __init__(self):
        self.main = Robot()

        self.data_to_send = 0
        
        self.publisher_manual = rospy.Publisher("main_manual", Int32MultiArray, queue_size=10)
        self.publisher_automated = rospy.Publisher("main_automated", Int32MultiArray, queue_size=10)

        #ROS Service might be useful here

    def publish_data_manual(self, event=None):
        self.data_to_send_M = Int32MultiArray(data=self.main.dummy_array_M)
        self.publisher_manual.publish(self.data_to_send_M)

    def publish_data_automated(self, event=None):
        self.data_to_send_A = Int32MultiArray(data=self.main.dummy_array_A)
        self.publisher_automated.publish(self.data_to_send_A)

if __name__ == "__main__":
    rospy.init_node("main_node")
        
    # if statements for publishing data

    main_wrapper = mainWrapperROS()

    rospy.on_shutdown() # stop everything, close UI

    rospy.loginfo("Main node initialized successfully")

    rospy.spin()
    #while True:

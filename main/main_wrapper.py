#!/usr/bin/env python

import time
import math
import sys
import tty
import termios

import rospy
from std_msgs.msg import Int32

from main import Robot

class mainWrapperROS:

    def __init__(self):
        self.main = Robot()

        self.data_to_send = 0
        
        self.publisher_manual = rospy.Publisher("main_manual", Int32, queue_size=10)
        self.publisher_automated = rospy.Publisher("main_automated", Int32, queue_size=10)

        #ROS Service might be useful here

    def publish_data_manual(self, event=None):
        self.data_to_send_M = Int32(data=self.main.dummy_opcode)
        self.publisher_manual.publish(self.data_to_send_M)

    def publish_data_automated(self, event=None):
        self.data_to_send_A = Int32(data=self.main.dummy_opcode)
        self.publisher_automated.publish(self.data_to_send_A)

    def big_red_button(self):
        pass
        # this is where the emergency stop code will go

    def get_char(self):
        file_descriptor = sys.stdin.fileno()
        old_settings = termios.tcgetattr(file_descriptor)

        try:
            tty.setraw(file_descriptor)
            character = sys.stdin.read(1)
        finally:
            termios.tcsetattr(file_descriptor, termios.TCSADRAIN, old_settings)

        return character


if __name__ == "__main__":
    rospy.init_node("main_node")
        
    main_wrapper = mainWrapperROS()

    rospy.on_shutdown() # stop everything, close UI

    rospy.loginfo("Main node initialized successfully")

    # rospy.spin()
    while True:
        # control loop
        char = mainWrapperROS.get_char() # get the character from the keyboard
        char_val = ord(char) # convert the character read in to its ASCII value

        if (char_val == 27): # esc -- end whole program
            break

        if (char_val):

    print("Ending Program...")

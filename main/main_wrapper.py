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
        
        self.publisher_manual = rospy.Publisher("main_manual", Int32, queue_size=10)
        self.publisher_automated = rospy.Publisher("main_automated", Int32, queue_size=10)

    def publish_data_manual(self, event=None, data=None):
        data = Int32(data=data)
        self.publisher_manual.publish(data)

    def publish_data_automated(self, event=None, data=None):
        data = Int32(data=data)
        self.publisher_automated.publish(data)

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

    #rospy.on_shutdown() # stop everything, close UI

    rospy.loginfo("Main node initialized successfully")

    # rospy.spin()
    while True:
        # control loop
        char = mainWrapperROS.get_char() # get the character from the keyboard
        char_val = ord(char) # convert the character read in to its ASCII value

        if (char_val == 27): # esc -- end whole program
            break

        if (char_val == 119 or char_val == 87):
            # W -- go forward
            opcode = 0
            main_wrapper.publish_data_manual(opcode)
        if (char_val == 120 or char_val == 88):
            # X -- STOP
            opcode = 4
            main_wrapper.publish_data_manual(opcode)

    print("Ending Program...")

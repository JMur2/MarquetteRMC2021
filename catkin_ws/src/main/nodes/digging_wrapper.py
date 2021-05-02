#!/usr/bin/env python

import rospy
from std_msgs.msg import Int32

from digging import Digging

class diggingWrapperROS:

    def __init__(self):
        self.digging = Digging()
        self.speed = 20
        self.opcode = -1

        rospy.Subscriber("main_manual", Int32, self.callback_main)
        rospy.Subscriber("emergency_stop", Int32, self.callback_stop)

    def callback_main(self, msg):
        self.opcode = msg.data

        if self.opcode >= 7 and self.opcode <= 20:
            #belt (dont change speed!!!)
            if self.opcode == 7:
                self.digging.zipper_forward(12)
            if self.opcode == 8:
                self.digging.zipper_back(12)
            if self.opcode == 9:
                self.digging.zipper_stop()
            if self.opcode == 10:
                self.digging.depth_extend(self.speed)
            if self.opcode == 11:
                self.digging.depth_retract(self.speed)
            #pitch
            if self.opcode == 12:
                self.digging.depth_stop()
            if self.opcode == 13:
                self.digging.stepper_forward(200)
            if self.opcode == 14:
                self.digging.stepper_backward(200)
            if self.opcode == 15:
                self.digging.stepper_stop()
            if self.opcode == 16:
                self.speed = 20
            if self.opcode == 17:
                self.speed = 50
            if self.opcode == 18:
                self.speed = 67
            if self.opcode == 19:
                self.engage()
            if self.opcode == 20:
                self.stop()
    
    def callback_stop(self, msg):
        self.opcode = msg.data
        if self.opcode == 1:
            try:
                self.stop()
                print(self.opcode)
                print("Successfully shutdown the Digging subsystem")
            except:
                print("Something went wrong with Digging shutdown")
        elif self.opcode == 2:
            self.engage()

    def stop(self):
        self.digging.dig_disengage_depth()
        self.digging.dig_disengage_zipper()
        self.digging.dig_disengage_pitch()

    def engage(self):
        self.digging.dig_engage_depth()
        self.digging.dig_engage_zipper()
        

if __name__ == "__main__":
    rospy.init_node("digging_node")

    digging_wrapper = diggingWrapperROS()

    rospy.on_shutdown(digging_wrapper.stop)

    rospy.loginfo("Digging node initialized successfully")

    rospy.spin()

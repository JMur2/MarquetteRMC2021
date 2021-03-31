#!/usr/bin/env python

import rospy
from std_msgs.msg import Int32

from dumping import Dumping

class dumpingWrapperROS:

    def __init__(self):
        self.dumping = Dumping()

        self.opcode = -1

        rospy.Subscriber("main_manual", Int32, self.callback_main)
        rospy.Subscriber("emergency_stop", Int32, self.callback_stop)
    
    def callback_main(self, msg):
        self.opcode = msg.data

        if self.opcode >= 21 and self.opcode <= 28:
            if self.opcode == 21:
                self.dumping.stepper_forward()
            if self.opcode == 22:
                self.dumping.stepper_backward()
            if self.opcode == 23:
                self.dumping.stepper_stop()
            if self.opcode == 24:
                self.dumping.actuator_extend()
            if self.opcode == 25:
                self.dumping.actuator_retract()
            if self.opcode == 26:
                self.dumping.actuator_stop()
            if self.opcode == 27:
                self.engage()
            if self.opcode == 28:
                self.stop()

    def callback_stop(self, msg):
        self.opcode = msg.data
        if self.opcode == 1:
            try:
                self.stop()
                print(self.opcode)
                print("Successfully shutdown the Dumping subsystem")
            except:
                print("Something went wrong with Dumping shutdown")
        elif self.opcode == 2:
            self.engage()

    def stop(self):
        # self.dumping.actuator_stop()

        self.dumping.disable_stepper()
        self.dumping.disable_roboclaw()
    
    def engage(self):
        self.dumping.enable_roboclaw()

if __name__ == "__main__":
    rospy.init_node("dumping_node")

    dumping_wrapper = dumpingWrapperROS()

    rospy.on_shutdown(dumping_wrapper.stop)

    rospy.loginfo("Dumping node initialized successfully")

    rospy.spin()

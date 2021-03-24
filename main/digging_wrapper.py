#!/usr/bin/env python

import rospy
from std_msgs.msg import Int32

from digging import Digging

class diggingWrapperROS:

    def __init__(self):
        self.digging = Digging()

        self.opcode = -1

        rospy.Subscriber("main_manual", Int32, self.callback_main)
        rospy.Subscriber("emergency_stop", Int32, self.callback_stop)

    def callback_main(self, msg):
        self.opcode = msg.data

        if self.opcode >= 7 and self.opcode <= 18:
            if self.opcode == 7:
                self.digging.zipper_forward(self.speed)
            if self.opcode == 8:
                self.digging.zipper_back(self.speed)
            if self.opcode == 9:
                self.digging.zipper_stop()
            if self.opcode == 10:
                self.digging.depth_extend(30)
            if self.opcode == 11:
                self.digging.depth_retract(30)
            if self.opcode == 12:
                self.digging.depth_stop()
            if self.opcode == 13:
                self.digging.stepper_forward(10)
            if self.opcode == 14:
                self.digging.stepper_backward(10)
            if self.opcode == 15:
                self.digging.stepper_stop()
            if self.opcode == 16:
                self.speed = 20
            if self.opcode == 16:
                self.speed = 50
            if self.opcode == 18:
                self.speed = 67
    
    def callback_stop(self):
        try:
            self.stop()
            print("Successfully shutdown the Digging subsystem")
        except:
            print("Something went wrong with Digging shutdown")

    def stop(self):
        self.digging.odrv0.axis0.controller.input_vel = 0
        self.digging.odrv0.axis1.controller.input_vel = 0

        self.digging.dig_disengage_depth()
        self.digging.dig_disengage_zipper()
        self.digging.dig_disengage_pitch()

if __name__ == "__main__":
    rospy.init_node("digging_node")

    digging_wrapper = diggingWrapperROS()

    rospy.on_shutdown(digging_wrapper.stop)

    rospy.loginfo("Digging node initialized successfully")

    rospy.spin()

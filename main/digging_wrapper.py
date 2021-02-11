#!/usr/bin/env python

import rospy
from std_msgs.msg import Int32MultiArray

from digging import Digging

class diggingWrapperROS:

    def __init__(self):
        self.digging = Digging()

        self.opcode = -1

        rospy.Subscriber("main_manual", Int32MultiArray, self.callback_main)

    def callback_main(self, msg):
        self.opcode = msg.data

        if self.opcode >= 6 and self.opcode <= 13:
            if self.opcode == 6:
                self.digging.zipper_forward(67)
            if self.opcode == 7:
                self.digging.zipper_back(67)
            if self.opcode == 8:
                self.digging.zipper_stop()
            if self.opcode == 9:
                self.digging.depth_extend(50)
            if self.opcode == 10:
                self.digging.depth_retract(50)
            if self.opcode == 11:
                self.digging.depth_stop(50)
            if self.opcode == 12:
                self.digging.stepper_forward()
            if self.opcode == 13:
                self.digging.stepper_backward()
    
    def stop(self):
        self.digging.depth_stop()
        self.digging.zipper_stop()

if __name__ == "__main__":
    rospy.init_node("digging_node")

    digging_wrapper = diggingWrapperROS()

    rospy.on_shutdown(digging_wrapper.stop)

    rospy.loginfo("Digging node initialized successfully")

    rospy.spin()

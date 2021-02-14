#!/usr/bin/env python

import rospy
from std_msgs.msg import Int32

from dumping import Dumping

class dumpingWrapperROS:

    def __init__(self):
        self.dumping = Dumping()

        self.opcode = -1

        rospy.Subscriber("main_manual", Int32, self.callback_main)
    
    def callback_main(self, msg):
        self.opcode = msg.data

        if self.opcode >= 14 and self.opcode <= 17:
            if self.opcode == 14:
                self.dumping.stepper_forward()
            if self.opcode == 15:
                self.dumping.stepper_backward()
            if self.opcode == 16:
                self.dumping.actuator_extend()
            if self.opcode == 17:
                self.dumping.actuator_retract()


if __name__ == "__main__":
    rospy.init_node("dumping_node")

    dumping_wrapper = dumpingWrapperROS()

    #rospy.on_shutdown()

    rospy.loginfo("***Dumping node initialized successfully***")

    rospy.spin()

#!/usr/bin/env python

import rospy
from std_msgs.msg import Int32

from dumping import Dumping

class dumpingWrapperROS:

    def __init__(self):
        self.dumping = Dumping()

        self.opcode = -1

        rospy.Subscriber("main_manual", Int32, self.callback_main)
        rospy.Subscriber("automation_publisher", Int32, self.callback_main)
        rospy.Subscriber("emergency_stop", Int32, self.callback_stop)
    
    def callback_main(self, msg):
        self.opcode = msg.data

        if self.opcode >= 18 and self.opcode <= 23:
            if self.opcode == 18:
                self.dumping.stepper_forward()
            if self.opcode == 19:
                self.dumping.stepper_backward()
            if self.opcode == 20:
                self.dumping.stepper_stop()
            if self.opcode == 21:
                self.dumping.actuator_extend()
            if self.opcode == 22:
                self.dumping.actuator_retract()
            if self.opcode == 23:
                self.dumping.actuator_stop()

    def callback_stop(self):
        self.stop()

    def stop(self):
        self.dumping.stepper_stop()

if __name__ == "__main__":
    rospy.init_node("dumping_node")

    dumping_wrapper = dumpingWrapperROS()

    rospy.on_shutdown(dumping_wrapper.stop)

    rospy.loginfo("***Dumping node initialized successfully***")

    rospy.spin()

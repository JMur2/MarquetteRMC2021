#!/usr/bin/env python

import rospy
from std_msgs.msg import Int32

from locomotion import Locomotion

class locomotionWrapperROS:

    def __init__(self):
        self.locomotion = Locomotion()

        self.opcode = -1

        rospy.Subscriber("main_manual", Int32, self.callback_main)
        rospy.Subscriber("emergency_stop", Int32, self.callback_stop)

    def callback_main(self, msg): 
        self.opcode = msg.data

        if self.opcode >= 0 and self.opcode <= 5:
            if self.opcode == 0:
                self.locomotion.loco_forward(67)
            if self.opcode == 1:
                self.locomotion.loco_left(67)
            if self.opcode == 2:
                self.locomotion.loco_back(67)
            if self.opcode == 3:
                self.locomotion.loco_right(67)
            if self.opcode == 4:
                self.locomotion.loco_stop()
            if self.opcode == 5:
                self.locomotion.loco_config_check()

    def callback_stop(self):
        self.stop()

    def stop(self):
        self.locomotion.loco_disengage_motor()

if __name__ == "__main__":
    rospy.init_node("locomotion_node")

    locomotion_wrapper = locomotionWrapperROS()

    rospy.on_shutdown(locomotion_wrapper.stop) 

    rospy.loginfo("***Locomotion node initialized successfully***") 

    rospy.spin() 

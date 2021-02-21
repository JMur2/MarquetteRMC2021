#!/usr/bin/env python

import rospy
from std_msgs.msg import Int32

from main import Robot
#from main import Ui_Dialog

class mainWrapperROS:

    def __init__(self):
        self.main = Robot()
        #self.main = Ui_Dialog()
        
        self.opcode = -1

        self.publisher_manual = rospy.Publisher("main_manual", Int32, queue_size=1)
        self.publisher_automated = rospy.Publisher("main_automated", Int32, queue_size=1)
        #self.big_red_button = rospy.Publisher("emergency_stop", Int32, queue_size=10)

    def publish_data_manual(self, event=None):
        opcode = self.main.get_opcode()
        print("OPCODE returned: ", opcode)
        data = Int32(data=opcode)
        self.publisher_manual.publish(data)

    def publish_data_automated(self, event=None):
        d = self.main.get_data()
        data = Int32(data=d)
        self.publisher_automated.publish(data)

    def big_red_button(self):
        pass
        # this is where the emergency stop code will go

if __name__ == "__main__":
    rospy.init_node("main_node")
        
    main_wrapper = mainWrapperROS()

    #rospy.on_shutdown() # stop everything, close UI

    rospy.loginfo("***Main node initialized successfully***")

    main_wrapper.main.init_gui()

    while True:
        main_wrapper.publish_data_manual() 
        # if main_wrapper.main.get_state == "manual":
        #     main_wrapper.publish_data_manual()

        # if main_wrapper.main.get_state == "automation":
        #     main_wrapper.publish_data_automated()

    rospy.spin()

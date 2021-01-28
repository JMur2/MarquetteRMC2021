#!/usr/bin/env python

import rospy
from locomotion import Locomotion

if __name__ == "__main__":
    rospy.init_node("locomotion_node")

    # if locomotion was OOPified then the declaration would go here
    # need to discuss if its worth

    rospy.on_shutdown(Locomotion.loco_stop) # tells the node what action to take on shutdown

    rospy.loginfo("") # any message we want to display to the user
                      # likely confirmation that the node is working as intended

    rospy.spin() # essentially an infinite loop that keeps the node active

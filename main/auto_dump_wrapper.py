#!/usr/bin/env python

import rospy
from std_msgs.msg import Int32

class autoDumpingWrapperROS:

    def __init__(self):
        #content object
 
        self.auto_dump_publisher = rospy.Publisher("auto_dig", Int32, queue_size=1)

        #subscribers to sensor data and Main
        rospy.Subscriber("main_automated", Int32, self.callback_main)
        rospy.Subscriber("sensor_data", Int32, self.callback_sensor) # might change type from Int32

    def publish_opcode(self, event=None, op=None):
        data = Int32(data=op)
        self.auto_dig_publisher.publish(data)

    def callback_main(self, msg):
        pass
        """
            This will handle all "static" operations that happen at the beginning and end
            of digging automation - prepping digging arm, pulling out of the ground, etc.
        """

    def callback_sensor(self, msg):
        pass
        """
            This will handle the "main digging loop" where we are constantly checking the sensor data
            and deciding which opcode to run on the subassembly
        """

    def stop(self):
        pass

if __name__ =="__main__":
    rospy.init("autonomy_dumping_node")

    auto_dump_wrapper = autoDumpingWrapperROS()

    rospy.on_shutdown(auto_dump_wrapper.stop)

    rospy.loginfo("***Autonomy Digging Node initializaed successfully***")

    rospy.spin()

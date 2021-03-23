import rospy
import time 
from std_msgs.msg import Int32

from digging_indicator import indicators 
#TO-DO
#---------------------------------------
#1. Sensors
#   Gyroscope
#   height
#   loadcell

class Digging_Automation_Wrapper:

    def __init__(self):
        
        self.opcode = -1
        
        self.publisher_Automation_Digging = rospy.Publisher("automation_publisher", Int32, queue_size=1)
        rospy.Subscriber("main_automation", Int32, self.callback_main)
        #rospy.Subscriber("sensor_data", Int32, self.callback_main)
        rospy.Subscriber("gyroscope_data", Int32, self.callback_gyroscope)
        rospy.Subscriber("height_data", Int32, self.callback_height)
        rospy.Subscriber("loadcell_data", Int32, self.callback_loadcell)
        
        
    def callback_main(self, msg): 
        self.opcode = msg.data
        
        if self.opcode == 2:
        #run automation
    
    def callback_gyroscope(self, msg):
        self.orientation = msg.data

    def callback_height(self, msg):
        self.height = msg.data
    
    def callback_loadcell(self, msg):
        self.load = msg.data

        
        
    def stop(self):
        self.control_opcode = 16
        data = Int32(data=control_opcode)
        self.publisher_Automation_Dumping.publish(data)
        
        # stop actuator
        # self.control_opcode = 
        # data = Int32(data=control_opcode)
        # self.publisher_Automation_Dumping.publish(data)
    
if __name__ == "__main__":
    rospy.init_node("Dumping_Automation_Wrapper_node")

    digging_wrapper = Dumping_Automation_Wrapper()

    rospy.on_shutdown(Dumping_Automation.stop)

    rospy.loginfo("*** Dumping Automation node initialized successfully***")

    rospy.spin()
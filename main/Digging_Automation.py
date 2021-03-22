import rospy
import time 
from std_msgs.msg import Int32

from digging_indicator import indicators 
#TO-DO
#---------------------------------------
#1. 

class Digging_Automation_Wrapper:

    def __init__(self):
        
        self.opcode = -1
        
        self.publisher_Automation_Digging = rospy.Publisher("automation_publisher", Int32, queue_size=1)
        rospy.Subscriber("main_automation", Int32, self.callback_main)
        #rospy.Subscriber("sensor_data", Int32, self.callback_main)
        
        
    def callback_main(self, msg): 
        self.opcode = msg.data
        
        if self.opcode == 11:
            self.extend_actuator()
            #declare a publishare to dumping 
        elif self.opcode == 12: 
            self.dump()
            #declare a publishare to dumping 
        elif self.opcode == 13: 
            self.retract_actuator()
            #declare a publishare to dumping 
        elif self.opcode == 14: 
            self.stop()
            #declare a publishare to dumping 
            
    def extend_actuator(self):
        #add a timer using rospy
        #-----------------------
        # t_end = rospy.get_time() + 20 #rospy.get_time() returns float seconds /// this sets to loop for 20 seconds
        # while rospy.get_time() < t_end:
            # self.control_opcode = 17
            # data = Int32(data=control_opcode)
            # self.publisher_Automation_Dumping.publish(data)
        
        #using python libraries 
        #---------------------- 
        # t_end =time.time() + 20 #will run for 20 seconds 
        # while time.time() < t_end:
            # self.control_opcode = 17
            # data = Int32(data=control_opcode)
            # self.publisher_Automation_Dumping.publish(data)
        
    def dump(self):
        #add a timer using rospy
        #-----------------------
        # t_end = rospy.get_time() + 20 #rospy.get_time() returns float seconds /// this sets to loop for 20 seconds
        # while rospy.get_time() < t_end:
            # self.control_opcode = 14
            # data = Int32(data=control_opcode)
            # self.publisher_Automation_Dumping.publish(data)
            
        # t_end = rospy.get_time() + 20 #rospy.get_time() returns float seconds /// this sets to loop for 20 seconds
        # while rospy.get_time() < t_end:
            # self.control_opcode = 15
            # data = Int32(data=control_opcode)
            # self.publisher_Automation_Dumping.publish(data)
        
        
        #using python libraries 
        #----------------------
        # t_end =time.time() + 20 #will run for 20 seconds 
        # while time.time() < t_end:
            # self.control_opcode = 14
            # data = Int32(data=control_opcode)
            # self.publisher_Automation_Dumping.publish(data)
        
        # t_end =time.time() + 20 #will run for 20 seconds 
        # while time.time() < t_end:
            # self.control_opcode = 15
            # data = Int32(data=control_opcode)
            # self.publisher_Automation_Dumping.publish(data)
        
        
    def retract_actuator(self):
        #add a timer using rospy
        #-----------------------
        # t_end = rospy.get_time() + 20 #rospy.get_time() returns float seconds /// this sets to loop for 20 seconds
        # while rospy.get_time() < t_end:
            # self.control_opcode = 18
            # data = Int32(data=control_opcode)
            # self.publisher_Automation_Dumping.publish(data)
            
        #using python libraries 
        #----------------------
        # t_end =time.time() + 20 #will run for 20 seconds 
        # while time.time() < t_end:
            # self.control_opcode = 18
            # data = Int32(data=control_opcode)
            # self.publisher_Automation_Dumping.publish(data)
        
        
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
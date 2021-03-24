import rospy
import time 
from std_msgs.msg import Int32
from dumping_indicator import dumpingIndicator

#TO-DO
#---------------------------------------
#1. create subscribers for the wrapper nodes. 
#2. establish the separation between doing manual controls and autonomy 
#3. understand how to send the opcodes that define the process to dump
#4. test the file for autonomy 

class Dumping_Automation_Wrapper:

    def __init__(self):
        self.indicators = dumpingIndicator
        self.opcode = -1
        
        self.publisher_Automation_Dumping = rospy.Publisher("automation_publisher", Int32, queue_size=1)
        rospy.Subscriber("main_automation", Int32, self.callback_main)
        
    def callback_main(self, msg): 
        self.opcode = msg.data
        
        if self.opcode == 1:
            self.beginAutomation() 
            
    def extend_actuator(self):
        #add a timer using rospy
        #-----------------------
        # t_end = rospy.get_time() + 20 #rospy.get_time() returns float seconds /// this sets to loop for 20 seconds
        # while rospy.get_time() < t_end:
            # self.control_opcode = 22
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
            # self.control_opcode = 19
            # data = Int32(data=control_opcode)
            # self.publisher_Automation_Dumping.publish(data)
        
        
        #using python libraries 
        #----------------------
        # t_end =time.time() + 20 #will run for 20 seconds 
        # while time.time() < t_end:
            # self.control_opcode = 20
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
            # self.control_opcode = 24
            # data = Int32(data=control_opcode)
            # self.publisher_Automation_Dumping.publish(data)
            
        #using python libraries 
        #----------------------
        # t_end =time.time() + 20 #will run for 20 seconds 
        # while time.time() < t_end:
            # self.control_opcode = 24
            # data = Int32(data=control_opcode)
            # self.publisher_Automation_Dumping.publish(data)
        
    def beginAutomation(self):
        if self.indicators.readyExtend:
            self.extend_actuators()
            self.indicators.SetDump()
            self.indicators.endExtend()

        elif self.indicators.readyDump:
            self.dump()
            self.indicators.SetRetract()
            self.indicators.endDump()

        elif self.indicators.readyRetract:
            self.retract_actuator()
            self.indicators.SetExtend()
            self.indicators.endRetract()

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
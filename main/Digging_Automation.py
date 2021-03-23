import rospy
import time 
from std_msgs.msg import Int32

from digging_indicator import DiggingIndicators 
#TO-DO
#---------------------------------------
#1. Sensors
#   Gyroscope
#   height
#   loadcell

class Digging_Automation_Wrapper:

    def __init__(self):
        self.indicators = DiggingIndicators
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
            pass
        #run automation
    
    def callback_gyroscope(self, msg):
        self.orientation = msg.data
        self.indicators.check_maxAngle(self.orientation)

    def callback_height(self, msg):
        self.height = msg.data
        self.indicators.max_height(self.height)

    def callback_loadcell(self, msg):
        self.load = msg.data
        self.indicators.getload(self.load)
        


    def Automation(self):
        #-------------------------------------------------------------------------------
        # (1)first step to the automation is to check if any of the components are stock
        #-------------------------------------------------------------------------------
        if self.indicators.Zipper_stock == True:
            # do the undig or dig untiil it is not stock 
            pass
        elif self.indicators.pitch_stock == True:
            #try different pitch movements umtil unstock
            pass
        elif self.indicators.height_stock == True:
            #try different things with height
            pass

        #-------------------------------------------------------------------------------
        # (2)set the rover from locomotion position to digging position 
        #-------------------------------------------------------------------------------
        if self.indicators.ready2dig == False:
            #raise the bugget
            #set the pitch to the right position
            #set the height to the right position
            #Start moving the zipper
            self.indicators.ready2dig()

        #-------------------------------------------------------------------------------
        # (3) begin the automation
        #-------------------------------------------------------------------------------
        elif self.indicators.ready2dig == True  and self.indicators.bucket_full == False :
            if self.indicators.digging_enough_material == True:
                #continue the function
                #this function can include to move the the height/pitch while digging as well
                pass
            elif self.indicators.maxHeight == False:
                #increase height while it is moving the zipper 
            elif self.indicators.mazAngle == False:
                #increas the pitch angle while it is moving the zipper 
                pass
            #stop all of the operations and get ready to go back to the positioning of locomotion
            if self.indicators.bucket_full == True:
                self.stop_operations()
                self.indicators.check_stop()
                self.indicators.begin_locomotion()
                pass
        
        if self.indicators.bucket_full == True:
                self.stop_operations()
                self.indicators.check_stop()
                self.indicators.begin_locomotion()
                pass

    def stop_operations(self):
        #set all of the motors to stop
        pass
            

            

        
        
    
        
        
    
if __name__ == "__main__":
    rospy.init_node("Dumping_Automation_Wrapper_node")

    digging_wrapper = Dumping_Automation_Wrapper()

    rospy.on_shutdown(Dumping_Automation.stop)

    rospy.loginfo("*** Dumping Automation node initialized successfully***")

    rospy.spin()
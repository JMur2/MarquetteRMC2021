
# This file will allow us to check for all of the sensor data in here and to further 
# facilitate the algorithm in the wrapper 

class DiggingIndicators:

    def __init__(self):
        #check for mechanical errors through the electrical current 
        #if any of this are true, then we muct stop the operation and recalculate
        #this will allow us to take different actions 
        #THEY WERE ADDED TO THE ALGO BUT NOT TO THE CALLBACK
        self.Zipper_stock = False 
        self.pitch_stock = False 
        self.height_stock = False 
        
        
        #variables to ensure that there are 
        #set timers to set the rover in the right position
        # then this become true
        #ADDED TO THE ALGO
        self.ready_dig = False 
        
        #check for the load 
        #if bucket_full is true then we must stop all operations,
        #then set locomotion_position to true
        
        self.bucket_full = False 
        self.locomotion_position = False 
        self.operations_stoped = False
        
        #Zipper 
        #if this is true, we are digging material and we must continue the operations
        #that we had kept prior (increasing height, or decreasing or decreasing the pitch)
        self.digging_enough_material = False 
        
        
        #height
        #if the current pull is not a certain number,
        #then increase the current 
        self.increase_height = False 
        self.maxHeight = False


        self.maxAngle = False
    
#check the data received by the sensor publisher for any stock motors   
    def check_ME_Zipper(self, data):
        if data> 100:
            self.Zipper_stock = True 
    def check_ME_pitch(self, data):
        if data> 100:
            self.pitch_stock = True 
    def check_ME_height(self, data):
        if data> 100:
            self.height_stock = True 
        
#if this is called, then the rover is ready to begin the digging process
#In other words, the rover's components is set to the correct position and is ready to dig
#this will be accomplished by using timers that move the required components by a specific ammount 
    def ready2dig(self):
        self.ready_dig = True

#this functions are called based on the sensor data
#the bucket_full tells us to stop all of the operations (if true)
#locomotion_position tells us to set the position back to locomotion (if true)
    def get_load(self, data):
        if(data>1000):
            self.bucket_full = True 
    
    def check_stop(self):
        self.operations_stoped=True
    
    def begin_locomotion(self):
        if self.operations_stoped:
            self.locomotion_position = True

#check the ammount of material being dug
#if the material being dug is enough keep doing what we are doing
#else if it is too little try a set of actions 
    def check_ammount_digging(self, data):
        if data< 100 and data> 20:
            self.digging_enough_material = True 
        elif data < 20:
            self.digging_enough_material = False 

#increase height and check for max height
#if there isn't enough being dug then set this to true to increase the height
#also check whether we are digging far enough?
    def check_height (self):
        if not(self.digging_enough_material) and not(self.maxHeight):
            self.increase_height = True

    def max_height(self, height):
        if (height> 100):
            self.maxHeight = True

#check to see if the pitcher has reached the max ideal angle
    def check_maxAngle(self, angle):
        if (angle>100):
            self.maxAngle = True

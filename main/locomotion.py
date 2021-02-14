"""
This file houses all of the locomotion functionality.

@created: 11-1-2020
"""

#import odrive
#from odrive.enums import *

class Locomotion:
    
    #--------------------------------------------------------------------
    # Locomotion intialiation function
    #
    # Establish the odrive connection for locomotion
    #--------------------------------------------------------------------
    def __init__(self):
        #self.odrv0 
        try:
            print("Searching locomotion odrive, this may take a few seconds...")
            #self.odrv0 = odrive.find_any()
            print("Locomotion odrive connected successfully")
        except:
            print("Unable to find locomotion odrive")            

    #--------------------------------------------------------------------
    # Drives robot forward
    #
    # param: speed -- set the speed of movement (max at 50)
    #--------------------------------------------------------------------
    def loco_forward(self, speed):
        print("loco_forward")
        #self.odrv0.axis0.controller.input_vel = speed
        #self.odrv0.axis1.controller.input_vel = (-1 * speed)

    #--------------------------------------------------------------------
    # Zero point turn left
    #
    # param: speed -- set the speed of movement (max at 50)
    #--------------------------------------------------------------------
    def loco_left(self, speed):
        print("loco_left")
        #self.odrv0.axis0.controller.input_vel = (-1 * speed)
        #self.odrv0.axis1.controller.input_vel = (-1 * speed)
    
    #--------------------------------------------------------------------
    # Drives robot in reverse
    #
    # param: speed -- sets the speed of movement (max at 50)
    #--------------------------------------------------------------------
    def loco_back(self, speed):
        print("loco_back")
        #self.odrv0.axis0.controller.input_vel = (-1 * speed)
        #self.odrv0.axis1.controller.input_vel = speed

    #--------------------------------------------------------------------
    # Zero point turn right 
    #
    # param: speed -- sets the speed of movement (max at 50)
    #--------------------------------------------------------------------
    def loco_right(self, speed):
        print("loco_right")
        #self.odrv0.axis0.controller.input_vel = speed
        #self.odrv0.axis1.controller.input_vel = speed
    
    #--------------------------------------------------------------------
    # Stops all movement
    #--------------------------------------------------------------------
    def loco_stop(self):
        print("loco_stop")
        #self.odrv0.axis0.controller.input_vel = 0
        #elf.odrv0.axis1.controller.input_vel = 0

    #--------------------------------------------------------------------
    # Perform error checking on locomotion system
    #
    # Still a work in progress
    #--------------------------------------------------------------------
    def loco_config_check(self):
        #print(self.odrv0.axis0.encoder.mode)

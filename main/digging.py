"""
This file houses all of the digging functionality

@created: 11-1-2020
"""

#import odrive
#from odrive.enums import *
import subprocess
import yaml

class Digging:

    #--------------------------------------------------------------------
    # Digging initialize function
    # 
    # Establish the odrive connection for digging 
    #--------------------------------------------------------------------
    def __init__(self):
        #self.odrv1
        try:
            print("Searching for digging odrive, this may take a few seconds...")
            #self.odrv1 = odrive.find_any(serial_number=1)
            print("Digging odrive connected successfuly")
        except:
            print("Unable to find digging odrive")
    
    #--------------------------------------------------------------------
    # Move the zipper forward, digging the material below it
    # 
    # param: speed -- set the speed of belt movement (max at 67)
    #--------------------------------------------------------------------
    def zipper_forward(self, speed):
        print("zipper_forward")
        #self.odrv1.axis1.controller.input_vel = speed
        # possible return

    #--------------------------------------------------------------------
    # Move the zipper backward, to get it unstuck in the case of digging 
    # incorrect material
    # 
    # param: speed -- set the speed of belt movement (max at 67)
    #--------------------------------------------------------------------
    def zipper_back(self, speed):
        print("zipper_backward")
        #self.odrv1.axis1.controller.inpur_vel = (-1 * speed)
        # possible return

    #--------------------------------------------------------------------
    # Stop the zipper at its current location
    #--------------------------------------------------------------------
    def zipper_stop(self):
        print("zipper_stop")
        #self.odrv1.axis1.controller.input_vel = 0
        # possible return

    #--------------------------------------------------------------------
    # Extends the zipper drive deeper into the ground
    #
    # param: speed -- set the speed of depth adjustment (max at 50)
    #--------------------------------------------------------------------
    def depth_extend(self, speed):
        print("depth_extend")
        #self.odrv1.axis0.controller.input_vel = speed
        # possible return

    #--------------------------------------------------------------------
    # Retracts the zipper drive from the hole it has dug
    # 
    # param: speed -- set the speed of the depth adjustment (max at 50)
    #--------------------------------------------------------------------
    def depth_retract(self, speed):
        print("deph_retract")
        #self.odrv1.axis0.controller.input_vel = (-1 * speed)
        # possible return

    #--------------------------------------------------------------------
    # Stops adjusting the depth of the zipper
    #--------------------------------------------------------------------
    def depth_stop(self):
        print("depth_stop")
        #self.odrv1.axis0.controller.input_vel = 0

    #--------------------------------------------------------------------
    # Helper function to operate the stepper motor
    # 
    # param: *args -- a variable set of arguments used to send commands
    #--------------------------------------------------------------------
    def ticcmd(self, *args):
        return subprocess.check_output(['ticcmd'] + list(args))

    #--------------------------------------------------------------------
    # Rotate the zipper forward with the stepper motor
    #--------------------------------------------------------------------
    def stepper_forward(self):
        status = yaml.load(self.ticcmd('-s', '--full'))
        position = status['Current position']

        # test for boundaries
        new_target = position + 20 # what the step size should be

    #--------------------------------------------------------------------
    # Rotate the zipper backward with the stepper motor
    #--------------------------------------------------------------------
    def stepper_backward(self):
        status = yaml.load(self.ticcmd('-s', '--full'))
        position = status['Current position']

        # test for boundaries
        new_target = position - 20 # what the step size should be

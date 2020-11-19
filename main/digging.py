"""
This file houses all of the digging functionality

@created: 11-1-2020
"""

import odrive
from odrive.enums import *
import subprocess
import yaml

class Digging:

    #--------------------------------------------------------------------
    # Digging initialize function
    # 
    # Establish the odrive connection for digging 
    #--------------------------------------------------------------------
    @staticmethod
    def initialize():
        global odrv1
        try:
            print("Searching for digging odrive, this may take a few seconds...")
            odrv1 = odrive.find_any(serial_number=1)
            print("Digging odrive connected successfuly")
        except:
            print("Unable to find digging odrive")
    
    #--------------------------------------------------------------------
    # Move the zipper forward, digging the material below it
    # 
    # param: speed -- set the speed of belt movement (max at 67)
    #--------------------------------------------------------------------
    @staticmethod
    def zipper_forward(speed: int):
        odrv1.axis1.controller.input_vel = speed
        # possible return

    #--------------------------------------------------------------------
    # Move the zipper backward, to get it unstuck in the case of digging 
    # incorrect material
    # 
    # param: speed -- set the speed of belt movement (max at 67)
    #--------------------------------------------------------------------
    @staticmethod
    def zipper_back(speed: int):
        odrv1.axis1.controller.inpur_vel = (-1 * speed)
        # possible return

    #--------------------------------------------------------------------
    # Stop the zipper at its current location
    #--------------------------------------------------------------------
    @staticmethod
    def zipper_stop():
        odrv1.axis1.controller.input_vel = 0
        # possible return

    #--------------------------------------------------------------------
    # Extends the zipper drive deeper into the ground
    #
    # param: speed -- set the speed of depth adjustment (max at 50)
    #--------------------------------------------------------------------
    @staticmethod
    def depth_extend(speed: int):
        odrv1.axis0.controller.input_vel = speed
        # possible return

    #--------------------------------------------------------------------
    # Retracts the zipper drive from the hole it has dug
    # 
    # param: speed -- set the speed of the depth adjustment (max at 50)
    #--------------------------------------------------------------------
    @staticmethod
    def depth_retract(speed: int):
        odrv1.axis0.controller.input_vel = (-1 * speed)
        # possible return

    #--------------------------------------------------------------------
    # Stops adjusting the depth of the zipper
    #--------------------------------------------------------------------
    @staticmethod
    def depth_stop():
        odrv1.axis0.controller.input_vel = 0

    #--------------------------------------------------------------------
    # Helper function to operate the stepper motor
    # 
    # param: *args -- a variable set of arguments used to send commands
    #--------------------------------------------------------------------
    @staticmethod
    def ticcmd(*args):
        return subprocess.check_output(['ticcmd'] + list(args))

    #--------------------------------------------------------------------
    # Rotate the zipper forward with the stepper motor
    #--------------------------------------------------------------------
    @staticmethod
    def stepper_forward():
        status = yaml.load(Digging.ticcmd('-s', '--full'))
        position = status['Current position']

        # test for boundaries
        new_target = position + 20 # what the step size should be

    #--------------------------------------------------------------------
    # Rotate the zipper backward with the stepper motor
    #--------------------------------------------------------------------
    @staticmethod
    def stepper_backward():
        status = yaml.load(Digging.ticcmd('-s', '--full'))
        position = status['Current position']

        # test for boundaries
        new_target = position - 20 # what the step size should be

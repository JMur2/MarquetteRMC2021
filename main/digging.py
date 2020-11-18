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
        odrv1 = odrive.find_any(serial_number=1)
    
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
    #
    #--------------------------------------------------------------------
    @staticmethod
    def zipper_stop():
        odrv1.axis1.controller.input_vel = 0
        # possible return

    #--------------------------------------------------------------------
    #
    #--------------------------------------------------------------------
    @staticmethod
    def depth_extend(speed: int):
        odrv1.axis0.controller.input_vel = speed
        # possible return

    #--------------------------------------------------------------------
    #
    #--------------------------------------------------------------------
    @staticmethod
    def depth_retract(speed: int):
        odrv1.axis0.controller.input_vel = (-1 * speed)
        # possible return

    #--------------------------------------------------------------------
    #
    #--------------------------------------------------------------------
    @staticmethod
    def depth_stop():
        odrv1.axis0.controller.input_vel = 0

    #--------------------------------------------------------------------
    #
    #--------------------------------------------------------------------
    @staticmethod
    def ticcmd(*args):
        return subprocess.check_output(['ticcmd'] + list(args))

    #--------------------------------------------------------------------
    #
    #--------------------------------------------------------------------
    @staticmethod
    def stepper_forward():
        status = yaml.load(Digging.ticcmd('-s', '--full'))
        position = status['Current position']

        # test for boundaries
        new_target = position + 20 # what the step size should be

    #--------------------------------------------------------------------
    #
    #--------------------------------------------------------------------
    @staticmethod
    def stepper_backward():
        status = yaml.load(Digging.ticcmd('-s', '--full'))
        position = status['Current position']

        # test for boundaries
        new_target = position - 20 # what the step size should be

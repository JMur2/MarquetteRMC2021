"""
This file houses all of the locomotion functionality.

@created: 11-1-2020
"""

import odrive
from odrive.enums import *

class Locomotion:
    
    #--------------------------------------------------------------------
    # Locomotion intialiation function
    #
    # Established the odrive connection for locomotion
    #--------------------------------------------------------------------
    @staticmethod
    def initialize():
        global odrv0 
        odrv0 = odrive.find_any(serial_number=1)

    #--------------------------------------------------------------------
    # Drives robot forward
    #
    # param: speed -- set the speed of movement (max at 50)
    #--------------------------------------------------------------------
    @staticmethod
    def loco_forward(speed: int):
        odrv0.axis0.controller.input_vel = speed
        odrv0.axis1.controller.input_vel = (-1 * speed)
        # possibly include return to know that we are in motion

    #--------------------------------------------------------------------
    # Zero point turn left
    #
    # param: speed -- set the speed of movement (max at 50)
    #--------------------------------------------------------------------
    @staticmethod
    def loco_left(speed: int):
        odrv0.axis0.controller.input_vel = (-1 * speed)
        odrv0.axis1.controller.input_vel = (-1 * speed)
        # possible return
    
    #--------------------------------------------------------------------
    # Drives robot in reverse
    #
    # param: speed -- sets the speed of movement (max at 50)
    #--------------------------------------------------------------------
    @staticmethod
    def loco_back(speed: int):
        odrv0.axis0.controller.input_vel = (-1 * speed)
        odrv0.axis1.controller.input_vel = speed
        # possible return

    #--------------------------------------------------------------------
    # Zero point turn right 
    #
    # param: speed -- sets the speed of movement (max at 50)
    #--------------------------------------------------------------------
    @staticmethod
    def loco_right(speed: int):
        odrv0.axis0.controller.input_vel = speed
        odrv0.axis1.controller.input_vel = speed
        # possible return
    
    #--------------------------------------------------------------------
    # Stops all movement
    #--------------------------------------------------------------------
    @staticmethod
    def loco_stop():
        odrv0.axis0.controller.input_vel = 0
        odrv0.axis1.controller.input_vel = 0
        # possible return

    #--------------------------------------------------------------------
    # Perform error checking on locomotion system
    #
    # Still a work in progress
    #--------------------------------------------------------------------
    @staticmethod
    def loco_config_check():
        print(odrv0.axis0.encoder.mode)

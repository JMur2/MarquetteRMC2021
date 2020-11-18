"""
This file houses all of the locomotion functionality.

@created: 11-1-2020
"""

import odrive
from odrive.enums import *

class Locomotion:

    @staticmethod
    def initialize():
        global odrv0 
        odrv0 = odrive.find_any(serial_number=1)

    @staticmethod
    def loco_forward(speed: int):
        odrv0.axis0.controller.input_vel = speed
        odrv0.axis1.controller.input_vel = (-1 * speed)
        # possibly include return to know that we are in motion

    @staticmethod
    def loco_left(speed: int):
        odrv0.axis0.controller.input_vel = (-1 * speed)
        odrv0.axis1.controller.input_vel = (-1 * speed)
        # possible return
    
    @staticmethod
    def loco_back(self, speed: int):
        odrv0.axis0.controller.input_vel = (-1 * speed)
        odrv0.axis1.controller.input_vel = speed
        # possible return

    @staticmethod
    def loco_right(self, speed: int):
        odrv0.axis0.controller.input_vel = speed
        odrv0.axis1.controller.input_vel = speed
        # possible return
    
    @staticmethod
    def loco_stop(self, speed: int):
        odrv0.axis0.controller.input_vel = 0
        odrv0.axis1.controller.input_vel = 0
        # possible return

    @staticmethod
    def loco_config_check():
        print(odrv0.axis0.encoder.mode)

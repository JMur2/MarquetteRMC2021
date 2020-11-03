"""
This file houses all of the locomotion functionality.

@created: 11-1-2020
"""

import odrive
from odrive.enums import *

class Locomotion:

        """
        Points for team:
        - Do we want a dynamic speed, or should we always operate at max?
            - Which subsystems should be able to?
        
        """

    def __init__(self, serial_number: int):
        self.odrv0 = odrive.find_any(serial_number=serial_number)
        # print("call config error checking")

    def loco_forward(self, speed: int):
        self.odrv0.axis0.controller.input_vel = speed
        self.odrv0.axis1.controller.input_vel = (-1 * speed)
        # possibly include return to know that we are in motion

    def loco_left(self, speed: int):
        self.odrv0.axis0.controller.input_vel = (-1 * speed)
        self.odrv0.axis1.controller.input_vel = (-1 * speed)
        # possible return
    
    def loco_back(self, speed: int):
        self.odrv0.axis0.controller.input_vel = (-1 * speed)
        self.odrv0.axis1.controller.input_vel = speed
        # possible return

    def loco_right(self, speed: int):
        self.odrv0.axis0.controller.input_vel = speed
        self.odrv0.axis1.controller.input_vel = speed
        # possible return
    
    def loco_config_check():
        print(self.odrv0.axis0.encoder.mode)

"""
This file contains all aspects of human control over the robot.

@created: 10-25-2020
"""
import odrive
import time
import math
import sys
import tty
import termios

from odrive.enums import *

#from locomotion import locomotion_funcs
#from digging import digging_funcs
#from dumping import dumping_funcs
#from lidar import lidar_funcs


class HumanControl:
        
    control_state: str = ""

    def __init__(self, state: str):
        # initializations
        self.control_state = state
        
    def get_char(self):
        file_descriptor = sys.stdin.fileno()
        old_settings = termios.tcgetattr(file_descriptor)

        try:
            tty.setraw(file_descriptor)
            character = sys.stdin.read(1)
        finally:
            termios.tcsetattr(file_descriptor, termios.TCSADRAIN, old_settings)

        return character

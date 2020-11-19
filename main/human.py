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

from states import State
from locomotion import Locomotion
#from digging import digging_funcs
#from dumping import dumping_funcs
#from lidar import lidar_funcs

class HumanControl:

    def __init__(self):
        # initializations
        print("init")
        
    def get_char(self):
        file_descriptor = sys.stdin.fileno()
        old_settings = termios.tcgetattr(file_descriptor)

        try:
            tty.setraw(file_descriptor)
            character = sys.stdin.read(1)
        finally:
            termios.tcsetattr(file_descriptor, termios.TCSADRAIN, old_settings)

        return character

    def control_robot(self, curr_state: str, char_val: int):
        if   char_val == 119 and curr_state == "locomotion": # w -- forward
            Locomotion.loco_forward(50)
        elif char_val == 97  and curr_state == "locomotion": # a -- left
            Locomotion.loco_left(50)
        elif char_val == 115 and curr_state == "locomotion": # s -- back
            Locomotion.loco_back(50)
        elif char_val == 100 and curr_state == "locomotion": # d -- right
            Locomotion.loco_back(50)
        elif char_val == 120 and curr_state == "locomotion": # x -- stop
            Locomotion.loco_stop()

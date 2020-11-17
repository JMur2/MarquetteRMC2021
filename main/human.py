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

    locomotion = Locomotion() # need locomotion serial number
    speed = 50

    def __init__(self):
        # initializations
        # self.control_state = State.get_control_state()
        # self.loco_speed = speed
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

    def control_robot(self, curr_state: str, char: str):
        try:
            input_char = char.lower()
            input_val = ord(input_char)
            """
            ord() takes a character and returns its ASCII value, 
            allowing us to have more specific control with more keys.
            """

            if   input_val == 119 and curr_state == "locomotion": # w -- forward
                HumanControl.locomotion.loco_forward(HumanControl.speed)
            elif input_val == 97  and curr_state == "locomotion": # a -- left
                print("left")
            elif input_val == 115 and curr_state == "locomotion": # s -- back
                print("back")
            elif input_val == 100 and curr_state == "locomotion": # d -- right
                print("right")
        finally:
            print("----------------------------")

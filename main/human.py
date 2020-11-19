"""
This file contains all aspects of human control over the robot.

@created: 10-25-2020
"""
import time
import math
import sys
import tty
import termios

from states import State
from locomotion import Locomotion
from digging import Digging
from dumping import Dumping

class HumanControl:

    #--------------------------------------------------------------------
    # Initialize an instance of the human file for human control
    #--------------------------------------------------------------------
    def __init__(self):
        # initializations
        print("init")
        
    #--------------------------------------------------------------------
    # Get a character from the keyboard
    #  -- Uses termios, a library only available on Linux
    #--------------------------------------------------------------------
    def get_char(self):
        file_descriptor = sys.stdin.fileno()
        old_settings = termios.tcgetattr(file_descriptor)

        try:
            tty.setraw(file_descriptor)
            character = sys.stdin.read(1)
        finally:
            termios.tcsetattr(file_descriptor, termios.TCSADRAIN, old_settings)

        return character

    #--------------------------------------------------------------------
    # Perform an action with the Robot based on the parameters
    #
    # param: curr_state -- the current contorl state of the robot
    # param: char_val -- the ascii value of the keyboard input
    #--------------------------------------------------------------------
    def control_robot(self, curr_state: str, char_val: int):

        if curr_state == "locomotion":
            if   char_val == 119: # w -- forward
                Locomotion.loco_forward(50)
            elif char_val == 97 : # a -- left
                Locomotion.loco_left(50)
            elif char_val == 115: # s -- back
                Locomotion.loco_back(50)
            elif char_val == 100: # d -- right
                Locomotion.loco_back(50)
            elif char_val == 120: # x -- stop
                Locomotion.loco_stop()
        elif curr_state == "digging":
            print("digging functions and keys here")
        elif curr_state == "dumping":
            print("dumping functions and heys here")
        else:
            print("unrecognized control state, please change this and try again")

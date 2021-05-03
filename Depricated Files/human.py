"""
This file contains all aspects of human control over the robot.

DEPRICATED, no longer needed

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


def get_char(self):
        file_descriptor = sys.stdin.fileno()
        old_settings = termios.tcgetattr(file_descriptor)

        try:
            tty.setraw(file_descriptor)
            character = sys.stdin.read(1)
        finally:
            termios.tcsetattr(file_descriptor, termios.TCSADRAIN, old_settings)

        return character

    def get_opcode(self):
        char = self.get_char() # get the character from the keyboard
        char_val = ord(char) # convert the character read in to its ASCII value

        if (char_val == 119 or char_val == 87):
            # W -- FORWARD
            opcode = 0
            return opcode

        if (char_val == 97 or char_val == 65):
            # A -- LEFT
            opcode = 1
            return opcode

        if (char_val == 115 or char_val == 83):
            # S -- BACK
            opcode = 2
            return opcode

        if (char_val == 100 or char_val == 68):
            # D -- RIGHT
            opcode = 3
            return opcode

        if (char_val == 120 or char_val == 88):
            # X -- STOP
            opcode = 4
            return opcode

        if (char_val == 116 or char_val == 84):
            # T -- BUCKET FORWARD
            opcode = 14
            return opcode

        if (char_val == 103 or char_val == 71):
            # G -- BUCKET STOP
            opcode = 16
            return opcode

        if (char_val == 98 or char_val == 66):
            # B -- BUCKET BACKWARD
            opcode = 15
            return opcode

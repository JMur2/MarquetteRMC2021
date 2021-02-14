"""
This is the official main file

@created: 10-25-2020
"""

import time
import math
import sys
import tty
import termios

from locomotion import Locomotion
from digging import Digging
from dumping import Dumping

class Robot:

    def __init__(self):

        self.state_operation = "manual"

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
            # W -- go forward
            opcode = 0
            return opcode

        if (char_val == 120 or char_val == 88):
            # X -- STOP
            opcode = 4
            return opcode

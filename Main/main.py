"""
This is the official main file

@created: 10-25-2020
"""
import odrive
import time
import math
import sys
import tty
import termios

from Main import human
from Main import test
from Main import states

from odrive.enums import *

class Robot:
    #each class below is initialized upon this object creation
    h = human.HumanControl()
    s = states.State()

    current_state: str = ""

    def __init__(self):
        # initializations
        self.current_state = self.s.set_state("startup")
        
    def control_robot(self):
        try:
            while True:
                c: str = self.h.get_char()
                char_val: int = ord(c)
                
        finally:
            #stop everything, we are yeilding control at this point
            print("finally")
            

if __name__ == "__main__":
    robot = Robot()

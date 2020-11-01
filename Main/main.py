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

    current_state = ""

    def __init__(self):
        # initializations
        self.current_state = self.s.set_state("startup")
        
    def control_robot(self):
        try:
            while True:
                input_val = ord((self.h.get_char()).lower()) # ord() takes a character and returns its ASCII value, allowing us to have more specific control

                if input_val == 27: # esc
                    #stop all functions
                    break
                    print("esc")
                elif input_val == 119: # w
                    # locomotion forward
                    print("forward")
                elif input_val == 97:  # a
                    # locomotion left
                    print("left")
                elif input_val == 115: # s
                    # locomotion back
                    print("back")
                elif input_val == 100: # d
                    # locomotion right
                    print("right")
        finally:
            print("----------------------------")
            

if __name__ == "__main__":
    robot = Robot()

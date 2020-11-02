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
#from locomotion import locomotion_funcs
#from digging import digging_funcs
#from dumping import dumping_funcs
#from lidar import lidar_funcs

class HumanControl:
        
    control_state = ""

    def __init__(self):
        # initializations
        self.control_state = State.get_state()
        
    def get_char(self):
        file_descriptor = sys.stdin.fileno()
        old_settings = termios.tcgetattr(file_descriptor)

        try:
            tty.setraw(file_descriptor)
            character = sys.stdin.read(1)
        finally:
            termios.tcsetattr(file_descriptor, termios.TCSADRAIN, old_settings)

        return character

    def control_robot(self):
        try:
            while True:
                input_val = ord((self.get_char()).lower())
                """
                ord() takes a character and returns its ASCII value, 
                allowing us to have more specific control with more keys.
                """

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

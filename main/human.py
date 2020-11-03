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

    def control_robot(self, curr_state: str) -> str:
        try:
            input_char = (self.get_char()).lower()
            input_val = ord(input_char)
            """
            ord() takes a character and returns its ASCII value, 
            allowing us to have more specific control with more keys.
            """

            if input_val == 27: # esc -- stop all functions
                return "quit"
            elif input_val == 119 and curr_state == "locomotion": # w -- forward
                return "forward"
            elif input_val == 97 and curr_state == "locomotion":  # a -- left
                return "left"
            elif input_val == 115 and curr_state == "locomotion": # s -- back
                return "back"
            elif input_val == 100 and curr_state == "locomotion": # d -- right
                return "right"
        finally:
            print("----------------------------")

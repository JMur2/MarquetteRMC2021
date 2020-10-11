"""
A new test scenario for robot control without pynput

@created: 10-11-2020
"""
import odrive
from odrive.enums import *
import time
import math
import sys
import tty
import termios

def get_char():
    file_descriptor = sys.stdin.fileno()
    old_settings = termios.tcgetattr(file_descriptor)
    
    try:
        tty.setraw(file_descriptor)
        character = sys.stdin.read(1)
    finally:
        termios.tcsetattr(file_descriptor, termios.TCSADRAIN, old_settings)
        
    return character

if __name__ == '__main__':
    print("Searching for odrive, this may take a few seconds...\n")
    odrv0 = odrive.find_any()
    
    try:
        while True:
            char = get_char()
            ascii_val = ord(char)
            
            if char.lower() == "q":
                break
            elif char.lower() == "w":
                odrv0.axis0.controller.input_vel = -50
                odrv0.axis1.controller.input_vel = 50
            elif char.lower() == "a":
                odrv0.axis0.controller.input_vel = 50
                odrv0.axis1.controller.input_vel = 50
            elif char.lower() == "s":
                odrv0.axis0.controller.input_vel = 50
                odrv0.axis1.controller.input_vel = -50
            elif char.lower() == "d":
                odrv0.axis0.controller.input_vel = -50
                odrv0.axis1.controller.input_vel = -50
    finally:
        print("------")
        
        
"""
A file to test aspects of the overall architecture

@created: 10-7-2020
"""

import odrive
from odrive.enums import *
import time
import math

def get_char():
    file_descriptor = sys.stdin.fileno()
    old_settings = termios.tcgetattr(file_descriptor)
    
    try:
        tty.setraw(file_descriptor)
        character = sys.stdin.read(1)
    finally:
        termios.tcsetattr(file_descriptor, termios.TCSADRAIN, old_settings)
        
    return character

if __name__ == "__main__":
    print("Identifying serial number for ODRIVES")
    print("Finding odrive, this may take a few seconds...")
    try:
        odrv0 = odrive.find_any(serial_number="206430804648")
    except:
        print("Failed to find with serial number")
        odrv0 = odrive.find_any()

    print("Motor is ready to control")
    try:
        while True:
            char = get_char()
            char_val = ord(char)
            
            if char_val == 27: # escape key
                print("escape")
            elif char_val == 119: # W
                odrv0.axis0.controller.input_vel = 50
            elif char_val == 115: # S
                odrv0.asix0.controller.input_vel = 0 
    finally:
        print("------")
    print("Program ending")

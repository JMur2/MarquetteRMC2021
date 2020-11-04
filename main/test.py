"""
A file to test aspects of the overall architecture

@created: 10-7-2020
"""

import odrive
from odrive.enums import *
import time
import math
import sys
import tty
import termios
import numpy as np

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
    # print("Identifying serial number for ODRIVES")
    # print("Finding odrive, this may take a few seconds...")
    # try:
    #     odrv0 = odrive.find_any(serial_number="206430804648")
    # except:
    #     print("Failed to find with serial number")
    #     odrv0 = odrive.find_any()
    print("Finding an odrive, this may take a few seconds...")
    odrv0 = odrive.find_any()

    odrv0.axis0.controller.input_vel = 0

    print("Motor is ready to control")
    try:
        while True:
            char = get_char()
            char_val = ord(char)
			
            # b = (odrv0.axis0.motor.current_meas_phB + odrv0.axis0.motor.current_meas_phC)
			
            if char_val == 27: # escape key
                print("esc")
                break
            elif char_val == 119: #W
                print("w")
                odrv0.axis0.controller.input_vel = 20
            elif char_val == 115: #S
                print("s")
                odrv0.axis0.controller.input_vel = -20
            elif char_val == 113: #Q 
                print("q")
                odrv0.axis0.controller.input_vel = 0

            print("This is the Bus Current ", odrv0.ibus)                
    finally:
        print("------")

    print("Program ending")

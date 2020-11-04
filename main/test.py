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

    print("Motor is ready to control")
    try:
        while True:
            char = get_char()
            char_val = ord(char)
			
			b = odrv0.axis0.motor.current_meas_phB + odrv0.axis0.motor.current_meas_phC
			
            print("This is the Bus Current ", b)
            if char_val == 27: # escape key
                print("escape")
				odrv0.asix0.controller.input_vel = 0
                break
            elif char_val == 119: # W
                print("W")
                odrv0.axis0.controller.input_vel = 20
			elif char_val == 115: #S
				odrv0.axis0.controller.input_vel = -20                 
    finally:
        print("------")
    print("Program ending")

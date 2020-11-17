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
    
    print("Robot is ready to control, use W to go forward, S to go backwards, and Q to quit")
    try:
        while True:
            char = get_char()
            char_val = ord(char)
            
            if char.lower() == "q":
                break
            elif char.lower() == "w":
                odrv0.axis0.controller.input_vel = 67
            elif char.lower() == "s":
                odrv0.axis0.controller.input_vel = -67
            elif char.lower() == "x":
                odrv0.axis0.controller.input_vel = 0
    finally:
        odrv0.axis0.controller.input_vel = 0
        print("------")
    print("Program ending")

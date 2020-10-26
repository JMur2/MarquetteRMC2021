""" A new test scenario for robot control without pynput

@created: 10-11-2020
"""
from roboclaw_3 import Roboclaw
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
    print("Searching for roboclaw, this may take a few seconds...\n")
    roboclaw = Roboclaw("/dev/ttyACM0", 38400)
    roboclaw.Open()
    print("Robot is ready to control, use WASD to control direction and Q to quit")
    try:
        while True:
            char = get_char()
            char_val = ord(char)
            
            if char.lower() == "q":
                break
            elif char.lower() == "w":
                roboclaw.ForwardM1(0x80, 127)
                roboclaw.ForwardM2(0x80, 127)
            elif char.lower() == "s":
                roboclaw.BackwardM1(0x80, 127)
                roboclaw.BackwardM2(0x80, 127)
#            elif char.lower() == "x":
#                roboclaw.ForwardM1(0x80, 0)
    finally:
        roboclaw.ForwardM1(0x80, 0)
        roboclaw.ForwardM2(0x80, 0)
        print("------")
    print("Program ending")
        

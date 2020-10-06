"""
The second locomotion test file for testing our robot's locomotion.
Attempting to include keyboard operations to the motor's output, allowinf direct control over motion.

@created: Oct 4, 2020
"""

import odrive
from odrive.enums import *
import time
import math
import py_compile
from pynput import keyboard

"""
This function reads the keyboard input from the user and moves the robot in the according 
"""
def key_press(key):
    # stop looking for key inputs 
    if key == keyboard.Key.esc:
        return False
    
    
    try:
        # meant for single character keys - w, a, s, d etc.
        k = key.char
    except:
        # meant for other keys - arrow keys, etc.
        k = key.name
    
    
    if k in ['w', 'up']:
        odrv0.axis0.controller.input_vel = -(speed)
        odrv0.axis1.controller.input_vel = speed
        
    elif k in ['a', 'left']:
        odrv0.axis0.controller.input_vel = speed
        odrv0.axis1.controller.input_vel = speed
        
    elif k in ['s', 'down']:
        odrv0.axis0.controller.input_vel = speed
        odrv0.axis1.controller.input_vel = -(speed)
        
    elif k in ['d', 'right']:
        odrv0.axis0.controller.input_vel = -(speed)
        odrv0.axis1.controller.input_vel = -(speed)
        
    elif k in ['space']:
        odrv0.axis0.controller.input_vel = 0
        odrv0.axis1.controller.input_vel = 0
        
    elif k in ['e']:
        odrv0.axis.encoder
        
    elif k in ['m']:
        odrv0.axis.motor
        
    elif k in ['plus']:
        speed += 5
        
    elif k in ['minus']:
        speed -= 5
    
        
if __name__ == '__main__':
    
    # default speed value
    speed = 50
    
    print("Searching for odrive, this may take a few seconds...\n")
    odrv0 = odrive.find_any()
    
    print("It is time to control the robot!\nThe controls are simple: wasd or the arrow keys move the robot directionally.")
    print("Space will stop the robot in its tracks, and escape will end the control period altogether.")
    listener = keyboard.Listener(on_press=key_press)
    listener.start()
    listener.join()
    print("Ending program.")
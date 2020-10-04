"""
The second locomotion test file for testing our robot's locomotion.
Attempting to include keyboard operations to the motor's output, allowinf direct control over motion.

@created: 10-4-2020
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
        #up
        print("UP")
    elif k in ['a', 'left']:
        #left
        print("LEFT")
    elif k in ['s', 'down']:
        #down
        print("DOWN")
    elif k in ['d', 'right']:
        #right
        print("RIGHT")
    elif k in ['space']:
        #stop
        print("SPACE")
    
        
if __name__ == '__main__':
    
    #odrv0 = odrive.find_any()
    
    print("It is time to control the robot!\nThe controls are simple: wasd or the arrow keys move the robot directionally.\n")
    print("Space will stop the robot in its tracks, and escape will end the control period altogether.\n")
    listener = keyboard.Listener(on_press=key_press)
    listener.start()
    listener.join()
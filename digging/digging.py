"""
@created: 10-7-2020
"""

import odrive
from odrive.enums import *
import time
import math
import py_compile
from pynput import keyboard

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
        
    if k in ['i']:
        odrv0.axis0.controller.input_vel = 10
    elif k in ['k']:
        odrv0.axis0.controller.input_vel = -10
    elif k in ['space']:
        odrv0.axis0.controller.input_vel = 0
        
if __name__ == '__main__':
    
    # default speed value
#     speed = 50
    
    print("Searching for odrive, this may take a few seconds...\n")
    odrv0 = odrive.find_any()
    
    print("It is time to control the robot!\nThe controls are simple: wasd or the arrow keys move the robot directionally.")
    print("Space will stop the robot in its tracks, and escape will end the control period altogether.")
    listener = keyboard.Listener(on_press=key_press)
    listener.start()
    listener.join()
    print("Ending program.")
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
    
    if k in []:
        
         
    
if __name__ == '__main__':
    
    
    
    
    listener = keyboard.Listener(on_press=key_press)
    listener.start()
    listener.join()
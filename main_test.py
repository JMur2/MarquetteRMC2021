"""
This is the main test .py file for our RMC system.  It has references to all other files to get each functionality for each subsystem.

@created: 10-4-2020
"""
import odrive
import time
import math

from odrive.enums import *
from pynput import keyboard

#from locomotion import locomotion_funcs
#from digging import digging_funcs
#from dumping import dumping_funcs
#from lidar import lidar_funcs

def key_press(key):
    """
    This function reads a key press in order to perform an action.
    
    Args:
        key (int): reads in the value of the key pressed from the listener
    
    Returns:
        Returning False will end the listener and all keyboard inputs, otherwise it will continue
    """
    if key == keyboard.Key.esc:
        return False
    
    try:
        k = key.char # meant for single character keys - w, a, s, d etc.
    except:
        k = key.name # meant for other keys - arrow keys, space bar, return etc.
    
    # elif statements looking for the key pressed to perform the action within.  Multiple keys can be programmed to the same action
    # in the array of characters
    if k in ['w']:
        odrv0.axis0.controller.input_vel = -50
        odrv0.axis1.controller.input_vel = 50
  
    elif k in ['a']:
        odrv0.axis0.controller.input_vel = 50
        odrv0.axis1.controller.input_vel = 50
        
    elif k in ['s']:
        odrv0.axis0.controller.input_vel = 50
        odrv0.axis1.controller.input_vel = -50
        
    elif k in ['d']:
        odrv0.axis0.controller.input_vel = -50
        odrv0.axis1.controller.input_vel = -50
        
    elif k in ['space']:
        odrv0.axis0.controller.input_vel = 0
        odrv0.axis1.controller.input_vel = 0

def main():
    print("Finding odrive(s) this may take a few seconds...")
    try:
        odrv0 = odrive.find_any(serial_number="206430804648")
        #odrv1 = odrive.find_any(serial_number="20863880304E")
    except:
        print("finding odrive failed.")
    
    print("It is time to control the robot!\nThe controls are simple: wasd to move the robot directionally.")
    print("Space will stop the robot in its tracks, and escape will end the control period altogether.")
    listener = keyboard.Listener(on_press=key_press)
    listener.start()
    listener.join()
    print("Ending program.")
    
    
if __name__ == '__main__':
    main()
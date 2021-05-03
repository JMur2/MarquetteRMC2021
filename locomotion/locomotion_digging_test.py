"""
@created: 10-7-2020

Tests both locomotion and digging motors at once.

Works on Windows environments only

NOTE: Because the code is looking for 2 odrives with specific serial numbers, not having the 2 correct motor controllers
will cause this program to fail and/or crash
"""
import odrive
import time
import math
import py_compile

from odrive.enums import *
from pynput import keyboard


def key_press(key):
    # stop looking for key inputs 
    if key == keyboard.Key.esc:
        return False
    
    # look for key inputs
    try:
        # meant for single character keys - w, a, s, d etc.
        k = key.char
    except:
        # meant for other keys - arrow keys, etc.
        k = key.name
    
    # have commands for each key pressed
    if k in ['w']:
        # locomotion go forward
        odrv0.axis0.controller.input_vel = -50
        odrv0.axis1.controller.input_vel = 50
        
    elif k in ['a']:
        # locomotion turn left
        odrv0.axis0.controller.input_vel = 50
        odrv0.axis1.controller.input_vel = 50
        
    elif k in ['s']:
        # locomotion go backwards
        odrv0.axis0.controller.input_vel = 50
        odrv0.axis1.controller.input_vel = -50
        
    elif k in ['d']:
        # locomotion turn right
        odrv0.axis0.controller.input_vel = -50
        odrv0.axis1.controller.input_vel = -50
        
    elif k in ['space']:
        # stop all motors
        odrv0.axis0.controller.input_vel = 0
        odrv0.axis1.controller.input_vel = 0
        odrv1.axis0.controller.input_vel = 0
        
    elif k in ['e']:
        # print locomotion encoder errors 
        odrv0.axis.encoder
        
    elif k in ['m']:
        # print locomotion motor errors
        odrv0.axis.motor
        
    elif k in ['i']:
        # spin digging motor forward
        odrv1.axis0.controller.input_vel = 67
        odrv1.axis0.motor
        odrv1.axis0.encoder
        print("i")
        
    elif k in ['k']:
        # spin digging motor backwards
        odrv1.axis0.controller.input_vel = -67
        print("k")


if __name__ == '__main__':
    
    try:
        odrv0 = odrive.find_any(serial_number="206430804648")
        odrv1 = odrive.find_any(serial_number="20863880304E")
    except:
        print("finding odrive failed.")
    
    print("It is time to control the robot!\nThe controls are simple: wasd or the arrow keys move the robot directionally.")
    print("Space will stop the robot in its tracks, and escape will end the control period altogether.")
    listener = keyboard.Listener(on_press=key_press)
    listener.start()
    listener.join()
    print("Ending program.")

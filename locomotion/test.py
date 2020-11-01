import odrive
from odrive.enums import *
import time
import math
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
    
    if k in ['w']:
        odrv0.axis0.controller.input_vel = 50
    elif k in ['s']:
        odrv0.axis0.controller.input_vel = -50
    elif k in ['q']:
        odrv0.axis0.controller.input_vel = 0

if __name__ == "__main__":
    print("Finding an odrive, this may take a few seconds...")
    try:
        odrv0 = odrive.find_any()
    except:
        print("Finding odrive failed")
    
    print("Ready to control")
    listener = keyboard.Listener(on_press=key_press )
    listener.start()
    listener.join()
    print("Ending program.")

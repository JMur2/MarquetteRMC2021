import odrive
from odrive.enums import *
import time
import math

if __name__ == "__main__":
    print("Finding an odrive, this may take a few seconds...")
    try:
        odrv0 = odrive.find_any()
    except:
        print("Finding odrive failed")

    print("Running Motor")
    odrv0.axis0.controller.input_vel = 50

    time.sleep(2)

    print("Stopping Motor")
    odrv0.axis0.controller.input_vel = 0

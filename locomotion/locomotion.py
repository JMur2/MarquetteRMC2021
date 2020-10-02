"""
This file is a test for the locomotion system. It is based on a demo file
from the official ODrive github, which is linked below.  

@author: Jake Murray
@created: 9-25-2020

Link to demo: https://github.com/madcowswe/ODrive/blob/master/tools/odrive_demo.py
"""

import odrive
from odrive.enums import *
import time
import math

# print("Finding an ODrive...\n")
# drive = odrive.find_any()

# # establishing variables for use.
# axis0 = drive.axis0
# axis1 = drive.axis1
# motor = axis0.motor
# encoder = axis.endcoder

# print("Calibration...\n")
# axis0.requested_state = AXIS_STATE_FULL_CALIBRATION_SEQUENCE

# while axis0.current_state != AXIS_STATE_IDLE:
#     time.sleep(0.1)

# axis0.requested_state = AXIS_STATE_CLOSED_LOOP_CONTROL    

odrv0 = odrive.find_any()

print("Setting velocity to 20\n")
odrv0.axis0.controller.input_vel = 20
odrv0.axis1.controller.input_vel = -20
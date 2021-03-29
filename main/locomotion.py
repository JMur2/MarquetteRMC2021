"""
This file houses all of the locomotion functionality.

@created: 11-1-2020
"""

import odrive
import time
from odrive.utils import dump_errors
from odrive.enums import *

class Locomotion:
    
    #--------------------------------------------------------------------
    # Locomotion intialiation function
    #
    # Establish the odrive connection for locomotion
    #--------------------------------------------------------------------
    def __init__(self):
        try:
            print("Searching locomotion odrive, this may take a few seconds...")
            self.odrv1 = odrive.find_any(serial_number="20863880304E")
            print("Locomotion odrive connected successfully")
        except:
            print("Unable to find locomotion odrive")

        self.loco_engage_motors()     

    #--------------------------------------------------------------------
    # Drives robot forward
    #
    # param: speed -- set the speed of movement (max at 67)
    #--------------------------------------------------------------------
    def loco_forward(self):
        self.odrv1.axis0.controller.input_vel = 0
        self.odrv1.axis1.controller.input_vel = 0

        time.sleep(0.1)

        self.odrv1.axis0.controller.input_vel = -67
        self.odrv1.axis1.controller.input_vel = 67

    #--------------------------------------------------------------------
    # Zero point turn left
    #
    # param: speed -- set the speed of movement (max at 50)
    #--------------------------------------------------------------------
    def loco_left(self):
        self.odrv1.axis0.controller.input_vel = 0
        self.odrv1.axis1.controller.input_vel = 0

        time.sleep(0.1)

        self.odrv1.axis0.controller.input_vel = 67
        self.odrv1.axis1.controller.input_vel = 67
    
    #--------------------------------------------------------------------
    # Drives robot in reverse
    #
    # param: speed -- sets the speed of movement (max at 50)
    #--------------------------------------------------------------------
    def loco_back(self):
        self.odrv1.axis0.controller.input_vel = 0
        self.odrv1.axis1.controller.input_vel = 0

        time.sleep(0.1)

        self.odrv1.axis0.controller.input_vel = 67
        self.odrv1.axis1.controller.input_vel = -67

    #--------------------------------------------------------------------
    # Zero point turn right 
    #
    # param: speed -- sets the speed of movement (max at 50)
    #--------------------------------------------------------------------
    def loco_right(self):
        self.odrv1.axis0.controller.input_vel = 0
        self.odrv1.axis1.controller.input_vel = 0

        time.sleep(0.1)

        self.odrv1.axis0.controller.input_vel = -67
        self.odrv1.axis1.controller.input_vel = -67
    
    #--------------------------------------------------------------------
    # Stops all movement
    # 
    # Stopping right to 0 causes ringing in the motor, so stopping is set
    # to the following: (speed) -> 0 -> 5 -> 0
    #--------------------------------------------------------------------
    def loco_stop(self):
        self.odrv1.axis0.controller.input_vel = 0
        self.odrv1.axis1.controller.input_vel = 0

        time.sleep(0.1)

        self.odrv1.axis0.controller.input_vel = 5
        self.odrv1.axis1.controller.input_vel = 5

        time.sleep(0.1)

        self.odrv1.axis0.controller.input_vel = 0
        self.odrv1.axis1.controller.input_vel = 0

    #--------------------------------------------------------------------
    # Perform error checking on locomotion system
    #
    # Still a WIP
    #
    # TODO: Finalize any locomotion checks and put here
    #--------------------------------------------------------------------
    def loco_config_check(self):
        pass

    #--------------------------------------------------------------------
    # Engages the locomotion motors by setting their state
    #--------------------------------------------------------------------
    def loco_engage_motors(self):
        self.odrv1.axis0.requested_state = AXIS_STATE_CLOSED_LOOP_CONTROL
        self.odrv1.axis1.requested_state = AXIS_STATE_CLOSED_LOOP_CONTROL

    #--------------------------------------------------------------------
    # Disengages the locomotion motors by setting their state
    #--------------------------------------------------------------------
    def loco_disengage_motors(self):
        self.loco_stop()

        time.sleep(0.1)

        self.odrv1.axis0.requested_state = AXIS_STATE_IDLE
        self.odrv1.axis1.requested_state = AXIS_STATE_IDLE

    #--------------------------------------------------------------------
    # Dumps all errors from the locomotion odrive
    #--------------------------------------------------------------------
    def loco_dump_errors(self):
        dump_errors(odrv1, True)

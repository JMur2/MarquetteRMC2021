"""
This file houses all of the digging functionality

@created: 11-1-2020
"""

import odrive
from odrive.utils import dump_errors
from odrive.enums import *
import subprocess
import yaml
import time

class Digging:
    #--------------------------------------------------------------------
    # Digging initialize function
    # 
    # Establish the odrive connection for digging 
    #--------------------------------------------------------------------
    def __init__(self):
        self.serial_num = "00320097"
        try:
            print("Searching for digging odrive, this may take a few seconds...")
            self.odrv0 = odrive.find_any(serial_number="207939834D4D")
        except:
            print("Unable to find digging odrive")

        self.dig_engage_depth()
        self.dig_engage_zipper()
    
    #--------------------------------------------------------------------
    # Move the zipper forward, digging the material below it
    # 
    # param: speed -- set the speed of belt movement (max at 67)
    #--------------------------------------------------------------------
    def zipper_forward(self, speed):
        print("\n belt foward current pull:  \n")
        print(self.odriv0.axis1.motor.current_control.Iq_measured)
        self.odrv0.axis1.controller.input_vel = -speed

    #--------------------------------------------------------------------
    # Move the zipper backward, to get it unstuck in the case of digging 
    # incorrect material
    # 
    # param: speed -- set the speed of belt movement (max at 67)
    #--------------------------------------------------------------------
    def zipper_back(self, speed):
        print("\n belt backwards pull:  \n")
        print(self.odriv0.axis1.motor.current_control.Iq_measured)
        self.odrv0.axis1.controller.input_vel = speed

    #--------------------------------------------------------------------
    # Stop the zipper at its current location
    #--------------------------------------------------------------------
    def zipper_stop(self):
        self.odrv0.axis1.controller.input_vel = 0

        time.sleep(0.1)

        self.odrv0.axis1.controller.input_vel = 5

        time.sleep(0.1)

        self.odrv0.axis1.controller.input_vel = 0

    #--------------------------------------------------------------------
    # Extends the zipper drive deeper into the ground
    #
    # param: speed -- set the speed of depth adjustment (max at 50)
    #--------------------------------------------------------------------
    def depth_extend(self, speed):
        print("\n depth extend current pull:  \n")
        print(self.odriv0.axis0.motor.current_control.Iq_measured)
        self.odrv0.axis0.controller.input_vel = speed

    #--------------------------------------------------------------------
    # Retracts the zipper drive from the hole it has dug
    # 
    # param: speed -- set the speed of the depth adjustment (max at 50)
    #--------------------------------------------------------------------
    def depth_retract(self, speed):
        print("\n depth retract current pull:  \n")
        print(self.odriv0.axis0.motor.current_control.Iq_measured)
        self.odrv0.axis0.controller.input_vel = -speed

    #--------------------------------------------------------------------
    # Stops adjusting the depth of the zipper
    #--------------------------------------------------------------------
    def depth_stop(self):
        self.odrv0.axis0.controller.input_vel = 0

        time.sleep(0.1)

        self.odrv0.axis0.controller.input_vel = 5

        time.sleep(0.1)

        self.odrv0.axis0.controller.input_vel = 0

    #--------------------------------------------------------------------
    # Helper function to operate the stepper motor
    # 
    # param: *args -- a variable set of arguments used to send commands
    #--------------------------------------------------------------------
    def ticcmd(self, *args):
        return subprocess.check_output(['ticcmd'] + list(args))

    #--------------------------------------------------------------------
    # Rotate the zipper forward with the stepper motor
    #--------------------------------------------------------------------
    def stepper_forward(self, pos):
        new_target = (-1 * pos) 
        self.ticcmd('--exit-safe-start', '-d', self.serial_num, '--position-relative', str(new_target))

    #--------------------------------------------------------------------
    # Rotate the zipper backward with the stepper motor
    #--------------------------------------------------------------------
    def stepper_backward(self, pos):
        new_target = pos 
        self.ticcmd('--exit-safe-start', '-d', self.serial_num, '--position-relative', str(new_target))

    #--------------------------------------------------------------------
    # Rotate the zipper backward with the stepper motor
    #--------------------------------------------------------------------
    def stepper_stop(self):
        self.ticcmd('-d', self.serial_num, '--reset')

    #--------------------------------------------------------------------
    # Engages the depth motor by setting their state
    #--------------------------------------------------------------------
    def dig_engage_depth(self):
        self.odrv0.axis0.requested_state = AXIS_STATE_CLOSED_LOOP_CONTROL

    #--------------------------------------------------------------------
    # Disengages the depth motor by setting their state
    #--------------------------------------------------------------------
    def dig_disengage_depth(self):
        self.depth_stop()
        
        time.sleep(0.1)

        self.odrv0.axis0.requested_state = AXIS_STATE_IDLE

    #--------------------------------------------------------------------
    # Engages the zipper motor by setting their state
    #--------------------------------------------------------------------
    def dig_engage_zipper(self):
        
        self.odrv0.axis1.requested_state = AXIS_STATE_CLOSED_LOOP_CONTROL

    #--------------------------------------------------------------------
    # Disengages the zipper motor by setting their state
    #--------------------------------------------------------------------
    def dig_disengage_zipper(self):
        self.zipper_stop()

        time.sleep(0.1)

        self.odrv0.axis1.requested_state = AXIS_STATE_IDLE

    #--------------------------------------------------------------------
    # Disengages the stepper motor by reseting the state
    #--------------------------------------------------------------------
    def dig_disengage_pitch(self):
        self.ticcmd('-d', self.serial_num, '--reset')

    #--------------------------------------------------------------------
    # Dumps all errors from the locomotion odrive
    #--------------------------------------------------------------------
    def dig_dump_errors(self):
        dump_errors(odrv0, True)

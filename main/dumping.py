"""
This file houses all of the dumping functionality

@created: 11-1-2020
"""

import subprocess
import yaml
import time

from roboclaw import Roboclaw

class Dumping:

    #--------------------------------------------------------------------
    # Dumping initialization function
    #
    # Establish the roboclaw connection for the linear actuator
    #--------------------------------------------------------------------
    def __init__(self):
        self.serial_num = "00320100"
        try:
            print("Searching for dumping roboclaw, this may take a few seconds...")
            #self.enable_roboclaw()
            self.roboclaw = Roboclaw("/dev/ttyACM1", 38400)
            self.roboclaw.Open()
            print("Dumping roboclaw connected successfully")
        except:
            print("Unable to find dumping roboclaw")

    #--------------------------------------------------------------------
    # Helper function to operate the stepper motor
    # 
    # param: *args -- a variable set of arguments used to send commands
    #--------------------------------------------------------------------
    def ticcmd(self, *args):
        return subprocess.check_output(['ticcmd'] + list(args))

    #--------------------------------------------------------------------
    # Rotate the bucket forward with the stepper motor
    #--------------------------------------------------------------------
    def stepper_forward(self):
        new_target = -200
        self.ticcmd('--exit-safe-start', '-d', self.serial_num, '--position', str(new_target))

    #--------------------------------------------------------------------
    # Rotate the bucket backward with the stepper motor
    #--------------------------------------------------------------------
    def stepper_backward(self):
        new_target = -10
        self.ticcmd('--exit-safe-start', '-d', self.serial_num, '--position', str(new_target))

    #--------------------------------------------------------------------
    # Stop the nucket from rotating
    #--------------------------------------------------------------------
    def stepper_stop(self):
        self.ticcmd('-d', self.serial_num, '--reset')

    #--------------------------------------------------------------------
    # Extend the linear actuator forward for its full length
    #--------------------------------------------------------------------
    def actuator_extend(self):
        if self.roboclaw != None:
            self.roboclaw.BackwardM1(128, 127)

    #--------------------------------------------------------------------
    # Fully retract the linear actuator
    #--------------------------------------------------------------------
    def actuator_retract(self):
        if self.roboclaw != None:
            self.roboclaw.ForwardM1(128, 127)

    #--------------------------------------------------------------------
    # Stop the linear actuator
    #--------------------------------------------------------------------
    def actuator_stop(self):
        if self.roboclaw != None:
            self.roboclaw.ForwardM1(128, 0)

    #--------------------------------------------------------------------
    # A full dump algorithm
    #--------------------------------------------------------------------
    def full_dump(self):
        self.actuator_extend()
        time.sleep(12)
        self.stepper_forward()
        time.sleep(4)
        self.stepper_backward()
        time.sleep(4)
        self.actuator_retract()
        time.sleep(12)

    #--------------------------------------------------------------------
    # Enables the roboclaw to communicate on the ACM1 port
    #--------------------------------------------------------------------
    def enable_roboclaw(self):
        self.roboclaw = Roboclaw("/dev/ttyACM1", 38400)
        self.roboclaw.Open()

    #--------------------------------------------------------------------
    # Disables the roboclaw to communicate on the ACM1 port
    #--------------------------------------------------------------------
    def disable_roboclaw(self):
        self.roboclaw.Close()

    #--------------------------------------------------------------------
    # Disengages the stepper motor
    #--------------------------------------------------------------------
    def disable_stepper(self):
        self.ticcmd('-d', self.serial_num, '--reset')

"""
This file houses all of the dumping functionality

@created: 11-1-2020
"""

import subprocess
import yaml
from roboclaw_3 import Roboclaw

class Dumping:

    #--------------------------------------------------------------------
    # Dumping initialization function
    #
    # Establish the roboclaw connection for the linear actuator
    #--------------------------------------------------------------------
    @staticmethod
    def initialize():
        global roboclaw
        try:
            print("Searching for dumping roboclaw, this may take a few seconds...")
            roboclaw = Roboclaw("/dev/ttyACM0", 38400)
            print("Dumping roboclaw connected successfully")
        except:
            print("Unable to find digging roboclaw")

    #--------------------------------------------------------------------
    # Helper function to operate the stepper motor
    # 
    # param: *args -- a variable set of arguments used to send commands
    #--------------------------------------------------------------------
    @staticmethod
    def ticcmd(*args):
        return subprocess.check_output(['ticcmd'] + list(args))

    #--------------------------------------------------------------------
    # Rotate the zipper forward with the stepper motor
    #--------------------------------------------------------------------
    @staticmethod
    def stepper_forward():
        status = yaml.load(Dumping.ticcmd('-s', '--full'))
        position = status['Current position']

        # test for boundaries
        new_target = position + 20 # what the step size should be

    #--------------------------------------------------------------------
    # Rotate the zipper backward with the stepper motor
    #--------------------------------------------------------------------
    @staticmethod
    def stepper_backward():
        status = yaml.load(Dumping.ticcmd('-s', '--full'))
        position = status['Current position']

        # test for boundaries
        new_target = position - 20 # what the step size should be

    #--------------------------------------------------------------------
    # Extend the linear actuator forward for its full length
    #--------------------------------------------------------------------
    @staticmethod
    def actuator_extend():
        roboclaw.ForwardM1(0x80, 127)

    #--------------------------------------------------------------------
    # Fully retract the linear actuator
    #--------------------------------------------------------------------
    @staticmethod
    def actuator_retract():
        roboclaw.BackwardM1(0x80, 127)

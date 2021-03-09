"""
This file houses all of the dumping functionality

@created: 11-1-2020
"""

import subprocess
import yaml
from roboclaw import Roboclaw

class Dumping:

    #--------------------------------------------------------------------
    # Dumping initialization function
    #
    # Establish the roboclaw connection for the linear actuator
    #--------------------------------------------------------------------
    def __init__(self):
        #self.roboclaw
        try:
            print("Searching for dumping roboclaw, this may take a few seconds...")
            self.roboclaw = Roboclaw("/dev/ttyACM0", 38400)
            self.roboclaw.Open()
            print("Dumping roboclaw connected successfully")
        except:
            print("Unable to find digging roboclaw")

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
        status = yaml.load(self.ticcmd('-s', '--full'))
        position = status['Current speed']

        new_target = 200
        ticcmd('--exit-safe-start', '--velocity', str(new_target))

    #--------------------------------------------------------------------
    # Rotate the bucket backward with the stepper motor
    #--------------------------------------------------------------------
    def stepper_backward(self):
        status = yaml.load(self.ticcmd('-s', '--full'))
        position = status['Current speed']

        new_target = -200
        ticcmd('--exit-safe-start', '--velocity', str(new_target))

    #--------------------------------------------------------------------
    # Stop the nucket from rotating
    #--------------------------------------------------------------------
    def stepper_stop(self):
        status = yaml.load(self.ticcmd('-s', '--full'))
        position = status['Current speed']

        new_target = 0
        ticcmd('--exit-safe-start', '--velocity', str(new_target))

    #--------------------------------------------------------------------
    # Extend the linear actuator forward for its full length
    #--------------------------------------------------------------------
    def actuator_extend(self):
        self.roboclaw.BackwardM1(128, 127)

    #--------------------------------------------------------------------
    # Fully retract the linear actuator
    #--------------------------------------------------------------------
    def actuator_retract(self):
        self.roboclaw.ForwardM1(128, 127)

    #--------------------------------------------------------------------
    # Stop the linear actuator
    #--------------------------------------------------------------------
    def actuator_stop(self):
        self.roboclaw.ForwardM1(128, 0)

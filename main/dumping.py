"""
This file houses all of the dumping functionality

@created: 11-1-2020
"""

import subprocess
import yaml
from roboclaw_3 import Roboclaw

class Dumping:

    @staticmethod
    def initialize():
        global roboclaw
        roboclaw = Roboclaw("/dev/ttyACM0", 38400)

    @staticmethod
    def ticcmd(*args):
        return subprocess.check_output(['ticcmd'] + list(args))

    @staticmethod
    def stepper_forward():
        status = yaml.load(Dumping.ticcmd('-s', '--full'))
        position = status['Current position']

        # test for boundaries
        new_target = position + 20 # what the step size should be

    @staticmethod
    def stepper_backward():
        status = yaml.load(Dumping.ticcmd('-s', '--full'))
        position = status['Current position']

        # test for boundaries
        new_target = position - 20 # what the step size should be

    @staticmethod
    def actuator_extend():
        roboclaw.ForwardM1(0x80, 127)

    @staticmethod
    def actuator_extend():
        roboclaw.BackwardM1(0x80, 127)

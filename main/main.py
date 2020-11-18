"""
This is the official main file

@created: 10-25-2020
"""
from human import HumanControl
from states import State
from locomotion import Locomotion
from digging import Digging
from dumping import Dumping

class Robot:

    def __init__(self):
        self.loco_speed = 50

    def startup(self):
        # initialize subassembly functionality
        Locomotion.initialize()
        Digging.initialize()
        Dumping.initialize()

        State.set_control_state("locomotion")


if __name__ == "__main__":
    robot = Robot()
    control = HumanControl()

    if State.get_control_state() == "startup":
        robot.startup()

    while True:
        # control loop
        char = control.get_char()
        ascii_val = ord(char)

        if (ascii_val == 27): # esc -- stop whole program
            break

        if State.get_operation_state == "human":
            control.control_robot(State.get_control_state, char)
        elif State.get_operation_state == "lidar":
            print("nothing")

    print("Ending Program...")

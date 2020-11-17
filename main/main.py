"""
This is the official main file

@created: 10-25-2020
"""
from human import HumanControl
from states import State
from locomotion import Locomotion

class Robot:

    def __init__(self):
        self.control_state = State.set_control_state("startup")
        self.operation_state = State.set_operation_state("human")

        self.loco_speed = 50

    def startup(self):
        # initialize everything we need
        Locomotion.initialize()

        State.set_control_state("locomotion")


if __name__ == "__main__":
    robot = Robot()
    control = HumanControl()

    if State.get_control_state() == "startup":
        robot.startup()

    while True:
        # control loop
        robot.control_state = State.get_control_state()
        robot.operation_state = State.get_operation_state()

        char = control.get_char()
        ascii_val = ord(char)

        if (ascii_val == 27): # esc -- stop whole program
            break

        if robot.operation_state == "human":
            control.control_robot(robot.control_state, char)
        elif robot.operation_state == "lidar":
            print("nothing")

    print("Ending Program...")

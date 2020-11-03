"""
This is the official main file

@created: 10-25-2020
"""
from human import HumanControl
from states import State

class Robot:

    def __init__(self):
        self.control_state = State.set_control_state("startup")
        self.operation_state = State.set_operational_state("human")
        self.loco_speed = 50

if __name__ == "__main__":
    robot = Robot()
    control = HumanControl()

    while True:
        # control loop
        robot.control_state = State.get_control_state()
        robot.operation_state = State.get_operational_state()

        char = control.get_char()
        ascii_val = ord(char)

        if (ascii_val == 27): # esc -- stop whole program
            break

        if robot.operation_state == "human":
            control.control_robot(robot.control_state, char)
        elif robot.operation_state == "lidar":
            print("nothing") # lidar junk

    print("Ending Program...")

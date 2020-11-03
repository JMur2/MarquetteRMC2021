"""
This is the official main file

@created: 10-25-2020
"""
from human import HumanControl
from states import State

class Robot:

    def __init__(self):
        self.current_state = State.set_state("startup")
        self.loco_speed = 50

if __name__ == "__main__":
    robot = Robot()
    control = HumanControl()

    while True:
        # control loop
        robot.current_state = State.get_state()
        control_val = control.control_robot(robot.current_state)
        
        if control_val == "quit":
            break

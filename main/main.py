"""
This is the official main file

@created: 10-25-2020
"""
from human import HumanControl
from states import State

class Robot:
    #each class below is initialized upon this object creation
    h = HumanControl()

    current_state = ""

    def __init__(self):
        self.current_state = State.set_state("startup")

if __name__ == "__main__":
    robot = Robot()

    #while True:
        # control loop

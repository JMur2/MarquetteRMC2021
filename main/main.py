"""
This is the official main file

@created: 10-25-2020
"""
from main import human
from main import states

class Robot:
    #each class below is initialized upon this object creation
    h = human.HumanControl()
    s = states.State("null")

    current_state = ""

    def __init__(self):
        # initializations
        self.current_state = self.s.set_state("startup")

if __name__ == "__main__":
    robot = Robot()

    while True:
        # control loop

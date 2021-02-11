"""
This is the official main file

@created: 10-25-2020
"""
from locomotion import Locomotion
from digging import Digging
from dumping import Dumping

class Robot:

    def __init__(self):
        self.dummy_opcode = 1

        self.state_operation = "manual"
        self.state_control = "locomotion"
        
    # def startup(self):
    #     # initialize the operation state
    #     State.set_operation_state("human")

    #     # initialize subassembly functionality
    #     Locomotion.initialize()
    #     Digging.initialize()
    #     Dumping.initialize()

    #     # once the initializations are finished, set the state to what is assumed to
    #     # be the first operation
    #     State.set_control_state("locomotion")


# if __name__ == "__main__":
#     robot = Robot()
#     #control = HumanControl()

#     # run robot startup after instance creation
#     if State.get_control_state() == "startup":
#         robot.startup()

#     while True:
#         # control loop
#         char = control.get_char() # get the character from the keyboard
#         char_val = ord(char) # convert the character read in to its ASCII value

#         if (char_val == 27): # esc -- end whole program
#             break

#         # TODO: establish button for changing operation state to/from human and lidar here

#         if State.get_operation_state == "human":
#             control.control_robot(State.get_control_state, char)
#         elif State.get_operation_state == "lidar":
#             # TODO: Lidar file!
#             print("nothing")

#     print("Ending Program...")

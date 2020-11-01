"""
This file contains the current state of the Robot.
Will allow for adjustments of the state, and will restrict certain actions depending on the active state

@created: 11-1-2020
"""

class State:

    current_state: str = "NULL"

    def __init__(self, state):
        # initializations
        self.current_state = state
    
    def get_state(self) -> str:
        return self.current_state
    
    def set_state(self, new_state: str) -> str:
        self.current_state = new_state
        return self.current_state

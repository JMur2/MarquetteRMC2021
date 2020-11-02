"""
This file contains the current state of the Robot.
Will allow for adjustments of the state, and will restrict certain actions depending on the active state

@created: 11-1-2020
"""

class State:
    current_state = ""

    def __init__(self, state):
        # initializations
        self.current_state = state
    
    @staticmethod
    def get_state() -> str:
        return current_state
    
    @staticmethod
    def set_state(new_state: str) -> str:
        current_state = new_state
        return current_state

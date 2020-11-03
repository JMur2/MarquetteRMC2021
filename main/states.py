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
    
    @classmethod
    def get_state(cls) -> str:
        return cls.current_state
    
    @classmethod
    def set_state(cls, new_state: str) -> str:
        cls.current_state = new_state
        return cls.current_state

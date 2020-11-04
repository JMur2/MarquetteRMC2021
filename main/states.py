"""
This file contains the current state of the Robot.
Will allow for adjustments of the state, and will restrict certain actions depending on the active state

@created: 11-1-2020
"""

class State:
    control_state = ""
    operation_state = ""

    def __init__(self, state):
        # initializations
        self.control_state = state
    
    @classmethod
    def get_control_state(cls) -> str:
        return cls.control_state
    
    @classmethod
    def set_control_state(cls, new_state: str) -> str:
        cls.control_state = new_state
        return cls.control_state
    
    @classmethod
    def get_operation_state(cls) -> str:
        return cls.operation_state

    @classmethod
    def set_operation_state(cls, new_state: str) -> str:
        cls.operation_state = new_state
        return cls.operation_state

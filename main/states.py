"""
This file contains the current state of the Robot.
Will allow for adjustments of the state, and will restrict certain actions depending on the active state

@created: 11-1-2020
"""

class State:
    
    @classmethod
    def get_control_state(cls) -> str:
        return cls.control_state
    
    @classmethod
    def set_control_state(cls, new_state: str):
        cls.control_state = new_state
    
    @classmethod
    def get_operation_state(cls) -> str:
        return cls.operation_state

    @classmethod
    def set_operation_state(cls, new_state: str):
        cls.operation_state = new_state

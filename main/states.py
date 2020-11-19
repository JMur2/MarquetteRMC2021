"""
This file contains the current state of the Robot.
Will allow for adjustments of the state, and will restrict certain actions depending on the active state

@created: 11-1-2020
"""

class State:
    
    #--------------------------------------------------------------------
    # Get the current control state
    #
    # Possible states: locomotion, digging, dumping, startup
    #--------------------------------------------------------------------
    @classmethod
    def get_control_state(cls) -> str:
        return cls.control_state
    
    #--------------------------------------------------------------------
    # Set the current control state
    #
    # Possible states: locomotion, digging, dumping, startup
    #--------------------------------------------------------------------
    @classmethod
    def set_control_state(cls, new_state: str):
        cls.control_state = new_state
    
    #--------------------------------------------------------------------
    # Get the current operation state
    #
    # Possible states: human, lidar
    #--------------------------------------------------------------------
    @classmethod
    def get_operation_state(cls) -> str:
        return cls.operation_state

    #--------------------------------------------------------------------
    # Set the current operation state
    #
    # Possible states: human, lidar
    #--------------------------------------------------------------------
    @classmethod
    def set_operation_state(cls, new_state: str):
        cls.operation_state = new_state

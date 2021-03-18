from dumping import Dumping

import time
import rospy

if __name__ == "__main__":
    
    """
    Super basic testing algorithm for the dumping
    """

    Dumping.actuator_extend()
    time.sleep(12)
    Dumping.stepper_forward()
    time.sleep(2)
    Dumping.stepper_backward()
    time.sleep(2)
    Dumping.actuator_retract()

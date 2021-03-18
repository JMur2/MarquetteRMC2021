from dumping import Dumping

import time
import rospy

if __name__ == "__main__":
    
    """
    Super basic testing algorithm for the dumping
    """

    Dumping.actuator_extend()
    time.sleep()
    Dumping.stepper_forward(10)
    time.sleep()
    Dumping.stepper_stop()
    time.sleep()
    Dumping.stepper_backward(10)
    time.sleep()
    Dumping.actuator_retract()

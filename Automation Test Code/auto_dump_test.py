from dumping import Dumping

import time
import rospy

def dump_algorithm():
    dumping = Dumping()

    dumping.actuator_extend()
    time.sleep(12)
    dumping.stepper_forward()
    time.sleep(4)
    dumping.stepper_backward()
    time.sleep(4)
    dumping.actuator_retract()


if __name__ == "__main__":
    """
    Super basic testing algorithm for the dumping

    Using the actuators and the stepper motor, this algorithm can run to extend, dump, and retract the bucket.
    The timings used in the sleep() calls are the lowest they can go without bad interactions
    """
    dump_algorithm()

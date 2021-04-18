#!/usr/bin/env python

import rospy

from geometry_msgs.msg import Twist
from nav_msgs.msg import Odometry

class base_controller(Thread):

    def __init__(self, Serializer):

        now = rospy.Time.now()

        self.t_delta = rospy.Duration(1.0/self.rate)
        self.t_next = now + self.t_delta
        self.then = now

        self.cmd_vel_sub = rospy.Subscriber("odometry", Odometry, self.cmdVelCallback)

        rospy.loginfo("Starting Base Controller")

    """
    This is where we will run our commands based on what the operations dictate
    Fine tuning is needed
    """
    def cmdVelCallback(self, odom):
        vx = odom.twist.twist.vx
        vy = odom.twist.twist.vy
        vth = odom.twist.twist.vth

        if vx == 0:
            # turn in place
            pass
        elif vth == 0:
            # straight forward or backward
            pass
        else:
            # combo of the 2 -- here is where most of the tricky work goes
            pass
    

    if __name__ == "__main__":
        base_ctrl = base_controller()

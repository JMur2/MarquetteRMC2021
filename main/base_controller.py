#!/usr/bin/env python

import roslib; roslib.load_manifest('serializer')
import rospy

from threading import Thread, Event
from math import sin, cos, pi
from geometry_msgs.msg import Quaternion
from geometry_msgs.msg import Twist
from geometry_msgs.msg import Pose
from nav_msgs.msg import Odometry
from tf.broadcaster import TransformBroadcaster

class base_controller(Thread):

    def __init__(self, Serializer):
        Thread.__init__(self)
        self.finished = Event()

        self.mySerializer = Serializer

        self.rate = 10
        self.ticks = float(self.mySerializer.ticks)
        self.wheel_track = self.mySerializer.wheel_track
        self.gear_reduction = self.mySerializer.gear_reduction
        self.encoder_resolution = self.mySerializer.encoder_resolution

        now = rospy.Time.now()

        self.t_delta = rospy.Duration(1.0/self.rate)
        self.t_next = now + self.t_delta
        self.then = now

        self.enc_left = 0
        self.enc_right = 0
        self.x = 0.
        self.y = 0.
        self.th = 0.
        self.encoder_error = False

        self.cmd_vel_sub = rospy.Subscriber("cmd_vel", Twist, self.cmdVelCallback)

        self.mySerializer.clear_encoder([1, 2])

        rospy.loginfo("Starting Base Controller for base of " + str(self.wheel_track))

    """
    This is where we will run our commands based on what the operations dictate
    Fine tuning is needed
    """
    def cmdVelCallback(self, req):
        x = req.linear.x
        th = req.angular.z

        if x == 0:
            # turn in place
            pass
        elif th == 0:
            # straight forward or backward
            pass
        else:
            # combo of the 2 -- here is where most of the tricky work goes
            pass
    
        #self.mySerializer.mogo_m_per_s([1, 2], [left, right])
    
    def stop(self):
        self.finished.set()
        self.join()

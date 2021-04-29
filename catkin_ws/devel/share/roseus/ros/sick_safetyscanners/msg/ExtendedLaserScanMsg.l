;; Auto-generated. Do not edit!


(when (boundp 'sick_safetyscanners::ExtendedLaserScanMsg)
  (if (not (find-package "SICK_SAFETYSCANNERS"))
    (make-package "SICK_SAFETYSCANNERS"))
  (shadow 'ExtendedLaserScanMsg (find-package "SICK_SAFETYSCANNERS")))
(unless (find-package "SICK_SAFETYSCANNERS::EXTENDEDLASERSCANMSG")
  (make-package "SICK_SAFETYSCANNERS::EXTENDEDLASERSCANMSG"))

(in-package "ROS")
;;//! \htmlinclude ExtendedLaserScanMsg.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass sick_safetyscanners::ExtendedLaserScanMsg
  :super ros::object
  :slots (_laser_scan _reflektor_status _reflektor_median _intrusion ))

(defmethod sick_safetyscanners::ExtendedLaserScanMsg
  (:init
   (&key
    ((:laser_scan __laser_scan) (instance sensor_msgs::LaserScan :init))
    ((:reflektor_status __reflektor_status) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:reflektor_median __reflektor_median) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:intrusion __intrusion) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _laser_scan __laser_scan)
   (setq _reflektor_status __reflektor_status)
   (setq _reflektor_median __reflektor_median)
   (setq _intrusion __intrusion)
   self)
  (:laser_scan
   (&rest __laser_scan)
   (if (keywordp (car __laser_scan))
       (send* _laser_scan __laser_scan)
     (progn
       (if __laser_scan (setq _laser_scan (car __laser_scan)))
       _laser_scan)))
  (:reflektor_status
   (&optional __reflektor_status)
   (if __reflektor_status (setq _reflektor_status __reflektor_status)) _reflektor_status)
  (:reflektor_median
   (&optional __reflektor_median)
   (if __reflektor_median (setq _reflektor_median __reflektor_median)) _reflektor_median)
  (:intrusion
   (&optional __intrusion)
   (if __intrusion (setq _intrusion __intrusion)) _intrusion)
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/LaserScan _laser_scan
    (send _laser_scan :serialization-length)
    ;; bool[] _reflektor_status
    (* 1    (length _reflektor_status)) 4
    ;; bool[] _reflektor_median
    (* 1    (length _reflektor_median)) 4
    ;; bool[] _intrusion
    (* 1    (length _intrusion)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/LaserScan _laser_scan
       (send _laser_scan :serialize s)
     ;; bool[] _reflektor_status
     (write-long (length _reflektor_status) s)
     (dotimes (i (length _reflektor_status))
       (if (elt _reflektor_status i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _reflektor_median
     (write-long (length _reflektor_median) s)
     (dotimes (i (length _reflektor_median))
       (if (elt _reflektor_median i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _intrusion
     (write-long (length _intrusion) s)
     (dotimes (i (length _intrusion))
       (if (elt _intrusion i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/LaserScan _laser_scan
     (send _laser_scan :deserialize buf ptr-) (incf ptr- (send _laser_scan :serialization-length))
   ;; bool[] _reflektor_status
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _reflektor_status (make-list n))
     (dotimes (i n)
     (setf (elt _reflektor_status i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _reflektor_median
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _reflektor_median (make-list n))
     (dotimes (i n)
     (setf (elt _reflektor_median i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _intrusion
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _intrusion (make-list n))
     (dotimes (i n)
     (setf (elt _intrusion i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get sick_safetyscanners::ExtendedLaserScanMsg :md5sum-) "ebb40b28432208d7bfa749af849de1ab")
(setf (get sick_safetyscanners::ExtendedLaserScanMsg :datatype-) "sick_safetyscanners/ExtendedLaserScanMsg")
(setf (get sick_safetyscanners::ExtendedLaserScanMsg :definition-)
      "sensor_msgs/LaserScan laser_scan
bool[] reflektor_status
bool[] reflektor_median
bool[] intrusion


================================================================================
MSG: sensor_msgs/LaserScan
# Single scan from a planar laser range-finder
#
# If you have another ranging device with different behavior (e.g. a sonar
# array), please find or create a different message, since applications
# will make fairly laser-specific assumptions about this data

Header header            # timestamp in the header is the acquisition time of 
                         # the first ray in the scan.
                         #
                         # in frame frame_id, angles are measured around 
                         # the positive Z axis (counterclockwise, if Z is up)
                         # with zero angle being forward along the x axis
                         
float32 angle_min        # start angle of the scan [rad]
float32 angle_max        # end angle of the scan [rad]
float32 angle_increment  # angular distance between measurements [rad]

float32 time_increment   # time between measurements [seconds] - if your scanner
                         # is moving, this will be used in interpolating position
                         # of 3d points
float32 scan_time        # time between scans [seconds]

float32 range_min        # minimum range value [m]
float32 range_max        # maximum range value [m]

float32[] ranges         # range data [m] (Note: values < range_min or > range_max should be discarded)
float32[] intensities    # intensity data [device-specific units].  If your
                         # device does not provide intensities, please leave
                         # the array empty.

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :sick_safetyscanners/ExtendedLaserScanMsg "ebb40b28432208d7bfa749af849de1ab")



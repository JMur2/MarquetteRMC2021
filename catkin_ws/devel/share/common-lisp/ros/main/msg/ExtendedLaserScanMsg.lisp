; Auto-generated. Do not edit!


(cl:in-package main-msg)


;//! \htmlinclude ExtendedLaserScanMsg.msg.html

(cl:defclass <ExtendedLaserScanMsg> (roslisp-msg-protocol:ros-message)
  ((laser_scan
    :reader laser_scan
    :initarg :laser_scan
    :type sensor_msgs-msg:LaserScan
    :initform (cl:make-instance 'sensor_msgs-msg:LaserScan))
   (reflektor_status
    :reader reflektor_status
    :initarg :reflektor_status
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (reflektor_median
    :reader reflektor_median
    :initarg :reflektor_median
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (intrusion
    :reader intrusion
    :initarg :intrusion
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass ExtendedLaserScanMsg (<ExtendedLaserScanMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExtendedLaserScanMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExtendedLaserScanMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name main-msg:<ExtendedLaserScanMsg> is deprecated: use main-msg:ExtendedLaserScanMsg instead.")))

(cl:ensure-generic-function 'laser_scan-val :lambda-list '(m))
(cl:defmethod laser_scan-val ((m <ExtendedLaserScanMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main-msg:laser_scan-val is deprecated.  Use main-msg:laser_scan instead.")
  (laser_scan m))

(cl:ensure-generic-function 'reflektor_status-val :lambda-list '(m))
(cl:defmethod reflektor_status-val ((m <ExtendedLaserScanMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main-msg:reflektor_status-val is deprecated.  Use main-msg:reflektor_status instead.")
  (reflektor_status m))

(cl:ensure-generic-function 'reflektor_median-val :lambda-list '(m))
(cl:defmethod reflektor_median-val ((m <ExtendedLaserScanMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main-msg:reflektor_median-val is deprecated.  Use main-msg:reflektor_median instead.")
  (reflektor_median m))

(cl:ensure-generic-function 'intrusion-val :lambda-list '(m))
(cl:defmethod intrusion-val ((m <ExtendedLaserScanMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main-msg:intrusion-val is deprecated.  Use main-msg:intrusion instead.")
  (intrusion m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExtendedLaserScanMsg>) ostream)
  "Serializes a message object of type '<ExtendedLaserScanMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'laser_scan) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'reflektor_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'reflektor_status))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'reflektor_median))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'reflektor_median))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'intrusion))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'intrusion))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExtendedLaserScanMsg>) istream)
  "Deserializes a message object of type '<ExtendedLaserScanMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'laser_scan) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reflektor_status) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'reflektor_status)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reflektor_median) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'reflektor_median)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'intrusion) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'intrusion)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExtendedLaserScanMsg>)))
  "Returns string type for a message object of type '<ExtendedLaserScanMsg>"
  "main/ExtendedLaserScanMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExtendedLaserScanMsg)))
  "Returns string type for a message object of type 'ExtendedLaserScanMsg"
  "main/ExtendedLaserScanMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExtendedLaserScanMsg>)))
  "Returns md5sum for a message object of type '<ExtendedLaserScanMsg>"
  "ebb40b28432208d7bfa749af849de1ab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExtendedLaserScanMsg)))
  "Returns md5sum for a message object of type 'ExtendedLaserScanMsg"
  "ebb40b28432208d7bfa749af849de1ab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExtendedLaserScanMsg>)))
  "Returns full string definition for message of type '<ExtendedLaserScanMsg>"
  (cl:format cl:nil "sensor_msgs/LaserScan laser_scan~%bool[] reflektor_status~%bool[] reflektor_median~%bool[] intrusion~%~%~%================================================================================~%MSG: sensor_msgs/LaserScan~%# Single scan from a planar laser range-finder~%#~%# If you have another ranging device with different behavior (e.g. a sonar~%# array), please find or create a different message, since applications~%# will make fairly laser-specific assumptions about this data~%~%Header header            # timestamp in the header is the acquisition time of ~%                         # the first ray in the scan.~%                         #~%                         # in frame frame_id, angles are measured around ~%                         # the positive Z axis (counterclockwise, if Z is up)~%                         # with zero angle being forward along the x axis~%                         ~%float32 angle_min        # start angle of the scan [rad]~%float32 angle_max        # end angle of the scan [rad]~%float32 angle_increment  # angular distance between measurements [rad]~%~%float32 time_increment   # time between measurements [seconds] - if your scanner~%                         # is moving, this will be used in interpolating position~%                         # of 3d points~%float32 scan_time        # time between scans [seconds]~%~%float32 range_min        # minimum range value [m]~%float32 range_max        # maximum range value [m]~%~%float32[] ranges         # range data [m] (Note: values < range_min or > range_max should be discarded)~%float32[] intensities    # intensity data [device-specific units].  If your~%                         # device does not provide intensities, please leave~%                         # the array empty.~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExtendedLaserScanMsg)))
  "Returns full string definition for message of type 'ExtendedLaserScanMsg"
  (cl:format cl:nil "sensor_msgs/LaserScan laser_scan~%bool[] reflektor_status~%bool[] reflektor_median~%bool[] intrusion~%~%~%================================================================================~%MSG: sensor_msgs/LaserScan~%# Single scan from a planar laser range-finder~%#~%# If you have another ranging device with different behavior (e.g. a sonar~%# array), please find or create a different message, since applications~%# will make fairly laser-specific assumptions about this data~%~%Header header            # timestamp in the header is the acquisition time of ~%                         # the first ray in the scan.~%                         #~%                         # in frame frame_id, angles are measured around ~%                         # the positive Z axis (counterclockwise, if Z is up)~%                         # with zero angle being forward along the x axis~%                         ~%float32 angle_min        # start angle of the scan [rad]~%float32 angle_max        # end angle of the scan [rad]~%float32 angle_increment  # angular distance between measurements [rad]~%~%float32 time_increment   # time between measurements [seconds] - if your scanner~%                         # is moving, this will be used in interpolating position~%                         # of 3d points~%float32 scan_time        # time between scans [seconds]~%~%float32 range_min        # minimum range value [m]~%float32 range_max        # maximum range value [m]~%~%float32[] ranges         # range data [m] (Note: values < range_min or > range_max should be discarded)~%float32[] intensities    # intensity data [device-specific units].  If your~%                         # device does not provide intensities, please leave~%                         # the array empty.~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExtendedLaserScanMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'laser_scan))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'reflektor_status) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'reflektor_median) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'intrusion) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExtendedLaserScanMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'ExtendedLaserScanMsg
    (cl:cons ':laser_scan (laser_scan msg))
    (cl:cons ':reflektor_status (reflektor_status msg))
    (cl:cons ':reflektor_median (reflektor_median msg))
    (cl:cons ':intrusion (intrusion msg))
))

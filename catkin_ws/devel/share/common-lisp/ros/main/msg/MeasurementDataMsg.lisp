; Auto-generated. Do not edit!


(cl:in-package main-msg)


;//! \htmlinclude MeasurementDataMsg.msg.html

(cl:defclass <MeasurementDataMsg> (roslisp-msg-protocol:ros-message)
  ((number_of_beams
    :reader number_of_beams
    :initarg :number_of_beams
    :type cl:integer
    :initform 0)
   (scan_points
    :reader scan_points
    :initarg :scan_points
    :type (cl:vector main-msg:ScanPointMsg)
   :initform (cl:make-array 0 :element-type 'main-msg:ScanPointMsg :initial-element (cl:make-instance 'main-msg:ScanPointMsg))))
)

(cl:defclass MeasurementDataMsg (<MeasurementDataMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MeasurementDataMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MeasurementDataMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name main-msg:<MeasurementDataMsg> is deprecated: use main-msg:MeasurementDataMsg instead.")))

(cl:ensure-generic-function 'number_of_beams-val :lambda-list '(m))
(cl:defmethod number_of_beams-val ((m <MeasurementDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main-msg:number_of_beams-val is deprecated.  Use main-msg:number_of_beams instead.")
  (number_of_beams m))

(cl:ensure-generic-function 'scan_points-val :lambda-list '(m))
(cl:defmethod scan_points-val ((m <MeasurementDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main-msg:scan_points-val is deprecated.  Use main-msg:scan_points instead.")
  (scan_points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MeasurementDataMsg>) ostream)
  "Serializes a message object of type '<MeasurementDataMsg>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'number_of_beams)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'number_of_beams)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'number_of_beams)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'number_of_beams)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'scan_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'scan_points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MeasurementDataMsg>) istream)
  "Deserializes a message object of type '<MeasurementDataMsg>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'number_of_beams)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'number_of_beams)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'number_of_beams)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'number_of_beams)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'scan_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'scan_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'main-msg:ScanPointMsg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MeasurementDataMsg>)))
  "Returns string type for a message object of type '<MeasurementDataMsg>"
  "main/MeasurementDataMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MeasurementDataMsg)))
  "Returns string type for a message object of type 'MeasurementDataMsg"
  "main/MeasurementDataMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MeasurementDataMsg>)))
  "Returns md5sum for a message object of type '<MeasurementDataMsg>"
  "b7e755cfc4fb85e1a4ded54fd0d31589")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MeasurementDataMsg)))
  "Returns md5sum for a message object of type 'MeasurementDataMsg"
  "b7e755cfc4fb85e1a4ded54fd0d31589")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MeasurementDataMsg>)))
  "Returns full string definition for message of type '<MeasurementDataMsg>"
  (cl:format cl:nil "uint32 number_of_beams~%ScanPointMsg[] scan_points~%~%~%================================================================================~%MSG: main/ScanPointMsg~%float32 angle~%uint16 distance~%uint8 reflectivity~%bool valid~%bool infinite~%bool glare~%bool reflector~%bool contamination~%bool contamination_warning~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MeasurementDataMsg)))
  "Returns full string definition for message of type 'MeasurementDataMsg"
  (cl:format cl:nil "uint32 number_of_beams~%ScanPointMsg[] scan_points~%~%~%================================================================================~%MSG: main/ScanPointMsg~%float32 angle~%uint16 distance~%uint8 reflectivity~%bool valid~%bool infinite~%bool glare~%bool reflector~%bool contamination~%bool contamination_warning~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MeasurementDataMsg>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'scan_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MeasurementDataMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'MeasurementDataMsg
    (cl:cons ':number_of_beams (number_of_beams msg))
    (cl:cons ':scan_points (scan_points msg))
))

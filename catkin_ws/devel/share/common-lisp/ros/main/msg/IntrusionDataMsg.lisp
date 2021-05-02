; Auto-generated. Do not edit!


(cl:in-package main-msg)


;//! \htmlinclude IntrusionDataMsg.msg.html

(cl:defclass <IntrusionDataMsg> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector main-msg:IntrusionDatumMsg)
   :initform (cl:make-array 0 :element-type 'main-msg:IntrusionDatumMsg :initial-element (cl:make-instance 'main-msg:IntrusionDatumMsg))))
)

(cl:defclass IntrusionDataMsg (<IntrusionDataMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IntrusionDataMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IntrusionDataMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name main-msg:<IntrusionDataMsg> is deprecated: use main-msg:IntrusionDataMsg instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <IntrusionDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main-msg:data-val is deprecated.  Use main-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IntrusionDataMsg>) ostream)
  "Serializes a message object of type '<IntrusionDataMsg>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IntrusionDataMsg>) istream)
  "Deserializes a message object of type '<IntrusionDataMsg>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'main-msg:IntrusionDatumMsg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IntrusionDataMsg>)))
  "Returns string type for a message object of type '<IntrusionDataMsg>"
  "main/IntrusionDataMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IntrusionDataMsg)))
  "Returns string type for a message object of type 'IntrusionDataMsg"
  "main/IntrusionDataMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IntrusionDataMsg>)))
  "Returns md5sum for a message object of type '<IntrusionDataMsg>"
  "2d061bbcb7871abcf1291e1a4e3b234a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IntrusionDataMsg)))
  "Returns md5sum for a message object of type 'IntrusionDataMsg"
  "2d061bbcb7871abcf1291e1a4e3b234a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IntrusionDataMsg>)))
  "Returns full string definition for message of type '<IntrusionDataMsg>"
  (cl:format cl:nil "IntrusionDatumMsg[] data~%~%================================================================================~%MSG: main/IntrusionDatumMsg~%uint32 size~%bool[] flags~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IntrusionDataMsg)))
  "Returns full string definition for message of type 'IntrusionDataMsg"
  (cl:format cl:nil "IntrusionDatumMsg[] data~%~%================================================================================~%MSG: main/IntrusionDatumMsg~%uint32 size~%bool[] flags~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IntrusionDataMsg>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IntrusionDataMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'IntrusionDataMsg
    (cl:cons ':data (data msg))
))

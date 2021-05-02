; Auto-generated. Do not edit!


(cl:in-package main-msg)


;//! \htmlinclude IntrusionDatumMsg.msg.html

(cl:defclass <IntrusionDatumMsg> (roslisp-msg-protocol:ros-message)
  ((size
    :reader size
    :initarg :size
    :type cl:integer
    :initform 0)
   (flags
    :reader flags
    :initarg :flags
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass IntrusionDatumMsg (<IntrusionDatumMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IntrusionDatumMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IntrusionDatumMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name main-msg:<IntrusionDatumMsg> is deprecated: use main-msg:IntrusionDatumMsg instead.")))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <IntrusionDatumMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main-msg:size-val is deprecated.  Use main-msg:size instead.")
  (size m))

(cl:ensure-generic-function 'flags-val :lambda-list '(m))
(cl:defmethod flags-val ((m <IntrusionDatumMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main-msg:flags-val is deprecated.  Use main-msg:flags instead.")
  (flags m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IntrusionDatumMsg>) ostream)
  "Serializes a message object of type '<IntrusionDatumMsg>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'size)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'flags))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'flags))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IntrusionDatumMsg>) istream)
  "Deserializes a message object of type '<IntrusionDatumMsg>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'size)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'flags) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'flags)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IntrusionDatumMsg>)))
  "Returns string type for a message object of type '<IntrusionDatumMsg>"
  "main/IntrusionDatumMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IntrusionDatumMsg)))
  "Returns string type for a message object of type 'IntrusionDatumMsg"
  "main/IntrusionDatumMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IntrusionDatumMsg>)))
  "Returns md5sum for a message object of type '<IntrusionDatumMsg>"
  "2c139fe38426240c2edfc9827f2858f8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IntrusionDatumMsg)))
  "Returns md5sum for a message object of type 'IntrusionDatumMsg"
  "2c139fe38426240c2edfc9827f2858f8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IntrusionDatumMsg>)))
  "Returns full string definition for message of type '<IntrusionDatumMsg>"
  (cl:format cl:nil "uint32 size~%bool[] flags~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IntrusionDatumMsg)))
  "Returns full string definition for message of type 'IntrusionDatumMsg"
  (cl:format cl:nil "uint32 size~%bool[] flags~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IntrusionDatumMsg>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'flags) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IntrusionDatumMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'IntrusionDatumMsg
    (cl:cons ':size (size msg))
    (cl:cons ':flags (flags msg))
))

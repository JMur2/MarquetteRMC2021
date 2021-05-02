; Auto-generated. Do not edit!


(cl:in-package sick_safetyscanners-msg)


;//! \htmlinclude OutputPathsMsg.msg.html

(cl:defclass <OutputPathsMsg> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (is_safe
    :reader is_safe
    :initarg :is_safe
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (is_valid
    :reader is_valid
    :initarg :is_valid
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (active_monitoring_case
    :reader active_monitoring_case
    :initarg :active_monitoring_case
    :type cl:integer
    :initform 0))
)

(cl:defclass OutputPathsMsg (<OutputPathsMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OutputPathsMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OutputPathsMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_safetyscanners-msg:<OutputPathsMsg> is deprecated: use sick_safetyscanners-msg:OutputPathsMsg instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <OutputPathsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:status-val is deprecated.  Use sick_safetyscanners-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'is_safe-val :lambda-list '(m))
(cl:defmethod is_safe-val ((m <OutputPathsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:is_safe-val is deprecated.  Use sick_safetyscanners-msg:is_safe instead.")
  (is_safe m))

(cl:ensure-generic-function 'is_valid-val :lambda-list '(m))
(cl:defmethod is_valid-val ((m <OutputPathsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:is_valid-val is deprecated.  Use sick_safetyscanners-msg:is_valid instead.")
  (is_valid m))

(cl:ensure-generic-function 'active_monitoring_case-val :lambda-list '(m))
(cl:defmethod active_monitoring_case-val ((m <OutputPathsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:active_monitoring_case-val is deprecated.  Use sick_safetyscanners-msg:active_monitoring_case instead.")
  (active_monitoring_case m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OutputPathsMsg>) ostream)
  "Serializes a message object of type '<OutputPathsMsg>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'status))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'is_safe))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'is_safe))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'is_valid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'is_valid))
  (cl:let* ((signed (cl:slot-value msg 'active_monitoring_case)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OutputPathsMsg>) istream)
  "Deserializes a message object of type '<OutputPathsMsg>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'status) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'status)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'is_safe) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'is_safe)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'is_valid) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'is_valid)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'active_monitoring_case) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OutputPathsMsg>)))
  "Returns string type for a message object of type '<OutputPathsMsg>"
  "sick_safetyscanners/OutputPathsMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OutputPathsMsg)))
  "Returns string type for a message object of type 'OutputPathsMsg"
  "sick_safetyscanners/OutputPathsMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OutputPathsMsg>)))
  "Returns md5sum for a message object of type '<OutputPathsMsg>"
  "10ce675a2a87077eb6fb8c168c348972")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OutputPathsMsg)))
  "Returns md5sum for a message object of type 'OutputPathsMsg"
  "10ce675a2a87077eb6fb8c168c348972")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OutputPathsMsg>)))
  "Returns full string definition for message of type '<OutputPathsMsg>"
  (cl:format cl:nil "bool[] status~%bool[] is_safe~%bool[] is_valid~%int32 active_monitoring_case~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OutputPathsMsg)))
  "Returns full string definition for message of type 'OutputPathsMsg"
  (cl:format cl:nil "bool[] status~%bool[] is_safe~%bool[] is_valid~%int32 active_monitoring_case~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OutputPathsMsg>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'status) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'is_safe) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'is_valid) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OutputPathsMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'OutputPathsMsg
    (cl:cons ':status (status msg))
    (cl:cons ':is_safe (is_safe msg))
    (cl:cons ':is_valid (is_valid msg))
    (cl:cons ':active_monitoring_case (active_monitoring_case msg))
))

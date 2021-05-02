; Auto-generated. Do not edit!


(cl:in-package sick_safetyscanners-msg)


;//! \htmlinclude MonitoringCaseMsg.msg.html

(cl:defclass <MonitoringCaseMsg> (roslisp-msg-protocol:ros-message)
  ((monitoring_case_number
    :reader monitoring_case_number
    :initarg :monitoring_case_number
    :type cl:integer
    :initform 0)
   (fields
    :reader fields
    :initarg :fields
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (fields_valid
    :reader fields_valid
    :initarg :fields_valid
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass MonitoringCaseMsg (<MonitoringCaseMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MonitoringCaseMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MonitoringCaseMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_safetyscanners-msg:<MonitoringCaseMsg> is deprecated: use sick_safetyscanners-msg:MonitoringCaseMsg instead.")))

(cl:ensure-generic-function 'monitoring_case_number-val :lambda-list '(m))
(cl:defmethod monitoring_case_number-val ((m <MonitoringCaseMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:monitoring_case_number-val is deprecated.  Use sick_safetyscanners-msg:monitoring_case_number instead.")
  (monitoring_case_number m))

(cl:ensure-generic-function 'fields-val :lambda-list '(m))
(cl:defmethod fields-val ((m <MonitoringCaseMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:fields-val is deprecated.  Use sick_safetyscanners-msg:fields instead.")
  (fields m))

(cl:ensure-generic-function 'fields_valid-val :lambda-list '(m))
(cl:defmethod fields_valid-val ((m <MonitoringCaseMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:fields_valid-val is deprecated.  Use sick_safetyscanners-msg:fields_valid instead.")
  (fields_valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MonitoringCaseMsg>) ostream)
  "Serializes a message object of type '<MonitoringCaseMsg>"
  (cl:let* ((signed (cl:slot-value msg 'monitoring_case_number)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'fields))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'fields))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'fields_valid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'fields_valid))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MonitoringCaseMsg>) istream)
  "Deserializes a message object of type '<MonitoringCaseMsg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'monitoring_case_number) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'fields) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'fields)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'fields_valid) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'fields_valid)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MonitoringCaseMsg>)))
  "Returns string type for a message object of type '<MonitoringCaseMsg>"
  "sick_safetyscanners/MonitoringCaseMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MonitoringCaseMsg)))
  "Returns string type for a message object of type 'MonitoringCaseMsg"
  "sick_safetyscanners/MonitoringCaseMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MonitoringCaseMsg>)))
  "Returns md5sum for a message object of type '<MonitoringCaseMsg>"
  "df965c1c062890e5bdd7ee897e4f2d65")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MonitoringCaseMsg)))
  "Returns md5sum for a message object of type 'MonitoringCaseMsg"
  "df965c1c062890e5bdd7ee897e4f2d65")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MonitoringCaseMsg>)))
  "Returns full string definition for message of type '<MonitoringCaseMsg>"
  (cl:format cl:nil "int32 monitoring_case_number~%int32[] fields~%bool[] fields_valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MonitoringCaseMsg)))
  "Returns full string definition for message of type 'MonitoringCaseMsg"
  (cl:format cl:nil "int32 monitoring_case_number~%int32[] fields~%bool[] fields_valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MonitoringCaseMsg>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'fields) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'fields_valid) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MonitoringCaseMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'MonitoringCaseMsg
    (cl:cons ':monitoring_case_number (monitoring_case_number msg))
    (cl:cons ':fields (fields msg))
    (cl:cons ':fields_valid (fields_valid msg))
))

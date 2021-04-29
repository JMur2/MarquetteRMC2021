; Auto-generated. Do not edit!


(cl:in-package main-srv)


;//! \htmlinclude FieldData-request.msg.html

(cl:defclass <FieldData-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass FieldData-request (<FieldData-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FieldData-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FieldData-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name main-srv:<FieldData-request> is deprecated: use main-srv:FieldData-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FieldData-request>) ostream)
  "Serializes a message object of type '<FieldData-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FieldData-request>) istream)
  "Deserializes a message object of type '<FieldData-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FieldData-request>)))
  "Returns string type for a service object of type '<FieldData-request>"
  "main/FieldDataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FieldData-request)))
  "Returns string type for a service object of type 'FieldData-request"
  "main/FieldDataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FieldData-request>)))
  "Returns md5sum for a message object of type '<FieldData-request>"
  "649f88740cfa9dc91cefbf73ed47045b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FieldData-request)))
  "Returns md5sum for a message object of type 'FieldData-request"
  "649f88740cfa9dc91cefbf73ed47045b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FieldData-request>)))
  "Returns full string definition for message of type '<FieldData-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FieldData-request)))
  "Returns full string definition for message of type 'FieldData-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FieldData-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FieldData-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FieldData-request
))
;//! \htmlinclude FieldData-response.msg.html

(cl:defclass <FieldData-response> (roslisp-msg-protocol:ros-message)
  ((fields
    :reader fields
    :initarg :fields
    :type (cl:vector main-msg:FieldMsg)
   :initform (cl:make-array 0 :element-type 'main-msg:FieldMsg :initial-element (cl:make-instance 'main-msg:FieldMsg)))
   (device_name
    :reader device_name
    :initarg :device_name
    :type cl:string
    :initform "")
   (monitoring_cases
    :reader monitoring_cases
    :initarg :monitoring_cases
    :type (cl:vector main-msg:MonitoringCaseMsg)
   :initform (cl:make-array 0 :element-type 'main-msg:MonitoringCaseMsg :initial-element (cl:make-instance 'main-msg:MonitoringCaseMsg))))
)

(cl:defclass FieldData-response (<FieldData-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FieldData-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FieldData-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name main-srv:<FieldData-response> is deprecated: use main-srv:FieldData-response instead.")))

(cl:ensure-generic-function 'fields-val :lambda-list '(m))
(cl:defmethod fields-val ((m <FieldData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main-srv:fields-val is deprecated.  Use main-srv:fields instead.")
  (fields m))

(cl:ensure-generic-function 'device_name-val :lambda-list '(m))
(cl:defmethod device_name-val ((m <FieldData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main-srv:device_name-val is deprecated.  Use main-srv:device_name instead.")
  (device_name m))

(cl:ensure-generic-function 'monitoring_cases-val :lambda-list '(m))
(cl:defmethod monitoring_cases-val ((m <FieldData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main-srv:monitoring_cases-val is deprecated.  Use main-srv:monitoring_cases instead.")
  (monitoring_cases m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FieldData-response>) ostream)
  "Serializes a message object of type '<FieldData-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'fields))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'fields))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'device_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'device_name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'monitoring_cases))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'monitoring_cases))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FieldData-response>) istream)
  "Deserializes a message object of type '<FieldData-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'fields) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'fields)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'main-msg:FieldMsg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'device_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'device_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'monitoring_cases) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'monitoring_cases)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'main-msg:MonitoringCaseMsg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FieldData-response>)))
  "Returns string type for a service object of type '<FieldData-response>"
  "main/FieldDataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FieldData-response)))
  "Returns string type for a service object of type 'FieldData-response"
  "main/FieldDataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FieldData-response>)))
  "Returns md5sum for a message object of type '<FieldData-response>"
  "649f88740cfa9dc91cefbf73ed47045b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FieldData-response)))
  "Returns md5sum for a message object of type 'FieldData-response"
  "649f88740cfa9dc91cefbf73ed47045b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FieldData-response>)))
  "Returns full string definition for message of type '<FieldData-response>"
  (cl:format cl:nil "~%main/FieldMsg[] fields~%string device_name~%main/MonitoringCaseMsg[] monitoring_cases~%~%~%================================================================================~%MSG: main/FieldMsg~%float32[] ranges~%float32 start_angle~%float32 angular_resolution~%bool protective_field~%~%================================================================================~%MSG: main/MonitoringCaseMsg~%int32 monitoring_case_number~%int32[] fields~%bool[] fields_valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FieldData-response)))
  "Returns full string definition for message of type 'FieldData-response"
  (cl:format cl:nil "~%main/FieldMsg[] fields~%string device_name~%main/MonitoringCaseMsg[] monitoring_cases~%~%~%================================================================================~%MSG: main/FieldMsg~%float32[] ranges~%float32 start_angle~%float32 angular_resolution~%bool protective_field~%~%================================================================================~%MSG: main/MonitoringCaseMsg~%int32 monitoring_case_number~%int32[] fields~%bool[] fields_valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FieldData-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'fields) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'device_name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'monitoring_cases) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FieldData-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FieldData-response
    (cl:cons ':fields (fields msg))
    (cl:cons ':device_name (device_name msg))
    (cl:cons ':monitoring_cases (monitoring_cases msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FieldData)))
  'FieldData-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FieldData)))
  'FieldData-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FieldData)))
  "Returns string type for a service object of type '<FieldData>"
  "main/FieldData")
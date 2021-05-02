; Auto-generated. Do not edit!


(cl:in-package sick_safetyscanners-msg)


;//! \htmlinclude FieldMsg.msg.html

(cl:defclass <FieldMsg> (roslisp-msg-protocol:ros-message)
  ((ranges
    :reader ranges
    :initarg :ranges
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (start_angle
    :reader start_angle
    :initarg :start_angle
    :type cl:float
    :initform 0.0)
   (angular_resolution
    :reader angular_resolution
    :initarg :angular_resolution
    :type cl:float
    :initform 0.0)
   (protective_field
    :reader protective_field
    :initarg :protective_field
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass FieldMsg (<FieldMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FieldMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FieldMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_safetyscanners-msg:<FieldMsg> is deprecated: use sick_safetyscanners-msg:FieldMsg instead.")))

(cl:ensure-generic-function 'ranges-val :lambda-list '(m))
(cl:defmethod ranges-val ((m <FieldMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:ranges-val is deprecated.  Use sick_safetyscanners-msg:ranges instead.")
  (ranges m))

(cl:ensure-generic-function 'start_angle-val :lambda-list '(m))
(cl:defmethod start_angle-val ((m <FieldMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:start_angle-val is deprecated.  Use sick_safetyscanners-msg:start_angle instead.")
  (start_angle m))

(cl:ensure-generic-function 'angular_resolution-val :lambda-list '(m))
(cl:defmethod angular_resolution-val ((m <FieldMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:angular_resolution-val is deprecated.  Use sick_safetyscanners-msg:angular_resolution instead.")
  (angular_resolution m))

(cl:ensure-generic-function 'protective_field-val :lambda-list '(m))
(cl:defmethod protective_field-val ((m <FieldMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:protective_field-val is deprecated.  Use sick_safetyscanners-msg:protective_field instead.")
  (protective_field m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FieldMsg>) ostream)
  "Serializes a message object of type '<FieldMsg>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ranges))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'ranges))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'start_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angular_resolution))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'protective_field) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FieldMsg>) istream)
  "Deserializes a message object of type '<FieldMsg>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ranges) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ranges)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'start_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_resolution) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'protective_field) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FieldMsg>)))
  "Returns string type for a message object of type '<FieldMsg>"
  "sick_safetyscanners/FieldMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FieldMsg)))
  "Returns string type for a message object of type 'FieldMsg"
  "sick_safetyscanners/FieldMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FieldMsg>)))
  "Returns md5sum for a message object of type '<FieldMsg>"
  "d92cc93fdff8827129e1f6fd20b75f7e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FieldMsg)))
  "Returns md5sum for a message object of type 'FieldMsg"
  "d92cc93fdff8827129e1f6fd20b75f7e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FieldMsg>)))
  "Returns full string definition for message of type '<FieldMsg>"
  (cl:format cl:nil "float32[] ranges~%float32 start_angle~%float32 angular_resolution~%bool protective_field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FieldMsg)))
  "Returns full string definition for message of type 'FieldMsg"
  (cl:format cl:nil "float32[] ranges~%float32 start_angle~%float32 angular_resolution~%bool protective_field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FieldMsg>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ranges) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FieldMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'FieldMsg
    (cl:cons ':ranges (ranges msg))
    (cl:cons ':start_angle (start_angle msg))
    (cl:cons ':angular_resolution (angular_resolution msg))
    (cl:cons ':protective_field (protective_field msg))
))

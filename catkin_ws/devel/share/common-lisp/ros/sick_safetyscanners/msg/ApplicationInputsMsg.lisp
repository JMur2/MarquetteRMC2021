; Auto-generated. Do not edit!


(cl:in-package sick_safetyscanners-msg)


;//! \htmlinclude ApplicationInputsMsg.msg.html

(cl:defclass <ApplicationInputsMsg> (roslisp-msg-protocol:ros-message)
  ((unsafe_inputs_input_sources
    :reader unsafe_inputs_input_sources
    :initarg :unsafe_inputs_input_sources
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (unsafe_inputs_flags
    :reader unsafe_inputs_flags
    :initarg :unsafe_inputs_flags
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (monitoring_case_number_inputs
    :reader monitoring_case_number_inputs
    :initarg :monitoring_case_number_inputs
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (monitoring_case_number_inputs_flags
    :reader monitoring_case_number_inputs_flags
    :initarg :monitoring_case_number_inputs_flags
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (linear_velocity_inputs_velocity_0
    :reader linear_velocity_inputs_velocity_0
    :initarg :linear_velocity_inputs_velocity_0
    :type cl:fixnum
    :initform 0)
   (linear_velocity_inputs_velocity_0_valid
    :reader linear_velocity_inputs_velocity_0_valid
    :initarg :linear_velocity_inputs_velocity_0_valid
    :type cl:boolean
    :initform cl:nil)
   (linear_velocity_inputs_velocity_0_transmitted_safely
    :reader linear_velocity_inputs_velocity_0_transmitted_safely
    :initarg :linear_velocity_inputs_velocity_0_transmitted_safely
    :type cl:boolean
    :initform cl:nil)
   (linear_velocity_inputs_velocity_1
    :reader linear_velocity_inputs_velocity_1
    :initarg :linear_velocity_inputs_velocity_1
    :type cl:fixnum
    :initform 0)
   (linear_velocity_inputs_velocity_1_valid
    :reader linear_velocity_inputs_velocity_1_valid
    :initarg :linear_velocity_inputs_velocity_1_valid
    :type cl:boolean
    :initform cl:nil)
   (linear_velocity_inputs_velocity_1_transmitted_safely
    :reader linear_velocity_inputs_velocity_1_transmitted_safely
    :initarg :linear_velocity_inputs_velocity_1_transmitted_safely
    :type cl:boolean
    :initform cl:nil)
   (sleep_mode_input
    :reader sleep_mode_input
    :initarg :sleep_mode_input
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ApplicationInputsMsg (<ApplicationInputsMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ApplicationInputsMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ApplicationInputsMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_safetyscanners-msg:<ApplicationInputsMsg> is deprecated: use sick_safetyscanners-msg:ApplicationInputsMsg instead.")))

(cl:ensure-generic-function 'unsafe_inputs_input_sources-val :lambda-list '(m))
(cl:defmethod unsafe_inputs_input_sources-val ((m <ApplicationInputsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:unsafe_inputs_input_sources-val is deprecated.  Use sick_safetyscanners-msg:unsafe_inputs_input_sources instead.")
  (unsafe_inputs_input_sources m))

(cl:ensure-generic-function 'unsafe_inputs_flags-val :lambda-list '(m))
(cl:defmethod unsafe_inputs_flags-val ((m <ApplicationInputsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:unsafe_inputs_flags-val is deprecated.  Use sick_safetyscanners-msg:unsafe_inputs_flags instead.")
  (unsafe_inputs_flags m))

(cl:ensure-generic-function 'monitoring_case_number_inputs-val :lambda-list '(m))
(cl:defmethod monitoring_case_number_inputs-val ((m <ApplicationInputsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:monitoring_case_number_inputs-val is deprecated.  Use sick_safetyscanners-msg:monitoring_case_number_inputs instead.")
  (monitoring_case_number_inputs m))

(cl:ensure-generic-function 'monitoring_case_number_inputs_flags-val :lambda-list '(m))
(cl:defmethod monitoring_case_number_inputs_flags-val ((m <ApplicationInputsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:monitoring_case_number_inputs_flags-val is deprecated.  Use sick_safetyscanners-msg:monitoring_case_number_inputs_flags instead.")
  (monitoring_case_number_inputs_flags m))

(cl:ensure-generic-function 'linear_velocity_inputs_velocity_0-val :lambda-list '(m))
(cl:defmethod linear_velocity_inputs_velocity_0-val ((m <ApplicationInputsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:linear_velocity_inputs_velocity_0-val is deprecated.  Use sick_safetyscanners-msg:linear_velocity_inputs_velocity_0 instead.")
  (linear_velocity_inputs_velocity_0 m))

(cl:ensure-generic-function 'linear_velocity_inputs_velocity_0_valid-val :lambda-list '(m))
(cl:defmethod linear_velocity_inputs_velocity_0_valid-val ((m <ApplicationInputsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:linear_velocity_inputs_velocity_0_valid-val is deprecated.  Use sick_safetyscanners-msg:linear_velocity_inputs_velocity_0_valid instead.")
  (linear_velocity_inputs_velocity_0_valid m))

(cl:ensure-generic-function 'linear_velocity_inputs_velocity_0_transmitted_safely-val :lambda-list '(m))
(cl:defmethod linear_velocity_inputs_velocity_0_transmitted_safely-val ((m <ApplicationInputsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:linear_velocity_inputs_velocity_0_transmitted_safely-val is deprecated.  Use sick_safetyscanners-msg:linear_velocity_inputs_velocity_0_transmitted_safely instead.")
  (linear_velocity_inputs_velocity_0_transmitted_safely m))

(cl:ensure-generic-function 'linear_velocity_inputs_velocity_1-val :lambda-list '(m))
(cl:defmethod linear_velocity_inputs_velocity_1-val ((m <ApplicationInputsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:linear_velocity_inputs_velocity_1-val is deprecated.  Use sick_safetyscanners-msg:linear_velocity_inputs_velocity_1 instead.")
  (linear_velocity_inputs_velocity_1 m))

(cl:ensure-generic-function 'linear_velocity_inputs_velocity_1_valid-val :lambda-list '(m))
(cl:defmethod linear_velocity_inputs_velocity_1_valid-val ((m <ApplicationInputsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:linear_velocity_inputs_velocity_1_valid-val is deprecated.  Use sick_safetyscanners-msg:linear_velocity_inputs_velocity_1_valid instead.")
  (linear_velocity_inputs_velocity_1_valid m))

(cl:ensure-generic-function 'linear_velocity_inputs_velocity_1_transmitted_safely-val :lambda-list '(m))
(cl:defmethod linear_velocity_inputs_velocity_1_transmitted_safely-val ((m <ApplicationInputsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:linear_velocity_inputs_velocity_1_transmitted_safely-val is deprecated.  Use sick_safetyscanners-msg:linear_velocity_inputs_velocity_1_transmitted_safely instead.")
  (linear_velocity_inputs_velocity_1_transmitted_safely m))

(cl:ensure-generic-function 'sleep_mode_input-val :lambda-list '(m))
(cl:defmethod sleep_mode_input-val ((m <ApplicationInputsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:sleep_mode_input-val is deprecated.  Use sick_safetyscanners-msg:sleep_mode_input instead.")
  (sleep_mode_input m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ApplicationInputsMsg>) ostream)
  "Serializes a message object of type '<ApplicationInputsMsg>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'unsafe_inputs_input_sources))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'unsafe_inputs_input_sources))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'unsafe_inputs_flags))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'unsafe_inputs_flags))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'monitoring_case_number_inputs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'monitoring_case_number_inputs))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'monitoring_case_number_inputs_flags))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'monitoring_case_number_inputs_flags))
  (cl:let* ((signed (cl:slot-value msg 'linear_velocity_inputs_velocity_0)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'linear_velocity_inputs_velocity_0_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'linear_velocity_inputs_velocity_0_transmitted_safely) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'linear_velocity_inputs_velocity_1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'linear_velocity_inputs_velocity_1_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'linear_velocity_inputs_velocity_1_transmitted_safely) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sleep_mode_input)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ApplicationInputsMsg>) istream)
  "Deserializes a message object of type '<ApplicationInputsMsg>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'unsafe_inputs_input_sources) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'unsafe_inputs_input_sources)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'unsafe_inputs_flags) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'unsafe_inputs_flags)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'monitoring_case_number_inputs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'monitoring_case_number_inputs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'monitoring_case_number_inputs_flags) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'monitoring_case_number_inputs_flags)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'linear_velocity_inputs_velocity_0) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:slot-value msg 'linear_velocity_inputs_velocity_0_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'linear_velocity_inputs_velocity_0_transmitted_safely) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'linear_velocity_inputs_velocity_1) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:slot-value msg 'linear_velocity_inputs_velocity_1_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'linear_velocity_inputs_velocity_1_transmitted_safely) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sleep_mode_input)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ApplicationInputsMsg>)))
  "Returns string type for a message object of type '<ApplicationInputsMsg>"
  "sick_safetyscanners/ApplicationInputsMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ApplicationInputsMsg)))
  "Returns string type for a message object of type 'ApplicationInputsMsg"
  "sick_safetyscanners/ApplicationInputsMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ApplicationInputsMsg>)))
  "Returns md5sum for a message object of type '<ApplicationInputsMsg>"
  "7b0ded75242c9efbfe5da85d5a0cf07c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ApplicationInputsMsg)))
  "Returns md5sum for a message object of type 'ApplicationInputsMsg"
  "7b0ded75242c9efbfe5da85d5a0cf07c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ApplicationInputsMsg>)))
  "Returns full string definition for message of type '<ApplicationInputsMsg>"
  (cl:format cl:nil "bool[] unsafe_inputs_input_sources~%bool[] unsafe_inputs_flags~%~%uint16[] monitoring_case_number_inputs~%bool[] monitoring_case_number_inputs_flags~%~%int16 linear_velocity_inputs_velocity_0~%bool linear_velocity_inputs_velocity_0_valid~%bool linear_velocity_inputs_velocity_0_transmitted_safely~%~%int16 linear_velocity_inputs_velocity_1~%bool linear_velocity_inputs_velocity_1_valid~%bool linear_velocity_inputs_velocity_1_transmitted_safely~%~%uint8 sleep_mode_input~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ApplicationInputsMsg)))
  "Returns full string definition for message of type 'ApplicationInputsMsg"
  (cl:format cl:nil "bool[] unsafe_inputs_input_sources~%bool[] unsafe_inputs_flags~%~%uint16[] monitoring_case_number_inputs~%bool[] monitoring_case_number_inputs_flags~%~%int16 linear_velocity_inputs_velocity_0~%bool linear_velocity_inputs_velocity_0_valid~%bool linear_velocity_inputs_velocity_0_transmitted_safely~%~%int16 linear_velocity_inputs_velocity_1~%bool linear_velocity_inputs_velocity_1_valid~%bool linear_velocity_inputs_velocity_1_transmitted_safely~%~%uint8 sleep_mode_input~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ApplicationInputsMsg>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'unsafe_inputs_input_sources) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'unsafe_inputs_flags) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'monitoring_case_number_inputs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'monitoring_case_number_inputs_flags) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     2
     1
     1
     2
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ApplicationInputsMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'ApplicationInputsMsg
    (cl:cons ':unsafe_inputs_input_sources (unsafe_inputs_input_sources msg))
    (cl:cons ':unsafe_inputs_flags (unsafe_inputs_flags msg))
    (cl:cons ':monitoring_case_number_inputs (monitoring_case_number_inputs msg))
    (cl:cons ':monitoring_case_number_inputs_flags (monitoring_case_number_inputs_flags msg))
    (cl:cons ':linear_velocity_inputs_velocity_0 (linear_velocity_inputs_velocity_0 msg))
    (cl:cons ':linear_velocity_inputs_velocity_0_valid (linear_velocity_inputs_velocity_0_valid msg))
    (cl:cons ':linear_velocity_inputs_velocity_0_transmitted_safely (linear_velocity_inputs_velocity_0_transmitted_safely msg))
    (cl:cons ':linear_velocity_inputs_velocity_1 (linear_velocity_inputs_velocity_1 msg))
    (cl:cons ':linear_velocity_inputs_velocity_1_valid (linear_velocity_inputs_velocity_1_valid msg))
    (cl:cons ':linear_velocity_inputs_velocity_1_transmitted_safely (linear_velocity_inputs_velocity_1_transmitted_safely msg))
    (cl:cons ':sleep_mode_input (sleep_mode_input msg))
))

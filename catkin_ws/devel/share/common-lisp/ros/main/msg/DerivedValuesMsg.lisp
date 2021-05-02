; Auto-generated. Do not edit!


(cl:in-package main-msg)


;//! \htmlinclude DerivedValuesMsg.msg.html

(cl:defclass <DerivedValuesMsg> (roslisp-msg-protocol:ros-message)
  ((multiplication_factor
    :reader multiplication_factor
    :initarg :multiplication_factor
    :type cl:fixnum
    :initform 0)
   (number_of_beams
    :reader number_of_beams
    :initarg :number_of_beams
    :type cl:fixnum
    :initform 0)
   (scan_time
    :reader scan_time
    :initarg :scan_time
    :type cl:fixnum
    :initform 0)
   (start_angle
    :reader start_angle
    :initarg :start_angle
    :type cl:float
    :initform 0.0)
   (angular_beam_resolution
    :reader angular_beam_resolution
    :initarg :angular_beam_resolution
    :type cl:float
    :initform 0.0)
   (interbeam_period
    :reader interbeam_period
    :initarg :interbeam_period
    :type cl:integer
    :initform 0))
)

(cl:defclass DerivedValuesMsg (<DerivedValuesMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DerivedValuesMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DerivedValuesMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name main-msg:<DerivedValuesMsg> is deprecated: use main-msg:DerivedValuesMsg instead.")))

(cl:ensure-generic-function 'multiplication_factor-val :lambda-list '(m))
(cl:defmethod multiplication_factor-val ((m <DerivedValuesMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main-msg:multiplication_factor-val is deprecated.  Use main-msg:multiplication_factor instead.")
  (multiplication_factor m))

(cl:ensure-generic-function 'number_of_beams-val :lambda-list '(m))
(cl:defmethod number_of_beams-val ((m <DerivedValuesMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main-msg:number_of_beams-val is deprecated.  Use main-msg:number_of_beams instead.")
  (number_of_beams m))

(cl:ensure-generic-function 'scan_time-val :lambda-list '(m))
(cl:defmethod scan_time-val ((m <DerivedValuesMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main-msg:scan_time-val is deprecated.  Use main-msg:scan_time instead.")
  (scan_time m))

(cl:ensure-generic-function 'start_angle-val :lambda-list '(m))
(cl:defmethod start_angle-val ((m <DerivedValuesMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main-msg:start_angle-val is deprecated.  Use main-msg:start_angle instead.")
  (start_angle m))

(cl:ensure-generic-function 'angular_beam_resolution-val :lambda-list '(m))
(cl:defmethod angular_beam_resolution-val ((m <DerivedValuesMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main-msg:angular_beam_resolution-val is deprecated.  Use main-msg:angular_beam_resolution instead.")
  (angular_beam_resolution m))

(cl:ensure-generic-function 'interbeam_period-val :lambda-list '(m))
(cl:defmethod interbeam_period-val ((m <DerivedValuesMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main-msg:interbeam_period-val is deprecated.  Use main-msg:interbeam_period instead.")
  (interbeam_period m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DerivedValuesMsg>) ostream)
  "Serializes a message object of type '<DerivedValuesMsg>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'multiplication_factor)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'multiplication_factor)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'number_of_beams)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'number_of_beams)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'scan_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'scan_time)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'start_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angular_beam_resolution))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'interbeam_period)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'interbeam_period)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'interbeam_period)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'interbeam_period)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DerivedValuesMsg>) istream)
  "Deserializes a message object of type '<DerivedValuesMsg>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'multiplication_factor)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'multiplication_factor)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'number_of_beams)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'number_of_beams)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'scan_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'scan_time)) (cl:read-byte istream))
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
    (cl:setf (cl:slot-value msg 'angular_beam_resolution) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'interbeam_period)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'interbeam_period)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'interbeam_period)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'interbeam_period)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DerivedValuesMsg>)))
  "Returns string type for a message object of type '<DerivedValuesMsg>"
  "main/DerivedValuesMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DerivedValuesMsg)))
  "Returns string type for a message object of type 'DerivedValuesMsg"
  "main/DerivedValuesMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DerivedValuesMsg>)))
  "Returns md5sum for a message object of type '<DerivedValuesMsg>"
  "04584ac5d46a750ab91f3b01bac703dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DerivedValuesMsg)))
  "Returns md5sum for a message object of type 'DerivedValuesMsg"
  "04584ac5d46a750ab91f3b01bac703dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DerivedValuesMsg>)))
  "Returns full string definition for message of type '<DerivedValuesMsg>"
  (cl:format cl:nil "uint16 multiplication_factor~%uint16 number_of_beams~%uint16 scan_time~%float32 start_angle~%float32 angular_beam_resolution~%uint32 interbeam_period~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DerivedValuesMsg)))
  "Returns full string definition for message of type 'DerivedValuesMsg"
  (cl:format cl:nil "uint16 multiplication_factor~%uint16 number_of_beams~%uint16 scan_time~%float32 start_angle~%float32 angular_beam_resolution~%uint32 interbeam_period~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DerivedValuesMsg>))
  (cl:+ 0
     2
     2
     2
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DerivedValuesMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'DerivedValuesMsg
    (cl:cons ':multiplication_factor (multiplication_factor msg))
    (cl:cons ':number_of_beams (number_of_beams msg))
    (cl:cons ':scan_time (scan_time msg))
    (cl:cons ':start_angle (start_angle msg))
    (cl:cons ':angular_beam_resolution (angular_beam_resolution msg))
    (cl:cons ':interbeam_period (interbeam_period msg))
))

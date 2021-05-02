; Auto-generated. Do not edit!


(cl:in-package main-msg)


;//! \htmlinclude ScanPointMsg.msg.html

(cl:defclass <ScanPointMsg> (roslisp-msg-protocol:ros-message)
  ((angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:fixnum
    :initform 0)
   (reflectivity
    :reader reflectivity
    :initarg :reflectivity
    :type cl:fixnum
    :initform 0)
   (valid
    :reader valid
    :initarg :valid
    :type cl:boolean
    :initform cl:nil)
   (infinite
    :reader infinite
    :initarg :infinite
    :type cl:boolean
    :initform cl:nil)
   (glare
    :reader glare
    :initarg :glare
    :type cl:boolean
    :initform cl:nil)
   (reflector
    :reader reflector
    :initarg :reflector
    :type cl:boolean
    :initform cl:nil)
   (contamination
    :reader contamination
    :initarg :contamination
    :type cl:boolean
    :initform cl:nil)
   (contamination_warning
    :reader contamination_warning
    :initarg :contamination_warning
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ScanPointMsg (<ScanPointMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ScanPointMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ScanPointMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name main-msg:<ScanPointMsg> is deprecated: use main-msg:ScanPointMsg instead.")))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <ScanPointMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main-msg:angle-val is deprecated.  Use main-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <ScanPointMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main-msg:distance-val is deprecated.  Use main-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'reflectivity-val :lambda-list '(m))
(cl:defmethod reflectivity-val ((m <ScanPointMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main-msg:reflectivity-val is deprecated.  Use main-msg:reflectivity instead.")
  (reflectivity m))

(cl:ensure-generic-function 'valid-val :lambda-list '(m))
(cl:defmethod valid-val ((m <ScanPointMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main-msg:valid-val is deprecated.  Use main-msg:valid instead.")
  (valid m))

(cl:ensure-generic-function 'infinite-val :lambda-list '(m))
(cl:defmethod infinite-val ((m <ScanPointMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main-msg:infinite-val is deprecated.  Use main-msg:infinite instead.")
  (infinite m))

(cl:ensure-generic-function 'glare-val :lambda-list '(m))
(cl:defmethod glare-val ((m <ScanPointMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main-msg:glare-val is deprecated.  Use main-msg:glare instead.")
  (glare m))

(cl:ensure-generic-function 'reflector-val :lambda-list '(m))
(cl:defmethod reflector-val ((m <ScanPointMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main-msg:reflector-val is deprecated.  Use main-msg:reflector instead.")
  (reflector m))

(cl:ensure-generic-function 'contamination-val :lambda-list '(m))
(cl:defmethod contamination-val ((m <ScanPointMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main-msg:contamination-val is deprecated.  Use main-msg:contamination instead.")
  (contamination m))

(cl:ensure-generic-function 'contamination_warning-val :lambda-list '(m))
(cl:defmethod contamination_warning-val ((m <ScanPointMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main-msg:contamination_warning-val is deprecated.  Use main-msg:contamination_warning instead.")
  (contamination_warning m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ScanPointMsg>) ostream)
  "Serializes a message object of type '<ScanPointMsg>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'distance)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'distance)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reflectivity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'infinite) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'glare) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reflector) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'contamination) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'contamination_warning) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ScanPointMsg>) istream)
  "Deserializes a message object of type '<ScanPointMsg>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'distance)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'distance)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reflectivity)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'infinite) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'glare) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'reflector) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'contamination) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'contamination_warning) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ScanPointMsg>)))
  "Returns string type for a message object of type '<ScanPointMsg>"
  "main/ScanPointMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ScanPointMsg)))
  "Returns string type for a message object of type 'ScanPointMsg"
  "main/ScanPointMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ScanPointMsg>)))
  "Returns md5sum for a message object of type '<ScanPointMsg>"
  "a01759b77f0ee80f572c218c25f9954e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ScanPointMsg)))
  "Returns md5sum for a message object of type 'ScanPointMsg"
  "a01759b77f0ee80f572c218c25f9954e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ScanPointMsg>)))
  "Returns full string definition for message of type '<ScanPointMsg>"
  (cl:format cl:nil "float32 angle~%uint16 distance~%uint8 reflectivity~%bool valid~%bool infinite~%bool glare~%bool reflector~%bool contamination~%bool contamination_warning~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ScanPointMsg)))
  "Returns full string definition for message of type 'ScanPointMsg"
  (cl:format cl:nil "float32 angle~%uint16 distance~%uint8 reflectivity~%bool valid~%bool infinite~%bool glare~%bool reflector~%bool contamination~%bool contamination_warning~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ScanPointMsg>))
  (cl:+ 0
     4
     2
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ScanPointMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'ScanPointMsg
    (cl:cons ':angle (angle msg))
    (cl:cons ':distance (distance msg))
    (cl:cons ':reflectivity (reflectivity msg))
    (cl:cons ':valid (valid msg))
    (cl:cons ':infinite (infinite msg))
    (cl:cons ':glare (glare msg))
    (cl:cons ':reflector (reflector msg))
    (cl:cons ':contamination (contamination msg))
    (cl:cons ':contamination_warning (contamination_warning msg))
))

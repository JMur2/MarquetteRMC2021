; Auto-generated. Do not edit!


(cl:in-package sick_safetyscanners-msg)


;//! \htmlinclude DataHeaderMsg.msg.html

(cl:defclass <DataHeaderMsg> (roslisp-msg-protocol:ros-message)
  ((version_version
    :reader version_version
    :initarg :version_version
    :type cl:fixnum
    :initform 0)
   (version_major_version
    :reader version_major_version
    :initarg :version_major_version
    :type cl:fixnum
    :initform 0)
   (version_minor_version
    :reader version_minor_version
    :initarg :version_minor_version
    :type cl:fixnum
    :initform 0)
   (version_release
    :reader version_release
    :initarg :version_release
    :type cl:fixnum
    :initform 0)
   (serial_number_of_device
    :reader serial_number_of_device
    :initarg :serial_number_of_device
    :type cl:integer
    :initform 0)
   (serial_number_of_channel_plug
    :reader serial_number_of_channel_plug
    :initarg :serial_number_of_channel_plug
    :type cl:integer
    :initform 0)
   (channel_number
    :reader channel_number
    :initarg :channel_number
    :type cl:fixnum
    :initform 0)
   (sequence_number
    :reader sequence_number
    :initarg :sequence_number
    :type cl:integer
    :initform 0)
   (scan_number
    :reader scan_number
    :initarg :scan_number
    :type cl:integer
    :initform 0)
   (timestamp_date
    :reader timestamp_date
    :initarg :timestamp_date
    :type cl:fixnum
    :initform 0)
   (timestamp_time
    :reader timestamp_time
    :initarg :timestamp_time
    :type cl:integer
    :initform 0))
)

(cl:defclass DataHeaderMsg (<DataHeaderMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DataHeaderMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DataHeaderMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_safetyscanners-msg:<DataHeaderMsg> is deprecated: use sick_safetyscanners-msg:DataHeaderMsg instead.")))

(cl:ensure-generic-function 'version_version-val :lambda-list '(m))
(cl:defmethod version_version-val ((m <DataHeaderMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:version_version-val is deprecated.  Use sick_safetyscanners-msg:version_version instead.")
  (version_version m))

(cl:ensure-generic-function 'version_major_version-val :lambda-list '(m))
(cl:defmethod version_major_version-val ((m <DataHeaderMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:version_major_version-val is deprecated.  Use sick_safetyscanners-msg:version_major_version instead.")
  (version_major_version m))

(cl:ensure-generic-function 'version_minor_version-val :lambda-list '(m))
(cl:defmethod version_minor_version-val ((m <DataHeaderMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:version_minor_version-val is deprecated.  Use sick_safetyscanners-msg:version_minor_version instead.")
  (version_minor_version m))

(cl:ensure-generic-function 'version_release-val :lambda-list '(m))
(cl:defmethod version_release-val ((m <DataHeaderMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:version_release-val is deprecated.  Use sick_safetyscanners-msg:version_release instead.")
  (version_release m))

(cl:ensure-generic-function 'serial_number_of_device-val :lambda-list '(m))
(cl:defmethod serial_number_of_device-val ((m <DataHeaderMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:serial_number_of_device-val is deprecated.  Use sick_safetyscanners-msg:serial_number_of_device instead.")
  (serial_number_of_device m))

(cl:ensure-generic-function 'serial_number_of_channel_plug-val :lambda-list '(m))
(cl:defmethod serial_number_of_channel_plug-val ((m <DataHeaderMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:serial_number_of_channel_plug-val is deprecated.  Use sick_safetyscanners-msg:serial_number_of_channel_plug instead.")
  (serial_number_of_channel_plug m))

(cl:ensure-generic-function 'channel_number-val :lambda-list '(m))
(cl:defmethod channel_number-val ((m <DataHeaderMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:channel_number-val is deprecated.  Use sick_safetyscanners-msg:channel_number instead.")
  (channel_number m))

(cl:ensure-generic-function 'sequence_number-val :lambda-list '(m))
(cl:defmethod sequence_number-val ((m <DataHeaderMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:sequence_number-val is deprecated.  Use sick_safetyscanners-msg:sequence_number instead.")
  (sequence_number m))

(cl:ensure-generic-function 'scan_number-val :lambda-list '(m))
(cl:defmethod scan_number-val ((m <DataHeaderMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:scan_number-val is deprecated.  Use sick_safetyscanners-msg:scan_number instead.")
  (scan_number m))

(cl:ensure-generic-function 'timestamp_date-val :lambda-list '(m))
(cl:defmethod timestamp_date-val ((m <DataHeaderMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:timestamp_date-val is deprecated.  Use sick_safetyscanners-msg:timestamp_date instead.")
  (timestamp_date m))

(cl:ensure-generic-function 'timestamp_time-val :lambda-list '(m))
(cl:defmethod timestamp_time-val ((m <DataHeaderMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:timestamp_time-val is deprecated.  Use sick_safetyscanners-msg:timestamp_time instead.")
  (timestamp_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DataHeaderMsg>) ostream)
  "Serializes a message object of type '<DataHeaderMsg>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version_version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version_major_version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version_minor_version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version_release)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'serial_number_of_device)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'serial_number_of_device)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'serial_number_of_device)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'serial_number_of_device)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'serial_number_of_channel_plug)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'serial_number_of_channel_plug)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'serial_number_of_channel_plug)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'serial_number_of_channel_plug)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'channel_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sequence_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sequence_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sequence_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sequence_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'scan_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'scan_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'scan_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'scan_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_date)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_date)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_time)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DataHeaderMsg>) istream)
  "Deserializes a message object of type '<DataHeaderMsg>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version_version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version_major_version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version_minor_version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version_release)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'serial_number_of_device)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'serial_number_of_device)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'serial_number_of_device)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'serial_number_of_device)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'serial_number_of_channel_plug)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'serial_number_of_channel_plug)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'serial_number_of_channel_plug)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'serial_number_of_channel_plug)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'channel_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sequence_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sequence_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sequence_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sequence_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'scan_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'scan_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'scan_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'scan_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_date)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_date)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_time)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DataHeaderMsg>)))
  "Returns string type for a message object of type '<DataHeaderMsg>"
  "sick_safetyscanners/DataHeaderMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DataHeaderMsg)))
  "Returns string type for a message object of type 'DataHeaderMsg"
  "sick_safetyscanners/DataHeaderMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DataHeaderMsg>)))
  "Returns md5sum for a message object of type '<DataHeaderMsg>"
  "639f9d3c49bcb2f17e3c86d83f9746c8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DataHeaderMsg)))
  "Returns md5sum for a message object of type 'DataHeaderMsg"
  "639f9d3c49bcb2f17e3c86d83f9746c8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DataHeaderMsg>)))
  "Returns full string definition for message of type '<DataHeaderMsg>"
  (cl:format cl:nil "uint8 version_version~%uint8 version_major_version~%uint8 version_minor_version~%uint8 version_release~%~%uint32 serial_number_of_device~%uint32 serial_number_of_channel_plug~%uint8 channel_number~%~%uint32 sequence_number~%uint32 scan_number~%~%uint16 timestamp_date~%uint32 timestamp_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DataHeaderMsg)))
  "Returns full string definition for message of type 'DataHeaderMsg"
  (cl:format cl:nil "uint8 version_version~%uint8 version_major_version~%uint8 version_minor_version~%uint8 version_release~%~%uint32 serial_number_of_device~%uint32 serial_number_of_channel_plug~%uint8 channel_number~%~%uint32 sequence_number~%uint32 scan_number~%~%uint16 timestamp_date~%uint32 timestamp_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DataHeaderMsg>))
  (cl:+ 0
     1
     1
     1
     1
     4
     4
     1
     4
     4
     2
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DataHeaderMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'DataHeaderMsg
    (cl:cons ':version_version (version_version msg))
    (cl:cons ':version_major_version (version_major_version msg))
    (cl:cons ':version_minor_version (version_minor_version msg))
    (cl:cons ':version_release (version_release msg))
    (cl:cons ':serial_number_of_device (serial_number_of_device msg))
    (cl:cons ':serial_number_of_channel_plug (serial_number_of_channel_plug msg))
    (cl:cons ':channel_number (channel_number msg))
    (cl:cons ':sequence_number (sequence_number msg))
    (cl:cons ':scan_number (scan_number msg))
    (cl:cons ':timestamp_date (timestamp_date msg))
    (cl:cons ':timestamp_time (timestamp_time msg))
))

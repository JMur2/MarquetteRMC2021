; Auto-generated. Do not edit!


(cl:in-package sick_safetyscanners-msg)


;//! \htmlinclude GeneralSystemStateMsg.msg.html

(cl:defclass <GeneralSystemStateMsg> (roslisp-msg-protocol:ros-message)
  ((run_mode_active
    :reader run_mode_active
    :initarg :run_mode_active
    :type cl:boolean
    :initform cl:nil)
   (standby_mode_active
    :reader standby_mode_active
    :initarg :standby_mode_active
    :type cl:boolean
    :initform cl:nil)
   (contamination_warning
    :reader contamination_warning
    :initarg :contamination_warning
    :type cl:boolean
    :initform cl:nil)
   (contamination_error
    :reader contamination_error
    :initarg :contamination_error
    :type cl:boolean
    :initform cl:nil)
   (reference_contour_status
    :reader reference_contour_status
    :initarg :reference_contour_status
    :type cl:boolean
    :initform cl:nil)
   (manipulation_status
    :reader manipulation_status
    :initarg :manipulation_status
    :type cl:boolean
    :initform cl:nil)
   (safe_cut_off_path
    :reader safe_cut_off_path
    :initarg :safe_cut_off_path
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (non_safe_cut_off_path
    :reader non_safe_cut_off_path
    :initarg :non_safe_cut_off_path
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (reset_required_cut_off_path
    :reader reset_required_cut_off_path
    :initarg :reset_required_cut_off_path
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (current_monitoring_case_no_table_1
    :reader current_monitoring_case_no_table_1
    :initarg :current_monitoring_case_no_table_1
    :type cl:fixnum
    :initform 0)
   (current_monitoring_case_no_table_2
    :reader current_monitoring_case_no_table_2
    :initarg :current_monitoring_case_no_table_2
    :type cl:fixnum
    :initform 0)
   (current_monitoring_case_no_table_3
    :reader current_monitoring_case_no_table_3
    :initarg :current_monitoring_case_no_table_3
    :type cl:fixnum
    :initform 0)
   (current_monitoring_case_no_table_4
    :reader current_monitoring_case_no_table_4
    :initarg :current_monitoring_case_no_table_4
    :type cl:fixnum
    :initform 0)
   (application_error
    :reader application_error
    :initarg :application_error
    :type cl:boolean
    :initform cl:nil)
   (device_error
    :reader device_error
    :initarg :device_error
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GeneralSystemStateMsg (<GeneralSystemStateMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GeneralSystemStateMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GeneralSystemStateMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_safetyscanners-msg:<GeneralSystemStateMsg> is deprecated: use sick_safetyscanners-msg:GeneralSystemStateMsg instead.")))

(cl:ensure-generic-function 'run_mode_active-val :lambda-list '(m))
(cl:defmethod run_mode_active-val ((m <GeneralSystemStateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:run_mode_active-val is deprecated.  Use sick_safetyscanners-msg:run_mode_active instead.")
  (run_mode_active m))

(cl:ensure-generic-function 'standby_mode_active-val :lambda-list '(m))
(cl:defmethod standby_mode_active-val ((m <GeneralSystemStateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:standby_mode_active-val is deprecated.  Use sick_safetyscanners-msg:standby_mode_active instead.")
  (standby_mode_active m))

(cl:ensure-generic-function 'contamination_warning-val :lambda-list '(m))
(cl:defmethod contamination_warning-val ((m <GeneralSystemStateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:contamination_warning-val is deprecated.  Use sick_safetyscanners-msg:contamination_warning instead.")
  (contamination_warning m))

(cl:ensure-generic-function 'contamination_error-val :lambda-list '(m))
(cl:defmethod contamination_error-val ((m <GeneralSystemStateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:contamination_error-val is deprecated.  Use sick_safetyscanners-msg:contamination_error instead.")
  (contamination_error m))

(cl:ensure-generic-function 'reference_contour_status-val :lambda-list '(m))
(cl:defmethod reference_contour_status-val ((m <GeneralSystemStateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:reference_contour_status-val is deprecated.  Use sick_safetyscanners-msg:reference_contour_status instead.")
  (reference_contour_status m))

(cl:ensure-generic-function 'manipulation_status-val :lambda-list '(m))
(cl:defmethod manipulation_status-val ((m <GeneralSystemStateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:manipulation_status-val is deprecated.  Use sick_safetyscanners-msg:manipulation_status instead.")
  (manipulation_status m))

(cl:ensure-generic-function 'safe_cut_off_path-val :lambda-list '(m))
(cl:defmethod safe_cut_off_path-val ((m <GeneralSystemStateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:safe_cut_off_path-val is deprecated.  Use sick_safetyscanners-msg:safe_cut_off_path instead.")
  (safe_cut_off_path m))

(cl:ensure-generic-function 'non_safe_cut_off_path-val :lambda-list '(m))
(cl:defmethod non_safe_cut_off_path-val ((m <GeneralSystemStateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:non_safe_cut_off_path-val is deprecated.  Use sick_safetyscanners-msg:non_safe_cut_off_path instead.")
  (non_safe_cut_off_path m))

(cl:ensure-generic-function 'reset_required_cut_off_path-val :lambda-list '(m))
(cl:defmethod reset_required_cut_off_path-val ((m <GeneralSystemStateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:reset_required_cut_off_path-val is deprecated.  Use sick_safetyscanners-msg:reset_required_cut_off_path instead.")
  (reset_required_cut_off_path m))

(cl:ensure-generic-function 'current_monitoring_case_no_table_1-val :lambda-list '(m))
(cl:defmethod current_monitoring_case_no_table_1-val ((m <GeneralSystemStateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:current_monitoring_case_no_table_1-val is deprecated.  Use sick_safetyscanners-msg:current_monitoring_case_no_table_1 instead.")
  (current_monitoring_case_no_table_1 m))

(cl:ensure-generic-function 'current_monitoring_case_no_table_2-val :lambda-list '(m))
(cl:defmethod current_monitoring_case_no_table_2-val ((m <GeneralSystemStateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:current_monitoring_case_no_table_2-val is deprecated.  Use sick_safetyscanners-msg:current_monitoring_case_no_table_2 instead.")
  (current_monitoring_case_no_table_2 m))

(cl:ensure-generic-function 'current_monitoring_case_no_table_3-val :lambda-list '(m))
(cl:defmethod current_monitoring_case_no_table_3-val ((m <GeneralSystemStateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:current_monitoring_case_no_table_3-val is deprecated.  Use sick_safetyscanners-msg:current_monitoring_case_no_table_3 instead.")
  (current_monitoring_case_no_table_3 m))

(cl:ensure-generic-function 'current_monitoring_case_no_table_4-val :lambda-list '(m))
(cl:defmethod current_monitoring_case_no_table_4-val ((m <GeneralSystemStateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:current_monitoring_case_no_table_4-val is deprecated.  Use sick_safetyscanners-msg:current_monitoring_case_no_table_4 instead.")
  (current_monitoring_case_no_table_4 m))

(cl:ensure-generic-function 'application_error-val :lambda-list '(m))
(cl:defmethod application_error-val ((m <GeneralSystemStateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:application_error-val is deprecated.  Use sick_safetyscanners-msg:application_error instead.")
  (application_error m))

(cl:ensure-generic-function 'device_error-val :lambda-list '(m))
(cl:defmethod device_error-val ((m <GeneralSystemStateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:device_error-val is deprecated.  Use sick_safetyscanners-msg:device_error instead.")
  (device_error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GeneralSystemStateMsg>) ostream)
  "Serializes a message object of type '<GeneralSystemStateMsg>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'run_mode_active) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'standby_mode_active) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'contamination_warning) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'contamination_error) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reference_contour_status) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'manipulation_status) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'safe_cut_off_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'safe_cut_off_path))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'non_safe_cut_off_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'non_safe_cut_off_path))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'reset_required_cut_off_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'reset_required_cut_off_path))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_monitoring_case_no_table_1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_monitoring_case_no_table_2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_monitoring_case_no_table_3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_monitoring_case_no_table_4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'application_error) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'device_error) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GeneralSystemStateMsg>) istream)
  "Deserializes a message object of type '<GeneralSystemStateMsg>"
    (cl:setf (cl:slot-value msg 'run_mode_active) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'standby_mode_active) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'contamination_warning) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'contamination_error) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'reference_contour_status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'manipulation_status) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'safe_cut_off_path) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'safe_cut_off_path)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'non_safe_cut_off_path) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'non_safe_cut_off_path)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reset_required_cut_off_path) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'reset_required_cut_off_path)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_monitoring_case_no_table_1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_monitoring_case_no_table_2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_monitoring_case_no_table_3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_monitoring_case_no_table_4)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'application_error) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'device_error) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GeneralSystemStateMsg>)))
  "Returns string type for a message object of type '<GeneralSystemStateMsg>"
  "sick_safetyscanners/GeneralSystemStateMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GeneralSystemStateMsg)))
  "Returns string type for a message object of type 'GeneralSystemStateMsg"
  "sick_safetyscanners/GeneralSystemStateMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GeneralSystemStateMsg>)))
  "Returns md5sum for a message object of type '<GeneralSystemStateMsg>"
  "fda37ee099981af2c442eec5d758ecbd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GeneralSystemStateMsg)))
  "Returns md5sum for a message object of type 'GeneralSystemStateMsg"
  "fda37ee099981af2c442eec5d758ecbd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GeneralSystemStateMsg>)))
  "Returns full string definition for message of type '<GeneralSystemStateMsg>"
  (cl:format cl:nil "bool run_mode_active~%bool standby_mode_active~%bool contamination_warning~%bool contamination_error~%bool reference_contour_status~%bool manipulation_status~%~%bool[] safe_cut_off_path~%bool[] non_safe_cut_off_path~%bool[] reset_required_cut_off_path~%~%uint8 current_monitoring_case_no_table_1~%uint8 current_monitoring_case_no_table_2~%uint8 current_monitoring_case_no_table_3~%uint8 current_monitoring_case_no_table_4~%~%bool application_error~%bool device_error~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GeneralSystemStateMsg)))
  "Returns full string definition for message of type 'GeneralSystemStateMsg"
  (cl:format cl:nil "bool run_mode_active~%bool standby_mode_active~%bool contamination_warning~%bool contamination_error~%bool reference_contour_status~%bool manipulation_status~%~%bool[] safe_cut_off_path~%bool[] non_safe_cut_off_path~%bool[] reset_required_cut_off_path~%~%uint8 current_monitoring_case_no_table_1~%uint8 current_monitoring_case_no_table_2~%uint8 current_monitoring_case_no_table_3~%uint8 current_monitoring_case_no_table_4~%~%bool application_error~%bool device_error~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GeneralSystemStateMsg>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'safe_cut_off_path) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'non_safe_cut_off_path) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'reset_required_cut_off_path) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GeneralSystemStateMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'GeneralSystemStateMsg
    (cl:cons ':run_mode_active (run_mode_active msg))
    (cl:cons ':standby_mode_active (standby_mode_active msg))
    (cl:cons ':contamination_warning (contamination_warning msg))
    (cl:cons ':contamination_error (contamination_error msg))
    (cl:cons ':reference_contour_status (reference_contour_status msg))
    (cl:cons ':manipulation_status (manipulation_status msg))
    (cl:cons ':safe_cut_off_path (safe_cut_off_path msg))
    (cl:cons ':non_safe_cut_off_path (non_safe_cut_off_path msg))
    (cl:cons ':reset_required_cut_off_path (reset_required_cut_off_path msg))
    (cl:cons ':current_monitoring_case_no_table_1 (current_monitoring_case_no_table_1 msg))
    (cl:cons ':current_monitoring_case_no_table_2 (current_monitoring_case_no_table_2 msg))
    (cl:cons ':current_monitoring_case_no_table_3 (current_monitoring_case_no_table_3 msg))
    (cl:cons ':current_monitoring_case_no_table_4 (current_monitoring_case_no_table_4 msg))
    (cl:cons ':application_error (application_error msg))
    (cl:cons ':device_error (device_error msg))
))

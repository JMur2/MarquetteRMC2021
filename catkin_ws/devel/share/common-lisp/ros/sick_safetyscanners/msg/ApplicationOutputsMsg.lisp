; Auto-generated. Do not edit!


(cl:in-package sick_safetyscanners-msg)


;//! \htmlinclude ApplicationOutputsMsg.msg.html

(cl:defclass <ApplicationOutputsMsg> (roslisp-msg-protocol:ros-message)
  ((evaluation_path_outputs_eval_out
    :reader evaluation_path_outputs_eval_out
    :initarg :evaluation_path_outputs_eval_out
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (evaluation_path_outputs_is_safe
    :reader evaluation_path_outputs_is_safe
    :initarg :evaluation_path_outputs_is_safe
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (evaluation_path_outputs_is_valid
    :reader evaluation_path_outputs_is_valid
    :initarg :evaluation_path_outputs_is_valid
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (monitoring_case_number_outputs
    :reader monitoring_case_number_outputs
    :initarg :monitoring_case_number_outputs
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (monitoring_case_number_outputs_flags
    :reader monitoring_case_number_outputs_flags
    :initarg :monitoring_case_number_outputs_flags
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (sleep_mode_output
    :reader sleep_mode_output
    :initarg :sleep_mode_output
    :type cl:fixnum
    :initform 0)
   (sleep_mode_output_valid
    :reader sleep_mode_output_valid
    :initarg :sleep_mode_output_valid
    :type cl:boolean
    :initform cl:nil)
   (error_flag_contamination_warning
    :reader error_flag_contamination_warning
    :initarg :error_flag_contamination_warning
    :type cl:boolean
    :initform cl:nil)
   (error_flag_contamination_error
    :reader error_flag_contamination_error
    :initarg :error_flag_contamination_error
    :type cl:boolean
    :initform cl:nil)
   (error_flag_manipulation_error
    :reader error_flag_manipulation_error
    :initarg :error_flag_manipulation_error
    :type cl:boolean
    :initform cl:nil)
   (error_flag_glare
    :reader error_flag_glare
    :initarg :error_flag_glare
    :type cl:boolean
    :initform cl:nil)
   (error_flag_reference_contour_intruded
    :reader error_flag_reference_contour_intruded
    :initarg :error_flag_reference_contour_intruded
    :type cl:boolean
    :initform cl:nil)
   (error_flag_critical_error
    :reader error_flag_critical_error
    :initarg :error_flag_critical_error
    :type cl:boolean
    :initform cl:nil)
   (error_flags_are_valid
    :reader error_flags_are_valid
    :initarg :error_flags_are_valid
    :type cl:boolean
    :initform cl:nil)
   (linear_velocity_outputs_velocity_0
    :reader linear_velocity_outputs_velocity_0
    :initarg :linear_velocity_outputs_velocity_0
    :type cl:fixnum
    :initform 0)
   (linear_velocity_outputs_velocity_0_valid
    :reader linear_velocity_outputs_velocity_0_valid
    :initarg :linear_velocity_outputs_velocity_0_valid
    :type cl:boolean
    :initform cl:nil)
   (linear_velocity_outputs_velocity_0_transmitted_safely
    :reader linear_velocity_outputs_velocity_0_transmitted_safely
    :initarg :linear_velocity_outputs_velocity_0_transmitted_safely
    :type cl:boolean
    :initform cl:nil)
   (linear_velocity_outputs_velocity_1
    :reader linear_velocity_outputs_velocity_1
    :initarg :linear_velocity_outputs_velocity_1
    :type cl:fixnum
    :initform 0)
   (linear_velocity_outputs_velocity_1_valid
    :reader linear_velocity_outputs_velocity_1_valid
    :initarg :linear_velocity_outputs_velocity_1_valid
    :type cl:boolean
    :initform cl:nil)
   (linear_velocity_outputs_velocity_1_transmitted_safely
    :reader linear_velocity_outputs_velocity_1_transmitted_safely
    :initarg :linear_velocity_outputs_velocity_1_transmitted_safely
    :type cl:boolean
    :initform cl:nil)
   (resulting_velocity
    :reader resulting_velocity
    :initarg :resulting_velocity
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (resulting_velocity_flags
    :reader resulting_velocity_flags
    :initarg :resulting_velocity_flags
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass ApplicationOutputsMsg (<ApplicationOutputsMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ApplicationOutputsMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ApplicationOutputsMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sick_safetyscanners-msg:<ApplicationOutputsMsg> is deprecated: use sick_safetyscanners-msg:ApplicationOutputsMsg instead.")))

(cl:ensure-generic-function 'evaluation_path_outputs_eval_out-val :lambda-list '(m))
(cl:defmethod evaluation_path_outputs_eval_out-val ((m <ApplicationOutputsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:evaluation_path_outputs_eval_out-val is deprecated.  Use sick_safetyscanners-msg:evaluation_path_outputs_eval_out instead.")
  (evaluation_path_outputs_eval_out m))

(cl:ensure-generic-function 'evaluation_path_outputs_is_safe-val :lambda-list '(m))
(cl:defmethod evaluation_path_outputs_is_safe-val ((m <ApplicationOutputsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:evaluation_path_outputs_is_safe-val is deprecated.  Use sick_safetyscanners-msg:evaluation_path_outputs_is_safe instead.")
  (evaluation_path_outputs_is_safe m))

(cl:ensure-generic-function 'evaluation_path_outputs_is_valid-val :lambda-list '(m))
(cl:defmethod evaluation_path_outputs_is_valid-val ((m <ApplicationOutputsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:evaluation_path_outputs_is_valid-val is deprecated.  Use sick_safetyscanners-msg:evaluation_path_outputs_is_valid instead.")
  (evaluation_path_outputs_is_valid m))

(cl:ensure-generic-function 'monitoring_case_number_outputs-val :lambda-list '(m))
(cl:defmethod monitoring_case_number_outputs-val ((m <ApplicationOutputsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:monitoring_case_number_outputs-val is deprecated.  Use sick_safetyscanners-msg:monitoring_case_number_outputs instead.")
  (monitoring_case_number_outputs m))

(cl:ensure-generic-function 'monitoring_case_number_outputs_flags-val :lambda-list '(m))
(cl:defmethod monitoring_case_number_outputs_flags-val ((m <ApplicationOutputsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:monitoring_case_number_outputs_flags-val is deprecated.  Use sick_safetyscanners-msg:monitoring_case_number_outputs_flags instead.")
  (monitoring_case_number_outputs_flags m))

(cl:ensure-generic-function 'sleep_mode_output-val :lambda-list '(m))
(cl:defmethod sleep_mode_output-val ((m <ApplicationOutputsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:sleep_mode_output-val is deprecated.  Use sick_safetyscanners-msg:sleep_mode_output instead.")
  (sleep_mode_output m))

(cl:ensure-generic-function 'sleep_mode_output_valid-val :lambda-list '(m))
(cl:defmethod sleep_mode_output_valid-val ((m <ApplicationOutputsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:sleep_mode_output_valid-val is deprecated.  Use sick_safetyscanners-msg:sleep_mode_output_valid instead.")
  (sleep_mode_output_valid m))

(cl:ensure-generic-function 'error_flag_contamination_warning-val :lambda-list '(m))
(cl:defmethod error_flag_contamination_warning-val ((m <ApplicationOutputsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:error_flag_contamination_warning-val is deprecated.  Use sick_safetyscanners-msg:error_flag_contamination_warning instead.")
  (error_flag_contamination_warning m))

(cl:ensure-generic-function 'error_flag_contamination_error-val :lambda-list '(m))
(cl:defmethod error_flag_contamination_error-val ((m <ApplicationOutputsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:error_flag_contamination_error-val is deprecated.  Use sick_safetyscanners-msg:error_flag_contamination_error instead.")
  (error_flag_contamination_error m))

(cl:ensure-generic-function 'error_flag_manipulation_error-val :lambda-list '(m))
(cl:defmethod error_flag_manipulation_error-val ((m <ApplicationOutputsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:error_flag_manipulation_error-val is deprecated.  Use sick_safetyscanners-msg:error_flag_manipulation_error instead.")
  (error_flag_manipulation_error m))

(cl:ensure-generic-function 'error_flag_glare-val :lambda-list '(m))
(cl:defmethod error_flag_glare-val ((m <ApplicationOutputsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:error_flag_glare-val is deprecated.  Use sick_safetyscanners-msg:error_flag_glare instead.")
  (error_flag_glare m))

(cl:ensure-generic-function 'error_flag_reference_contour_intruded-val :lambda-list '(m))
(cl:defmethod error_flag_reference_contour_intruded-val ((m <ApplicationOutputsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:error_flag_reference_contour_intruded-val is deprecated.  Use sick_safetyscanners-msg:error_flag_reference_contour_intruded instead.")
  (error_flag_reference_contour_intruded m))

(cl:ensure-generic-function 'error_flag_critical_error-val :lambda-list '(m))
(cl:defmethod error_flag_critical_error-val ((m <ApplicationOutputsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:error_flag_critical_error-val is deprecated.  Use sick_safetyscanners-msg:error_flag_critical_error instead.")
  (error_flag_critical_error m))

(cl:ensure-generic-function 'error_flags_are_valid-val :lambda-list '(m))
(cl:defmethod error_flags_are_valid-val ((m <ApplicationOutputsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:error_flags_are_valid-val is deprecated.  Use sick_safetyscanners-msg:error_flags_are_valid instead.")
  (error_flags_are_valid m))

(cl:ensure-generic-function 'linear_velocity_outputs_velocity_0-val :lambda-list '(m))
(cl:defmethod linear_velocity_outputs_velocity_0-val ((m <ApplicationOutputsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:linear_velocity_outputs_velocity_0-val is deprecated.  Use sick_safetyscanners-msg:linear_velocity_outputs_velocity_0 instead.")
  (linear_velocity_outputs_velocity_0 m))

(cl:ensure-generic-function 'linear_velocity_outputs_velocity_0_valid-val :lambda-list '(m))
(cl:defmethod linear_velocity_outputs_velocity_0_valid-val ((m <ApplicationOutputsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:linear_velocity_outputs_velocity_0_valid-val is deprecated.  Use sick_safetyscanners-msg:linear_velocity_outputs_velocity_0_valid instead.")
  (linear_velocity_outputs_velocity_0_valid m))

(cl:ensure-generic-function 'linear_velocity_outputs_velocity_0_transmitted_safely-val :lambda-list '(m))
(cl:defmethod linear_velocity_outputs_velocity_0_transmitted_safely-val ((m <ApplicationOutputsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:linear_velocity_outputs_velocity_0_transmitted_safely-val is deprecated.  Use sick_safetyscanners-msg:linear_velocity_outputs_velocity_0_transmitted_safely instead.")
  (linear_velocity_outputs_velocity_0_transmitted_safely m))

(cl:ensure-generic-function 'linear_velocity_outputs_velocity_1-val :lambda-list '(m))
(cl:defmethod linear_velocity_outputs_velocity_1-val ((m <ApplicationOutputsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:linear_velocity_outputs_velocity_1-val is deprecated.  Use sick_safetyscanners-msg:linear_velocity_outputs_velocity_1 instead.")
  (linear_velocity_outputs_velocity_1 m))

(cl:ensure-generic-function 'linear_velocity_outputs_velocity_1_valid-val :lambda-list '(m))
(cl:defmethod linear_velocity_outputs_velocity_1_valid-val ((m <ApplicationOutputsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:linear_velocity_outputs_velocity_1_valid-val is deprecated.  Use sick_safetyscanners-msg:linear_velocity_outputs_velocity_1_valid instead.")
  (linear_velocity_outputs_velocity_1_valid m))

(cl:ensure-generic-function 'linear_velocity_outputs_velocity_1_transmitted_safely-val :lambda-list '(m))
(cl:defmethod linear_velocity_outputs_velocity_1_transmitted_safely-val ((m <ApplicationOutputsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:linear_velocity_outputs_velocity_1_transmitted_safely-val is deprecated.  Use sick_safetyscanners-msg:linear_velocity_outputs_velocity_1_transmitted_safely instead.")
  (linear_velocity_outputs_velocity_1_transmitted_safely m))

(cl:ensure-generic-function 'resulting_velocity-val :lambda-list '(m))
(cl:defmethod resulting_velocity-val ((m <ApplicationOutputsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:resulting_velocity-val is deprecated.  Use sick_safetyscanners-msg:resulting_velocity instead.")
  (resulting_velocity m))

(cl:ensure-generic-function 'resulting_velocity_flags-val :lambda-list '(m))
(cl:defmethod resulting_velocity_flags-val ((m <ApplicationOutputsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sick_safetyscanners-msg:resulting_velocity_flags-val is deprecated.  Use sick_safetyscanners-msg:resulting_velocity_flags instead.")
  (resulting_velocity_flags m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ApplicationOutputsMsg>) ostream)
  "Serializes a message object of type '<ApplicationOutputsMsg>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'evaluation_path_outputs_eval_out))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'evaluation_path_outputs_eval_out))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'evaluation_path_outputs_is_safe))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'evaluation_path_outputs_is_safe))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'evaluation_path_outputs_is_valid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'evaluation_path_outputs_is_valid))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'monitoring_case_number_outputs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'monitoring_case_number_outputs))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'monitoring_case_number_outputs_flags))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'monitoring_case_number_outputs_flags))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sleep_mode_output)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sleep_mode_output_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'error_flag_contamination_warning) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'error_flag_contamination_error) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'error_flag_manipulation_error) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'error_flag_glare) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'error_flag_reference_contour_intruded) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'error_flag_critical_error) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'error_flags_are_valid) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'linear_velocity_outputs_velocity_0)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'linear_velocity_outputs_velocity_0_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'linear_velocity_outputs_velocity_0_transmitted_safely) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'linear_velocity_outputs_velocity_1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'linear_velocity_outputs_velocity_1_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'linear_velocity_outputs_velocity_1_transmitted_safely) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'resulting_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'resulting_velocity))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'resulting_velocity_flags))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'resulting_velocity_flags))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ApplicationOutputsMsg>) istream)
  "Deserializes a message object of type '<ApplicationOutputsMsg>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'evaluation_path_outputs_eval_out) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'evaluation_path_outputs_eval_out)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'evaluation_path_outputs_is_safe) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'evaluation_path_outputs_is_safe)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'evaluation_path_outputs_is_valid) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'evaluation_path_outputs_is_valid)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'monitoring_case_number_outputs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'monitoring_case_number_outputs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'monitoring_case_number_outputs_flags) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'monitoring_case_number_outputs_flags)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sleep_mode_output)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sleep_mode_output_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'error_flag_contamination_warning) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'error_flag_contamination_error) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'error_flag_manipulation_error) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'error_flag_glare) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'error_flag_reference_contour_intruded) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'error_flag_critical_error) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'error_flags_are_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'linear_velocity_outputs_velocity_0) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:slot-value msg 'linear_velocity_outputs_velocity_0_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'linear_velocity_outputs_velocity_0_transmitted_safely) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'linear_velocity_outputs_velocity_1) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:slot-value msg 'linear_velocity_outputs_velocity_1_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'linear_velocity_outputs_velocity_1_transmitted_safely) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'resulting_velocity) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'resulting_velocity)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'resulting_velocity_flags) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'resulting_velocity_flags)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ApplicationOutputsMsg>)))
  "Returns string type for a message object of type '<ApplicationOutputsMsg>"
  "sick_safetyscanners/ApplicationOutputsMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ApplicationOutputsMsg)))
  "Returns string type for a message object of type 'ApplicationOutputsMsg"
  "sick_safetyscanners/ApplicationOutputsMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ApplicationOutputsMsg>)))
  "Returns md5sum for a message object of type '<ApplicationOutputsMsg>"
  "04afaf34d19dee3d3399e6f11d12df15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ApplicationOutputsMsg)))
  "Returns md5sum for a message object of type 'ApplicationOutputsMsg"
  "04afaf34d19dee3d3399e6f11d12df15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ApplicationOutputsMsg>)))
  "Returns full string definition for message of type '<ApplicationOutputsMsg>"
  (cl:format cl:nil "bool[] evaluation_path_outputs_eval_out~%bool[] evaluation_path_outputs_is_safe~%bool[] evaluation_path_outputs_is_valid~%~%uint16[] monitoring_case_number_outputs ~%bool[] monitoring_case_number_outputs_flags~%~%uint8 sleep_mode_output~%bool sleep_mode_output_valid~%~%bool error_flag_contamination_warning~%bool error_flag_contamination_error~%bool error_flag_manipulation_error~%bool error_flag_glare~%bool error_flag_reference_contour_intruded~%bool error_flag_critical_error~%bool error_flags_are_valid~%~%~%int16 linear_velocity_outputs_velocity_0~%bool linear_velocity_outputs_velocity_0_valid~%bool linear_velocity_outputs_velocity_0_transmitted_safely~%~%int16 linear_velocity_outputs_velocity_1~%bool linear_velocity_outputs_velocity_1_valid~%bool linear_velocity_outputs_velocity_1_transmitted_safely~%~%int16[] resulting_velocity~%bool[] resulting_velocity_flags~%~% ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ApplicationOutputsMsg)))
  "Returns full string definition for message of type 'ApplicationOutputsMsg"
  (cl:format cl:nil "bool[] evaluation_path_outputs_eval_out~%bool[] evaluation_path_outputs_is_safe~%bool[] evaluation_path_outputs_is_valid~%~%uint16[] monitoring_case_number_outputs ~%bool[] monitoring_case_number_outputs_flags~%~%uint8 sleep_mode_output~%bool sleep_mode_output_valid~%~%bool error_flag_contamination_warning~%bool error_flag_contamination_error~%bool error_flag_manipulation_error~%bool error_flag_glare~%bool error_flag_reference_contour_intruded~%bool error_flag_critical_error~%bool error_flags_are_valid~%~%~%int16 linear_velocity_outputs_velocity_0~%bool linear_velocity_outputs_velocity_0_valid~%bool linear_velocity_outputs_velocity_0_transmitted_safely~%~%int16 linear_velocity_outputs_velocity_1~%bool linear_velocity_outputs_velocity_1_valid~%bool linear_velocity_outputs_velocity_1_transmitted_safely~%~%int16[] resulting_velocity~%bool[] resulting_velocity_flags~%~% ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ApplicationOutputsMsg>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'evaluation_path_outputs_eval_out) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'evaluation_path_outputs_is_safe) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'evaluation_path_outputs_is_valid) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'monitoring_case_number_outputs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'monitoring_case_number_outputs_flags) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
     1
     1
     1
     1
     1
     1
     1
     1
     2
     1
     1
     2
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'resulting_velocity) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'resulting_velocity_flags) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ApplicationOutputsMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'ApplicationOutputsMsg
    (cl:cons ':evaluation_path_outputs_eval_out (evaluation_path_outputs_eval_out msg))
    (cl:cons ':evaluation_path_outputs_is_safe (evaluation_path_outputs_is_safe msg))
    (cl:cons ':evaluation_path_outputs_is_valid (evaluation_path_outputs_is_valid msg))
    (cl:cons ':monitoring_case_number_outputs (monitoring_case_number_outputs msg))
    (cl:cons ':monitoring_case_number_outputs_flags (monitoring_case_number_outputs_flags msg))
    (cl:cons ':sleep_mode_output (sleep_mode_output msg))
    (cl:cons ':sleep_mode_output_valid (sleep_mode_output_valid msg))
    (cl:cons ':error_flag_contamination_warning (error_flag_contamination_warning msg))
    (cl:cons ':error_flag_contamination_error (error_flag_contamination_error msg))
    (cl:cons ':error_flag_manipulation_error (error_flag_manipulation_error msg))
    (cl:cons ':error_flag_glare (error_flag_glare msg))
    (cl:cons ':error_flag_reference_contour_intruded (error_flag_reference_contour_intruded msg))
    (cl:cons ':error_flag_critical_error (error_flag_critical_error msg))
    (cl:cons ':error_flags_are_valid (error_flags_are_valid msg))
    (cl:cons ':linear_velocity_outputs_velocity_0 (linear_velocity_outputs_velocity_0 msg))
    (cl:cons ':linear_velocity_outputs_velocity_0_valid (linear_velocity_outputs_velocity_0_valid msg))
    (cl:cons ':linear_velocity_outputs_velocity_0_transmitted_safely (linear_velocity_outputs_velocity_0_transmitted_safely msg))
    (cl:cons ':linear_velocity_outputs_velocity_1 (linear_velocity_outputs_velocity_1 msg))
    (cl:cons ':linear_velocity_outputs_velocity_1_valid (linear_velocity_outputs_velocity_1_valid msg))
    (cl:cons ':linear_velocity_outputs_velocity_1_transmitted_safely (linear_velocity_outputs_velocity_1_transmitted_safely msg))
    (cl:cons ':resulting_velocity (resulting_velocity msg))
    (cl:cons ':resulting_velocity_flags (resulting_velocity_flags msg))
))

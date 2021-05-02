;; Auto-generated. Do not edit!


(when (boundp 'sick_safetyscanners::IntrusionDataMsg)
  (if (not (find-package "SICK_SAFETYSCANNERS"))
    (make-package "SICK_SAFETYSCANNERS"))
  (shadow 'IntrusionDataMsg (find-package "SICK_SAFETYSCANNERS")))
(unless (find-package "SICK_SAFETYSCANNERS::INTRUSIONDATAMSG")
  (make-package "SICK_SAFETYSCANNERS::INTRUSIONDATAMSG"))

(in-package "ROS")
;;//! \htmlinclude IntrusionDataMsg.msg.html


(defclass sick_safetyscanners::IntrusionDataMsg
  :super ros::object
  :slots (_data ))

(defmethod sick_safetyscanners::IntrusionDataMsg
  (:init
   (&key
    ((:data __data) (let (r) (dotimes (i 0) (push (instance sick_safetyscanners::IntrusionDatumMsg :init) r)) r))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; sick_safetyscanners/IntrusionDatumMsg[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sick_safetyscanners/IntrusionDatumMsg[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sick_safetyscanners/IntrusionDatumMsg[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance sick_safetyscanners::IntrusionDatumMsg :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get sick_safetyscanners::IntrusionDataMsg :md5sum-) "2d061bbcb7871abcf1291e1a4e3b234a")
(setf (get sick_safetyscanners::IntrusionDataMsg :datatype-) "sick_safetyscanners/IntrusionDataMsg")
(setf (get sick_safetyscanners::IntrusionDataMsg :definition-)
      "IntrusionDatumMsg[] data

================================================================================
MSG: sick_safetyscanners/IntrusionDatumMsg
uint32 size
bool[] flags

")



(provide :sick_safetyscanners/IntrusionDataMsg "2d061bbcb7871abcf1291e1a4e3b234a")



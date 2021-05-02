;; Auto-generated. Do not edit!


(when (boundp 'main::IntrusionDataMsg)
  (if (not (find-package "MAIN"))
    (make-package "MAIN"))
  (shadow 'IntrusionDataMsg (find-package "MAIN")))
(unless (find-package "MAIN::INTRUSIONDATAMSG")
  (make-package "MAIN::INTRUSIONDATAMSG"))

(in-package "ROS")
;;//! \htmlinclude IntrusionDataMsg.msg.html


(defclass main::IntrusionDataMsg
  :super ros::object
  :slots (_data ))

(defmethod main::IntrusionDataMsg
  (:init
   (&key
    ((:data __data) (let (r) (dotimes (i 0) (push (instance main::IntrusionDatumMsg :init) r)) r))
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
    ;; main/IntrusionDatumMsg[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; main/IntrusionDatumMsg[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; main/IntrusionDatumMsg[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance main::IntrusionDatumMsg :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get main::IntrusionDataMsg :md5sum-) "2d061bbcb7871abcf1291e1a4e3b234a")
(setf (get main::IntrusionDataMsg :datatype-) "main/IntrusionDataMsg")
(setf (get main::IntrusionDataMsg :definition-)
      "IntrusionDatumMsg[] data

================================================================================
MSG: main/IntrusionDatumMsg
uint32 size
bool[] flags

")



(provide :main/IntrusionDataMsg "2d061bbcb7871abcf1291e1a4e3b234a")



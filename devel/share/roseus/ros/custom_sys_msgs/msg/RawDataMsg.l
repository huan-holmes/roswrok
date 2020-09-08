;; Auto-generated. Do not edit!


(when (boundp 'custom_sys_msgs::RawDataMsg)
  (if (not (find-package "CUSTOM_SYS_MSGS"))
    (make-package "CUSTOM_SYS_MSGS"))
  (shadow 'RawDataMsg (find-package "CUSTOM_SYS_MSGS")))
(unless (find-package "CUSTOM_SYS_MSGS::RAWDATAMSG")
  (make-package "CUSTOM_SYS_MSGS::RAWDATAMSG"))

(in-package "ROS")
;;//! \htmlinclude RawDataMsg.msg.html


(defclass custom_sys_msgs::RawDataMsg
  :super ros::object
  :slots (_route _content ))

(defmethod custom_sys_msgs::RawDataMsg
  (:init
   (&key
    ((:route __route) "")
    ((:content __content) "")
    )
   (send-super :init)
   (setq _route (string __route))
   (setq _content (string __content))
   self)
  (:route
   (&optional __route)
   (if __route (setq _route __route)) _route)
  (:content
   (&optional __content)
   (if __content (setq _content __content)) _content)
  (:serialization-length
   ()
   (+
    ;; string _route
    4 (length _route)
    ;; string _content
    4 (length _content)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _route
       (write-long (length _route) s) (princ _route s)
     ;; string _content
       (write-long (length _content) s) (princ _content s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _route
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _route (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _content
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _content (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get custom_sys_msgs::RawDataMsg :md5sum-) "6e2137428c7912f4349736c8aa4817ac")
(setf (get custom_sys_msgs::RawDataMsg :datatype-) "custom_sys_msgs/RawDataMsg")
(setf (get custom_sys_msgs::RawDataMsg :definition-)
      "string route
string content
")



(provide :custom_sys_msgs/RawDataMsg "6e2137428c7912f4349736c8aa4817ac")



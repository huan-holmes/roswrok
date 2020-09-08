;; Auto-generated. Do not edit!


(when (boundp 'custom_sys_msgs::boocax_version)
  (if (not (find-package "CUSTOM_SYS_MSGS"))
    (make-package "CUSTOM_SYS_MSGS"))
  (shadow 'boocax_version (find-package "CUSTOM_SYS_MSGS")))
(unless (find-package "CUSTOM_SYS_MSGS::BOOCAX_VERSION")
  (make-package "CUSTOM_SYS_MSGS::BOOCAX_VERSION"))
(unless (find-package "CUSTOM_SYS_MSGS::BOOCAX_VERSIONREQUEST")
  (make-package "CUSTOM_SYS_MSGS::BOOCAX_VERSIONREQUEST"))
(unless (find-package "CUSTOM_SYS_MSGS::BOOCAX_VERSIONRESPONSE")
  (make-package "CUSTOM_SYS_MSGS::BOOCAX_VERSIONRESPONSE"))

(in-package "ROS")





(defclass custom_sys_msgs::boocax_versionRequest
  :super ros::object
  :slots ())

(defmethod custom_sys_msgs::boocax_versionRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass custom_sys_msgs::boocax_versionResponse
  :super ros::object
  :slots (_version_str ))

(defmethod custom_sys_msgs::boocax_versionResponse
  (:init
   (&key
    ((:version_str __version_str) "")
    )
   (send-super :init)
   (setq _version_str (string __version_str))
   self)
  (:version_str
   (&optional __version_str)
   (if __version_str (setq _version_str __version_str)) _version_str)
  (:serialization-length
   ()
   (+
    ;; string _version_str
    4 (length _version_str)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _version_str
       (write-long (length _version_str) s) (princ _version_str s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _version_str
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _version_str (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass custom_sys_msgs::boocax_version
  :super ros::object
  :slots ())

(setf (get custom_sys_msgs::boocax_version :md5sum-) "4e95cccfdf0b9419ff2f6d45e4903934")
(setf (get custom_sys_msgs::boocax_version :datatype-) "custom_sys_msgs/boocax_version")
(setf (get custom_sys_msgs::boocax_version :request) custom_sys_msgs::boocax_versionRequest)
(setf (get custom_sys_msgs::boocax_version :response) custom_sys_msgs::boocax_versionResponse)

(defmethod custom_sys_msgs::boocax_versionRequest
  (:response () (instance custom_sys_msgs::boocax_versionResponse :init)))

(setf (get custom_sys_msgs::boocax_versionRequest :md5sum-) "4e95cccfdf0b9419ff2f6d45e4903934")
(setf (get custom_sys_msgs::boocax_versionRequest :datatype-) "custom_sys_msgs/boocax_versionRequest")
(setf (get custom_sys_msgs::boocax_versionRequest :definition-)
      "
---
string version_str

")

(setf (get custom_sys_msgs::boocax_versionResponse :md5sum-) "4e95cccfdf0b9419ff2f6d45e4903934")
(setf (get custom_sys_msgs::boocax_versionResponse :datatype-) "custom_sys_msgs/boocax_versionResponse")
(setf (get custom_sys_msgs::boocax_versionResponse :definition-)
      "
---
string version_str

")



(provide :custom_sys_msgs/boocax_version "4e95cccfdf0b9419ff2f6d45e4903934")



;; Auto-generated. Do not edit!


(when (boundp 'custom_sys_msgs::dynamicFootPrint)
  (if (not (find-package "CUSTOM_SYS_MSGS"))
    (make-package "CUSTOM_SYS_MSGS"))
  (shadow 'dynamicFootPrint (find-package "CUSTOM_SYS_MSGS")))
(unless (find-package "CUSTOM_SYS_MSGS::DYNAMICFOOTPRINT")
  (make-package "CUSTOM_SYS_MSGS::DYNAMICFOOTPRINT"))

(in-package "ROS")
;;//! \htmlinclude dynamicFootPrint.msg.html


(defclass custom_sys_msgs::dynamicFootPrint
  :super ros::object
  :slots (_robot_radius _pole_distance _footprint _pole_footprint _pre_robot_radius _body_footprint ))

(defmethod custom_sys_msgs::dynamicFootPrint
  (:init
   (&key
    ((:robot_radius __robot_radius) 0.0)
    ((:pole_distance __pole_distance) 0.0)
    ((:footprint __footprint) "")
    ((:pole_footprint __pole_footprint) "")
    ((:pre_robot_radius __pre_robot_radius) 0.0)
    ((:body_footprint __body_footprint) "")
    )
   (send-super :init)
   (setq _robot_radius (float __robot_radius))
   (setq _pole_distance (float __pole_distance))
   (setq _footprint (string __footprint))
   (setq _pole_footprint (string __pole_footprint))
   (setq _pre_robot_radius (float __pre_robot_radius))
   (setq _body_footprint (string __body_footprint))
   self)
  (:robot_radius
   (&optional __robot_radius)
   (if __robot_radius (setq _robot_radius __robot_radius)) _robot_radius)
  (:pole_distance
   (&optional __pole_distance)
   (if __pole_distance (setq _pole_distance __pole_distance)) _pole_distance)
  (:footprint
   (&optional __footprint)
   (if __footprint (setq _footprint __footprint)) _footprint)
  (:pole_footprint
   (&optional __pole_footprint)
   (if __pole_footprint (setq _pole_footprint __pole_footprint)) _pole_footprint)
  (:pre_robot_radius
   (&optional __pre_robot_radius)
   (if __pre_robot_radius (setq _pre_robot_radius __pre_robot_radius)) _pre_robot_radius)
  (:body_footprint
   (&optional __body_footprint)
   (if __body_footprint (setq _body_footprint __body_footprint)) _body_footprint)
  (:serialization-length
   ()
   (+
    ;; float64 _robot_radius
    8
    ;; float64 _pole_distance
    8
    ;; string _footprint
    4 (length _footprint)
    ;; string _pole_footprint
    4 (length _pole_footprint)
    ;; float64 _pre_robot_radius
    8
    ;; string _body_footprint
    4 (length _body_footprint)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _robot_radius
       (sys::poke _robot_radius (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pole_distance
       (sys::poke _pole_distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _footprint
       (write-long (length _footprint) s) (princ _footprint s)
     ;; string _pole_footprint
       (write-long (length _pole_footprint) s) (princ _pole_footprint s)
     ;; float64 _pre_robot_radius
       (sys::poke _pre_robot_radius (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _body_footprint
       (write-long (length _body_footprint) s) (princ _body_footprint s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _robot_radius
     (setq _robot_radius (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pole_distance
     (setq _pole_distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _footprint
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _footprint (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _pole_footprint
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pole_footprint (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _pre_robot_radius
     (setq _pre_robot_radius (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _body_footprint
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _body_footprint (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get custom_sys_msgs::dynamicFootPrint :md5sum-) "b198cd1c56ad3f0f3cc7882ae559bf05")
(setf (get custom_sys_msgs::dynamicFootPrint :datatype-) "custom_sys_msgs/dynamicFootPrint")
(setf (get custom_sys_msgs::dynamicFootPrint :definition-)
      "float64 robot_radius
float64 pole_distance
string footprint
string pole_footprint
float64 pre_robot_radius
string body_footprint
")



(provide :custom_sys_msgs/dynamicFootPrint "b198cd1c56ad3f0f3cc7882ae559bf05")



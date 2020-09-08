;; Auto-generated. Do not edit!


(when (boundp 'teb_local_planner::agv_status)
  (if (not (find-package "TEB_LOCAL_PLANNER"))
    (make-package "TEB_LOCAL_PLANNER"))
  (shadow 'agv_status (find-package "TEB_LOCAL_PLANNER")))
(unless (find-package "TEB_LOCAL_PLANNER::AGV_STATUS")
  (make-package "TEB_LOCAL_PLANNER::AGV_STATUS"))

(in-package "ROS")
;;//! \htmlinclude agv_status.msg.html


(defclass teb_local_planner::agv_status
  :super ros::object
  :slots (_index _status _action ))

(defmethod teb_local_planner::agv_status
  (:init
   (&key
    ((:index __index) 0)
    ((:status __status) 0)
    ((:action __action) 0)
    )
   (send-super :init)
   (setq _index (round __index))
   (setq _status (round __status))
   (setq _action (round __action))
   self)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:serialization-length
   ()
   (+
    ;; int32 _index
    4
    ;; int32 _status
    4
    ;; int32 _action
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _index
       (write-long _index s)
     ;; int32 _status
       (write-long _status s)
     ;; int32 _action
       (write-long _action s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _index
     (setq _index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _action
     (setq _action (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get teb_local_planner::agv_status :md5sum-) "6c49cdd3739b25fb4bba189eb7af82b5")
(setf (get teb_local_planner::agv_status :datatype-) "teb_local_planner/agv_status")
(setf (get teb_local_planner::agv_status :definition-)
      "int32 index
int32 status
int32 action
")



(provide :teb_local_planner/agv_status "6c49cdd3739b25fb4bba189eb7af82b5")



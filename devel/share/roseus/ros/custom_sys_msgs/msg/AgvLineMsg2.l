;; Auto-generated. Do not edit!


(when (boundp 'custom_sys_msgs::AgvLineMsg2)
  (if (not (find-package "CUSTOM_SYS_MSGS"))
    (make-package "CUSTOM_SYS_MSGS"))
  (shadow 'AgvLineMsg2 (find-package "CUSTOM_SYS_MSGS")))
(unless (find-package "CUSTOM_SYS_MSGS::AGVLINEMSG2")
  (make-package "CUSTOM_SYS_MSGS::AGVLINEMSG2"))

(in-package "ROS")
;;//! \htmlinclude AgvLineMsg2.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass custom_sys_msgs::AgvLineMsg2
  :super ros::object
  :slots (_segment_id _segment_type _attitude _tracking_mode _speed _precision _arrival_time _departure_time _redundancy_time _p_start _p_middle _p_end _start_node_id _end_node_id _crossing ))

(defmethod custom_sys_msgs::AgvLineMsg2
  (:init
   (&key
    ((:segment_id __segment_id) 0)
    ((:segment_type __segment_type) 0)
    ((:attitude __attitude) 0)
    ((:tracking_mode __tracking_mode) 0)
    ((:speed __speed) 0.0)
    ((:precision __precision) 0.0)
    ((:arrival_time __arrival_time) 0.0)
    ((:departure_time __departure_time) 0.0)
    ((:redundancy_time __redundancy_time) 0.0)
    ((:p_start __p_start) (instance geometry_msgs::Pose :init))
    ((:p_middle __p_middle) (instance geometry_msgs::Pose :init))
    ((:p_end __p_end) (instance geometry_msgs::Pose :init))
    ((:start_node_id __start_node_id) 0)
    ((:end_node_id __end_node_id) 0)
    ((:crossing __crossing) nil)
    )
   (send-super :init)
   (setq _segment_id (round __segment_id))
   (setq _segment_type (round __segment_type))
   (setq _attitude (round __attitude))
   (setq _tracking_mode (round __tracking_mode))
   (setq _speed (float __speed))
   (setq _precision (float __precision))
   (setq _arrival_time (float __arrival_time))
   (setq _departure_time (float __departure_time))
   (setq _redundancy_time (float __redundancy_time))
   (setq _p_start __p_start)
   (setq _p_middle __p_middle)
   (setq _p_end __p_end)
   (setq _start_node_id (round __start_node_id))
   (setq _end_node_id (round __end_node_id))
   (setq _crossing __crossing)
   self)
  (:segment_id
   (&optional __segment_id)
   (if __segment_id (setq _segment_id __segment_id)) _segment_id)
  (:segment_type
   (&optional __segment_type)
   (if __segment_type (setq _segment_type __segment_type)) _segment_type)
  (:attitude
   (&optional __attitude)
   (if __attitude (setq _attitude __attitude)) _attitude)
  (:tracking_mode
   (&optional __tracking_mode)
   (if __tracking_mode (setq _tracking_mode __tracking_mode)) _tracking_mode)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:precision
   (&optional __precision)
   (if __precision (setq _precision __precision)) _precision)
  (:arrival_time
   (&optional __arrival_time)
   (if __arrival_time (setq _arrival_time __arrival_time)) _arrival_time)
  (:departure_time
   (&optional __departure_time)
   (if __departure_time (setq _departure_time __departure_time)) _departure_time)
  (:redundancy_time
   (&optional __redundancy_time)
   (if __redundancy_time (setq _redundancy_time __redundancy_time)) _redundancy_time)
  (:p_start
   (&rest __p_start)
   (if (keywordp (car __p_start))
       (send* _p_start __p_start)
     (progn
       (if __p_start (setq _p_start (car __p_start)))
       _p_start)))
  (:p_middle
   (&rest __p_middle)
   (if (keywordp (car __p_middle))
       (send* _p_middle __p_middle)
     (progn
       (if __p_middle (setq _p_middle (car __p_middle)))
       _p_middle)))
  (:p_end
   (&rest __p_end)
   (if (keywordp (car __p_end))
       (send* _p_end __p_end)
     (progn
       (if __p_end (setq _p_end (car __p_end)))
       _p_end)))
  (:start_node_id
   (&optional __start_node_id)
   (if __start_node_id (setq _start_node_id __start_node_id)) _start_node_id)
  (:end_node_id
   (&optional __end_node_id)
   (if __end_node_id (setq _end_node_id __end_node_id)) _end_node_id)
  (:crossing
   (&optional __crossing)
   (if __crossing (setq _crossing __crossing)) _crossing)
  (:serialization-length
   ()
   (+
    ;; int32 _segment_id
    4
    ;; int32 _segment_type
    4
    ;; int32 _attitude
    4
    ;; int32 _tracking_mode
    4
    ;; float64 _speed
    8
    ;; float64 _precision
    8
    ;; float64 _arrival_time
    8
    ;; float64 _departure_time
    8
    ;; float64 _redundancy_time
    8
    ;; geometry_msgs/Pose _p_start
    (send _p_start :serialization-length)
    ;; geometry_msgs/Pose _p_middle
    (send _p_middle :serialization-length)
    ;; geometry_msgs/Pose _p_end
    (send _p_end :serialization-length)
    ;; int32 _start_node_id
    4
    ;; int32 _end_node_id
    4
    ;; bool _crossing
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _segment_id
       (write-long _segment_id s)
     ;; int32 _segment_type
       (write-long _segment_type s)
     ;; int32 _attitude
       (write-long _attitude s)
     ;; int32 _tracking_mode
       (write-long _tracking_mode s)
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _precision
       (sys::poke _precision (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _arrival_time
       (sys::poke _arrival_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _departure_time
       (sys::poke _departure_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _redundancy_time
       (sys::poke _redundancy_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Pose _p_start
       (send _p_start :serialize s)
     ;; geometry_msgs/Pose _p_middle
       (send _p_middle :serialize s)
     ;; geometry_msgs/Pose _p_end
       (send _p_end :serialize s)
     ;; int32 _start_node_id
       (write-long _start_node_id s)
     ;; int32 _end_node_id
       (write-long _end_node_id s)
     ;; bool _crossing
       (if _crossing (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _segment_id
     (setq _segment_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _segment_type
     (setq _segment_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _attitude
     (setq _attitude (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _tracking_mode
     (setq _tracking_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _precision
     (setq _precision (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _arrival_time
     (setq _arrival_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _departure_time
     (setq _departure_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _redundancy_time
     (setq _redundancy_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Pose _p_start
     (send _p_start :deserialize buf ptr-) (incf ptr- (send _p_start :serialization-length))
   ;; geometry_msgs/Pose _p_middle
     (send _p_middle :deserialize buf ptr-) (incf ptr- (send _p_middle :serialization-length))
   ;; geometry_msgs/Pose _p_end
     (send _p_end :deserialize buf ptr-) (incf ptr- (send _p_end :serialization-length))
   ;; int32 _start_node_id
     (setq _start_node_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _end_node_id
     (setq _end_node_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _crossing
     (setq _crossing (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get custom_sys_msgs::AgvLineMsg2 :md5sum-) "2d421422889a341f7cf947ef206bc0e3")
(setf (get custom_sys_msgs::AgvLineMsg2 :datatype-) "custom_sys_msgs/AgvLineMsg2")
(setf (get custom_sys_msgs::AgvLineMsg2 :definition-)
      "int32 segment_id
int32 segment_type
int32 attitude
int32 tracking_mode
float64 speed
float64 precision
float64 arrival_time
float64 departure_time
float64 redundancy_time
geometry_msgs/Pose p_start
geometry_msgs/Pose p_middle
geometry_msgs/Pose p_end
int32 start_node_id
int32 end_node_id
bool crossing

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :custom_sys_msgs/AgvLineMsg2 "2d421422889a341f7cf947ef206bc0e3")



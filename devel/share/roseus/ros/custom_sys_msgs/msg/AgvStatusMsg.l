;; Auto-generated. Do not edit!


(when (boundp 'custom_sys_msgs::AgvStatusMsg)
  (if (not (find-package "CUSTOM_SYS_MSGS"))
    (make-package "CUSTOM_SYS_MSGS"))
  (shadow 'AgvStatusMsg (find-package "CUSTOM_SYS_MSGS")))
(unless (find-package "CUSTOM_SYS_MSGS::AGVSTATUSMSG")
  (make-package "CUSTOM_SYS_MSGS::AGVSTATUSMSG"))

(in-package "ROS")
;;//! \htmlinclude AgvStatusMsg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass custom_sys_msgs::AgvStatusMsg
  :super ros::object
  :slots (_task_id _task_mile _task_progresss _status_code _sub_code _segment_id _dir _segment_mile _node_id _dst_node _pose _vell _node_request _node_occupy _node_release _work_mode _location_status _attitude _check_time ))

(defmethod custom_sys_msgs::AgvStatusMsg
  (:init
   (&key
    ((:task_id __task_id) 0)
    ((:task_mile __task_mile) 0.0)
    ((:task_progresss __task_progresss) 0.0)
    ((:status_code __status_code) 0)
    ((:sub_code __sub_code) 0)
    ((:segment_id __segment_id) 0)
    ((:dir __dir) 0)
    ((:segment_mile __segment_mile) 0.0)
    ((:node_id __node_id) 0)
    ((:dst_node __dst_node) 0)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:vell __vell) (instance geometry_msgs::Twist :init))
    ((:node_request __node_request) (make-array 0 :initial-element 0 :element-type :integer))
    ((:node_occupy __node_occupy) (make-array 0 :initial-element 0 :element-type :integer))
    ((:node_release __node_release) (make-array 0 :initial-element 0 :element-type :integer))
    ((:work_mode __work_mode) 0)
    ((:location_status __location_status) 0)
    ((:attitude __attitude) 0)
    ((:check_time __check_time) 0.0)
    )
   (send-super :init)
   (setq _task_id (round __task_id))
   (setq _task_mile (float __task_mile))
   (setq _task_progresss (float __task_progresss))
   (setq _status_code (round __status_code))
   (setq _sub_code (round __sub_code))
   (setq _segment_id (round __segment_id))
   (setq _dir (round __dir))
   (setq _segment_mile (float __segment_mile))
   (setq _node_id (round __node_id))
   (setq _dst_node (round __dst_node))
   (setq _pose __pose)
   (setq _vell __vell)
   (setq _node_request __node_request)
   (setq _node_occupy __node_occupy)
   (setq _node_release __node_release)
   (setq _work_mode (round __work_mode))
   (setq _location_status (round __location_status))
   (setq _attitude (round __attitude))
   (setq _check_time (float __check_time))
   self)
  (:task_id
   (&optional __task_id)
   (if __task_id (setq _task_id __task_id)) _task_id)
  (:task_mile
   (&optional __task_mile)
   (if __task_mile (setq _task_mile __task_mile)) _task_mile)
  (:task_progresss
   (&optional __task_progresss)
   (if __task_progresss (setq _task_progresss __task_progresss)) _task_progresss)
  (:status_code
   (&optional __status_code)
   (if __status_code (setq _status_code __status_code)) _status_code)
  (:sub_code
   (&optional __sub_code)
   (if __sub_code (setq _sub_code __sub_code)) _sub_code)
  (:segment_id
   (&optional __segment_id)
   (if __segment_id (setq _segment_id __segment_id)) _segment_id)
  (:dir
   (&optional __dir)
   (if __dir (setq _dir __dir)) _dir)
  (:segment_mile
   (&optional __segment_mile)
   (if __segment_mile (setq _segment_mile __segment_mile)) _segment_mile)
  (:node_id
   (&optional __node_id)
   (if __node_id (setq _node_id __node_id)) _node_id)
  (:dst_node
   (&optional __dst_node)
   (if __dst_node (setq _dst_node __dst_node)) _dst_node)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:vell
   (&rest __vell)
   (if (keywordp (car __vell))
       (send* _vell __vell)
     (progn
       (if __vell (setq _vell (car __vell)))
       _vell)))
  (:node_request
   (&optional __node_request)
   (if __node_request (setq _node_request __node_request)) _node_request)
  (:node_occupy
   (&optional __node_occupy)
   (if __node_occupy (setq _node_occupy __node_occupy)) _node_occupy)
  (:node_release
   (&optional __node_release)
   (if __node_release (setq _node_release __node_release)) _node_release)
  (:work_mode
   (&optional __work_mode)
   (if __work_mode (setq _work_mode __work_mode)) _work_mode)
  (:location_status
   (&optional __location_status)
   (if __location_status (setq _location_status __location_status)) _location_status)
  (:attitude
   (&optional __attitude)
   (if __attitude (setq _attitude __attitude)) _attitude)
  (:check_time
   (&optional __check_time)
   (if __check_time (setq _check_time __check_time)) _check_time)
  (:serialization-length
   ()
   (+
    ;; int32 _task_id
    4
    ;; float64 _task_mile
    8
    ;; float64 _task_progresss
    8
    ;; int32 _status_code
    4
    ;; int32 _sub_code
    4
    ;; int32 _segment_id
    4
    ;; int32 _dir
    4
    ;; float64 _segment_mile
    8
    ;; int32 _node_id
    4
    ;; int32 _dst_node
    4
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/Twist _vell
    (send _vell :serialization-length)
    ;; int32[] _node_request
    (* 4    (length _node_request)) 4
    ;; int32[] _node_occupy
    (* 4    (length _node_occupy)) 4
    ;; int32[] _node_release
    (* 4    (length _node_release)) 4
    ;; int32 _work_mode
    4
    ;; int32 _location_status
    4
    ;; int32 _attitude
    4
    ;; float64 _check_time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _task_id
       (write-long _task_id s)
     ;; float64 _task_mile
       (sys::poke _task_mile (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _task_progresss
       (sys::poke _task_progresss (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _status_code
       (write-long _status_code s)
     ;; int32 _sub_code
       (write-long _sub_code s)
     ;; int32 _segment_id
       (write-long _segment_id s)
     ;; int32 _dir
       (write-long _dir s)
     ;; float64 _segment_mile
       (sys::poke _segment_mile (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _node_id
       (write-long _node_id s)
     ;; int32 _dst_node
       (write-long _dst_node s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; geometry_msgs/Twist _vell
       (send _vell :serialize s)
     ;; int32[] _node_request
     (write-long (length _node_request) s)
     (dotimes (i (length _node_request))
       (write-long (elt _node_request i) s)
       )
     ;; int32[] _node_occupy
     (write-long (length _node_occupy) s)
     (dotimes (i (length _node_occupy))
       (write-long (elt _node_occupy i) s)
       )
     ;; int32[] _node_release
     (write-long (length _node_release) s)
     (dotimes (i (length _node_release))
       (write-long (elt _node_release i) s)
       )
     ;; int32 _work_mode
       (write-long _work_mode s)
     ;; int32 _location_status
       (write-long _location_status s)
     ;; int32 _attitude
       (write-long _attitude s)
     ;; float64 _check_time
       (sys::poke _check_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _task_id
     (setq _task_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _task_mile
     (setq _task_mile (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _task_progresss
     (setq _task_progresss (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _status_code
     (setq _status_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _sub_code
     (setq _sub_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _segment_id
     (setq _segment_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _dir
     (setq _dir (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _segment_mile
     (setq _segment_mile (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _node_id
     (setq _node_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _dst_node
     (setq _dst_node (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/Twist _vell
     (send _vell :deserialize buf ptr-) (incf ptr- (send _vell :serialization-length))
   ;; int32[] _node_request
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _node_request (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _node_request i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _node_occupy
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _node_occupy (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _node_occupy i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _node_release
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _node_release (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _node_release i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32 _work_mode
     (setq _work_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _location_status
     (setq _location_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _attitude
     (setq _attitude (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _check_time
     (setq _check_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get custom_sys_msgs::AgvStatusMsg :md5sum-) "f28f5972085ecdebfb0eed879e9e6104")
(setf (get custom_sys_msgs::AgvStatusMsg :datatype-) "custom_sys_msgs/AgvStatusMsg")
(setf (get custom_sys_msgs::AgvStatusMsg :definition-)
      "int32 task_id
float64 task_mile
float64 task_progresss
int32 status_code
int32 sub_code
int32 segment_id 
int32 dir
float64 segment_mile 
int32 node_id
int32 dst_node
geometry_msgs/Pose pose
geometry_msgs/Twist vell
int32[] node_request
int32[] node_occupy
int32[] node_release
int32 work_mode
int32 location_status
int32 attitude
float64 check_time
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

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :custom_sys_msgs/AgvStatusMsg "f28f5972085ecdebfb0eed879e9e6104")



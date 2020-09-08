; Auto-generated. Do not edit!


(cl:in-package custom_sys_msgs-msg)


;//! \htmlinclude TrackTargetAction.msg.html

(cl:defclass <TrackTargetAction> (roslisp-msg-protocol:ros-message)
  ((action_goal
    :reader action_goal
    :initarg :action_goal
    :type custom_sys_msgs-msg:TrackTargetActionGoal
    :initform (cl:make-instance 'custom_sys_msgs-msg:TrackTargetActionGoal))
   (action_result
    :reader action_result
    :initarg :action_result
    :type custom_sys_msgs-msg:TrackTargetActionResult
    :initform (cl:make-instance 'custom_sys_msgs-msg:TrackTargetActionResult))
   (action_feedback
    :reader action_feedback
    :initarg :action_feedback
    :type custom_sys_msgs-msg:TrackTargetActionFeedback
    :initform (cl:make-instance 'custom_sys_msgs-msg:TrackTargetActionFeedback)))
)

(cl:defclass TrackTargetAction (<TrackTargetAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrackTargetAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrackTargetAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_sys_msgs-msg:<TrackTargetAction> is deprecated: use custom_sys_msgs-msg:TrackTargetAction instead.")))

(cl:ensure-generic-function 'action_goal-val :lambda-list '(m))
(cl:defmethod action_goal-val ((m <TrackTargetAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:action_goal-val is deprecated.  Use custom_sys_msgs-msg:action_goal instead.")
  (action_goal m))

(cl:ensure-generic-function 'action_result-val :lambda-list '(m))
(cl:defmethod action_result-val ((m <TrackTargetAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:action_result-val is deprecated.  Use custom_sys_msgs-msg:action_result instead.")
  (action_result m))

(cl:ensure-generic-function 'action_feedback-val :lambda-list '(m))
(cl:defmethod action_feedback-val ((m <TrackTargetAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_sys_msgs-msg:action_feedback-val is deprecated.  Use custom_sys_msgs-msg:action_feedback instead.")
  (action_feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrackTargetAction>) ostream)
  "Serializes a message object of type '<TrackTargetAction>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_feedback) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrackTargetAction>) istream)
  "Deserializes a message object of type '<TrackTargetAction>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_feedback) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrackTargetAction>)))
  "Returns string type for a message object of type '<TrackTargetAction>"
  "custom_sys_msgs/TrackTargetAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackTargetAction)))
  "Returns string type for a message object of type 'TrackTargetAction"
  "custom_sys_msgs/TrackTargetAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrackTargetAction>)))
  "Returns md5sum for a message object of type '<TrackTargetAction>"
  "13dd434b1c0f631d3ccffaba34a10aae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrackTargetAction)))
  "Returns md5sum for a message object of type 'TrackTargetAction"
  "13dd434b1c0f631d3ccffaba34a10aae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrackTargetAction>)))
  "Returns full string definition for message of type '<TrackTargetAction>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%TrackTargetActionGoal action_goal~%TrackTargetActionResult action_result~%TrackTargetActionFeedback action_feedback~%~%================================================================================~%MSG: custom_sys_msgs/TrackTargetActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%TrackTargetGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: custom_sys_msgs/TrackTargetGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# goal: a aoa tag to follow~%custom_sys_msgs/AgvTrajectoryMsg2 path~%~%================================================================================~%MSG: custom_sys_msgs/AgvTrajectoryMsg2~%int32 task_id~%int32 task_type~%int32 vehicle_id~%int32 free_nav~%float64 deadline~%geometry_msgs/Pose dst_pose~%custom_sys_msgs/AgvLineMsg2[] agv_trajectory~%int32 test~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: custom_sys_msgs/AgvLineMsg2~%int32 segment_id~%int32 segment_type~%int32 attitude~%int32 tracking_mode~%float64 speed~%float64 precision~%float64 arrival_time~%float64 departure_time~%float64 redundancy_time~%geometry_msgs/Pose p_start~%geometry_msgs/Pose p_middle~%geometry_msgs/Pose p_end~%int32 start_node_id~%int32 end_node_id~%bool crossing~%~%================================================================================~%MSG: custom_sys_msgs/TrackTargetActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%TrackTargetResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: custom_sys_msgs/TrackTargetResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# no result currently~%~%================================================================================~%MSG: custom_sys_msgs/TrackTargetActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%TrackTargetFeedback feedback~%~%================================================================================~%MSG: custom_sys_msgs/TrackTargetFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%geometry_msgs/PoseStamped base_position~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrackTargetAction)))
  "Returns full string definition for message of type 'TrackTargetAction"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%TrackTargetActionGoal action_goal~%TrackTargetActionResult action_result~%TrackTargetActionFeedback action_feedback~%~%================================================================================~%MSG: custom_sys_msgs/TrackTargetActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%TrackTargetGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: custom_sys_msgs/TrackTargetGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# goal: a aoa tag to follow~%custom_sys_msgs/AgvTrajectoryMsg2 path~%~%================================================================================~%MSG: custom_sys_msgs/AgvTrajectoryMsg2~%int32 task_id~%int32 task_type~%int32 vehicle_id~%int32 free_nav~%float64 deadline~%geometry_msgs/Pose dst_pose~%custom_sys_msgs/AgvLineMsg2[] agv_trajectory~%int32 test~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: custom_sys_msgs/AgvLineMsg2~%int32 segment_id~%int32 segment_type~%int32 attitude~%int32 tracking_mode~%float64 speed~%float64 precision~%float64 arrival_time~%float64 departure_time~%float64 redundancy_time~%geometry_msgs/Pose p_start~%geometry_msgs/Pose p_middle~%geometry_msgs/Pose p_end~%int32 start_node_id~%int32 end_node_id~%bool crossing~%~%================================================================================~%MSG: custom_sys_msgs/TrackTargetActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%TrackTargetResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: custom_sys_msgs/TrackTargetResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# no result currently~%~%================================================================================~%MSG: custom_sys_msgs/TrackTargetActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%TrackTargetFeedback feedback~%~%================================================================================~%MSG: custom_sys_msgs/TrackTargetFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%geometry_msgs/PoseStamped base_position~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrackTargetAction>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrackTargetAction>))
  "Converts a ROS message object to a list"
  (cl:list 'TrackTargetAction
    (cl:cons ':action_goal (action_goal msg))
    (cl:cons ':action_result (action_result msg))
    (cl:cons ':action_feedback (action_feedback msg))
))

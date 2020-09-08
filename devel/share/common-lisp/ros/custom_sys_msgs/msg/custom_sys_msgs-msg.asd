
(cl:in-package :asdf)

(defsystem "custom_sys_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "AgvLineMsg2" :depends-on ("_package_AgvLineMsg2"))
    (:file "_package_AgvLineMsg2" :depends-on ("_package"))
    (:file "AgvNodeListMsg" :depends-on ("_package_AgvNodeListMsg"))
    (:file "_package_AgvNodeListMsg" :depends-on ("_package"))
    (:file "AgvNodeMsg" :depends-on ("_package_AgvNodeMsg"))
    (:file "_package_AgvNodeMsg" :depends-on ("_package"))
    (:file "AgvStatusMsg" :depends-on ("_package_AgvStatusMsg"))
    (:file "_package_AgvStatusMsg" :depends-on ("_package"))
    (:file "AgvTrajectoryMsg2" :depends-on ("_package_AgvTrajectoryMsg2"))
    (:file "_package_AgvTrajectoryMsg2" :depends-on ("_package"))
    (:file "AlvarMarker" :depends-on ("_package_AlvarMarker"))
    (:file "_package_AlvarMarker" :depends-on ("_package"))
    (:file "AlvarMarkers" :depends-on ("_package_AlvarMarkers"))
    (:file "_package_AlvarMarkers" :depends-on ("_package"))
    (:file "AoaTrackingMsg" :depends-on ("_package_AoaTrackingMsg"))
    (:file "_package_AoaTrackingMsg" :depends-on ("_package"))
    (:file "AoaTrackingStatusMsg" :depends-on ("_package_AoaTrackingStatusMsg"))
    (:file "_package_AoaTrackingStatusMsg" :depends-on ("_package"))
    (:file "AutoChargeStatus" :depends-on ("_package_AutoChargeStatus"))
    (:file "_package_AutoChargeStatus" :depends-on ("_package"))
    (:file "AutoDockMsg" :depends-on ("_package_AutoDockMsg"))
    (:file "_package_AutoDockMsg" :depends-on ("_package"))
    (:file "CrossingNodeMsg" :depends-on ("_package_CrossingNodeMsg"))
    (:file "_package_CrossingNodeMsg" :depends-on ("_package"))
    (:file "FreeNav" :depends-on ("_package_FreeNav"))
    (:file "_package_FreeNav" :depends-on ("_package"))
    (:file "FreeNavAction" :depends-on ("_package_FreeNavAction"))
    (:file "_package_FreeNavAction" :depends-on ("_package"))
    (:file "FreeNavActionFeedback" :depends-on ("_package_FreeNavActionFeedback"))
    (:file "_package_FreeNavActionFeedback" :depends-on ("_package"))
    (:file "FreeNavActionGoal" :depends-on ("_package_FreeNavActionGoal"))
    (:file "_package_FreeNavActionGoal" :depends-on ("_package"))
    (:file "FreeNavActionResult" :depends-on ("_package_FreeNavActionResult"))
    (:file "_package_FreeNavActionResult" :depends-on ("_package"))
    (:file "FreeNavFeedback" :depends-on ("_package_FreeNavFeedback"))
    (:file "_package_FreeNavFeedback" :depends-on ("_package"))
    (:file "FreeNavGoal" :depends-on ("_package_FreeNavGoal"))
    (:file "_package_FreeNavGoal" :depends-on ("_package"))
    (:file "FreeNavResult" :depends-on ("_package_FreeNavResult"))
    (:file "_package_FreeNavResult" :depends-on ("_package"))
    (:file "GripTaskMsg" :depends-on ("_package_GripTaskMsg"))
    (:file "_package_GripTaskMsg" :depends-on ("_package"))
    (:file "InitalPoseMsg" :depends-on ("_package_InitalPoseMsg"))
    (:file "_package_InitalPoseMsg" :depends-on ("_package"))
    (:file "PosDriveMsg" :depends-on ("_package_PosDriveMsg"))
    (:file "_package_PosDriveMsg" :depends-on ("_package"))
    (:file "PositionCorrectMsg" :depends-on ("_package_PositionCorrectMsg"))
    (:file "_package_PositionCorrectMsg" :depends-on ("_package"))
    (:file "PositionVerificationInfo" :depends-on ("_package_PositionVerificationInfo"))
    (:file "_package_PositionVerificationInfo" :depends-on ("_package"))
    (:file "RawDataMsg" :depends-on ("_package_RawDataMsg"))
    (:file "_package_RawDataMsg" :depends-on ("_package"))
    (:file "RobotBasicInfoMsg" :depends-on ("_package_RobotBasicInfoMsg"))
    (:file "_package_RobotBasicInfoMsg" :depends-on ("_package"))
    (:file "SensorStatusMsg" :depends-on ("_package_SensorStatusMsg"))
    (:file "_package_SensorStatusMsg" :depends-on ("_package"))
    (:file "SetPosLoc" :depends-on ("_package_SetPosLoc"))
    (:file "_package_SetPosLoc" :depends-on ("_package"))
    (:file "SonarMsg" :depends-on ("_package_SonarMsg"))
    (:file "_package_SonarMsg" :depends-on ("_package"))
    (:file "SonarMsg2" :depends-on ("_package_SonarMsg2"))
    (:file "_package_SonarMsg2" :depends-on ("_package"))
    (:file "StandbyStatusMsg" :depends-on ("_package_StandbyStatusMsg"))
    (:file "_package_StandbyStatusMsg" :depends-on ("_package"))
    (:file "TaskActionMsg" :depends-on ("_package_TaskActionMsg"))
    (:file "_package_TaskActionMsg" :depends-on ("_package"))
    (:file "TaskStdStatus" :depends-on ("_package_TaskStdStatus"))
    (:file "_package_TaskStdStatus" :depends-on ("_package"))
    (:file "TrackPathAction" :depends-on ("_package_TrackPathAction"))
    (:file "_package_TrackPathAction" :depends-on ("_package"))
    (:file "TrackPathActionFeedback" :depends-on ("_package_TrackPathActionFeedback"))
    (:file "_package_TrackPathActionFeedback" :depends-on ("_package"))
    (:file "TrackPathActionGoal" :depends-on ("_package_TrackPathActionGoal"))
    (:file "_package_TrackPathActionGoal" :depends-on ("_package"))
    (:file "TrackPathActionResult" :depends-on ("_package_TrackPathActionResult"))
    (:file "_package_TrackPathActionResult" :depends-on ("_package"))
    (:file "TrackPathFeedback" :depends-on ("_package_TrackPathFeedback"))
    (:file "_package_TrackPathFeedback" :depends-on ("_package"))
    (:file "TrackPathGoal" :depends-on ("_package_TrackPathGoal"))
    (:file "_package_TrackPathGoal" :depends-on ("_package"))
    (:file "TrackPathResult" :depends-on ("_package_TrackPathResult"))
    (:file "_package_TrackPathResult" :depends-on ("_package"))
    (:file "TrackTargetAction" :depends-on ("_package_TrackTargetAction"))
    (:file "_package_TrackTargetAction" :depends-on ("_package"))
    (:file "TrackTargetActionFeedback" :depends-on ("_package_TrackTargetActionFeedback"))
    (:file "_package_TrackTargetActionFeedback" :depends-on ("_package"))
    (:file "TrackTargetActionGoal" :depends-on ("_package_TrackTargetActionGoal"))
    (:file "_package_TrackTargetActionGoal" :depends-on ("_package"))
    (:file "TrackTargetActionResult" :depends-on ("_package_TrackTargetActionResult"))
    (:file "_package_TrackTargetActionResult" :depends-on ("_package"))
    (:file "TrackTargetFeedback" :depends-on ("_package_TrackTargetFeedback"))
    (:file "_package_TrackTargetFeedback" :depends-on ("_package"))
    (:file "TrackTargetGoal" :depends-on ("_package_TrackTargetGoal"))
    (:file "_package_TrackTargetGoal" :depends-on ("_package"))
    (:file "TrackTargetResult" :depends-on ("_package_TrackTargetResult"))
    (:file "_package_TrackTargetResult" :depends-on ("_package"))
    (:file "dynamicFootPrint" :depends-on ("_package_dynamicFootPrint"))
    (:file "_package_dynamicFootPrint" :depends-on ("_package"))
  ))
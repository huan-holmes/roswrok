
"use strict";

let SetPosLoc = require('./SetPosLoc.js');
let AoaTrackingMsg = require('./AoaTrackingMsg.js');
let GripTaskMsg = require('./GripTaskMsg.js');
let AutoChargeStatus = require('./AutoChargeStatus.js');
let PositionCorrectMsg = require('./PositionCorrectMsg.js');
let CrossingNodeMsg = require('./CrossingNodeMsg.js');
let SensorStatusMsg = require('./SensorStatusMsg.js');
let InitalPoseMsg = require('./InitalPoseMsg.js');
let AgvStatusMsg = require('./AgvStatusMsg.js');
let StandbyStatusMsg = require('./StandbyStatusMsg.js');
let PositionVerificationInfo = require('./PositionVerificationInfo.js');
let AutoDockMsg = require('./AutoDockMsg.js');
let TaskStdStatus = require('./TaskStdStatus.js');
let SonarMsg = require('./SonarMsg.js');
let AgvLineMsg2 = require('./AgvLineMsg2.js');
let dynamicFootPrint = require('./dynamicFootPrint.js');
let RobotBasicInfoMsg = require('./RobotBasicInfoMsg.js');
let FreeNav = require('./FreeNav.js');
let SonarMsg2 = require('./SonarMsg2.js');
let AgvTrajectoryMsg2 = require('./AgvTrajectoryMsg2.js');
let PosDriveMsg = require('./PosDriveMsg.js');
let AgvNodeListMsg = require('./AgvNodeListMsg.js');
let TaskActionMsg = require('./TaskActionMsg.js');
let AlvarMarkers = require('./AlvarMarkers.js');
let RawDataMsg = require('./RawDataMsg.js');
let AgvNodeMsg = require('./AgvNodeMsg.js');
let AoaTrackingStatusMsg = require('./AoaTrackingStatusMsg.js');
let AlvarMarker = require('./AlvarMarker.js');
let TrackPathResult = require('./TrackPathResult.js');
let TrackPathActionFeedback = require('./TrackPathActionFeedback.js');
let TrackPathGoal = require('./TrackPathGoal.js');
let FreeNavActionFeedback = require('./FreeNavActionFeedback.js');
let TrackPathActionResult = require('./TrackPathActionResult.js');
let TrackPathFeedback = require('./TrackPathFeedback.js');
let TrackTargetActionFeedback = require('./TrackTargetActionFeedback.js');
let TrackPathAction = require('./TrackPathAction.js');
let TrackTargetActionResult = require('./TrackTargetActionResult.js');
let FreeNavAction = require('./FreeNavAction.js');
let TrackTargetResult = require('./TrackTargetResult.js');
let TrackTargetActionGoal = require('./TrackTargetActionGoal.js');
let FreeNavActionGoal = require('./FreeNavActionGoal.js');
let TrackTargetFeedback = require('./TrackTargetFeedback.js');
let FreeNavResult = require('./FreeNavResult.js');
let TrackTargetGoal = require('./TrackTargetGoal.js');
let TrackPathActionGoal = require('./TrackPathActionGoal.js');
let FreeNavFeedback = require('./FreeNavFeedback.js');
let FreeNavActionResult = require('./FreeNavActionResult.js');
let TrackTargetAction = require('./TrackTargetAction.js');
let FreeNavGoal = require('./FreeNavGoal.js');

module.exports = {
  SetPosLoc: SetPosLoc,
  AoaTrackingMsg: AoaTrackingMsg,
  GripTaskMsg: GripTaskMsg,
  AutoChargeStatus: AutoChargeStatus,
  PositionCorrectMsg: PositionCorrectMsg,
  CrossingNodeMsg: CrossingNodeMsg,
  SensorStatusMsg: SensorStatusMsg,
  InitalPoseMsg: InitalPoseMsg,
  AgvStatusMsg: AgvStatusMsg,
  StandbyStatusMsg: StandbyStatusMsg,
  PositionVerificationInfo: PositionVerificationInfo,
  AutoDockMsg: AutoDockMsg,
  TaskStdStatus: TaskStdStatus,
  SonarMsg: SonarMsg,
  AgvLineMsg2: AgvLineMsg2,
  dynamicFootPrint: dynamicFootPrint,
  RobotBasicInfoMsg: RobotBasicInfoMsg,
  FreeNav: FreeNav,
  SonarMsg2: SonarMsg2,
  AgvTrajectoryMsg2: AgvTrajectoryMsg2,
  PosDriveMsg: PosDriveMsg,
  AgvNodeListMsg: AgvNodeListMsg,
  TaskActionMsg: TaskActionMsg,
  AlvarMarkers: AlvarMarkers,
  RawDataMsg: RawDataMsg,
  AgvNodeMsg: AgvNodeMsg,
  AoaTrackingStatusMsg: AoaTrackingStatusMsg,
  AlvarMarker: AlvarMarker,
  TrackPathResult: TrackPathResult,
  TrackPathActionFeedback: TrackPathActionFeedback,
  TrackPathGoal: TrackPathGoal,
  FreeNavActionFeedback: FreeNavActionFeedback,
  TrackPathActionResult: TrackPathActionResult,
  TrackPathFeedback: TrackPathFeedback,
  TrackTargetActionFeedback: TrackTargetActionFeedback,
  TrackPathAction: TrackPathAction,
  TrackTargetActionResult: TrackTargetActionResult,
  FreeNavAction: FreeNavAction,
  TrackTargetResult: TrackTargetResult,
  TrackTargetActionGoal: TrackTargetActionGoal,
  FreeNavActionGoal: FreeNavActionGoal,
  TrackTargetFeedback: TrackTargetFeedback,
  FreeNavResult: FreeNavResult,
  TrackTargetGoal: TrackTargetGoal,
  TrackPathActionGoal: TrackPathActionGoal,
  FreeNavFeedback: FreeNavFeedback,
  FreeNavActionResult: FreeNavActionResult,
  TrackTargetAction: TrackTargetAction,
  FreeNavGoal: FreeNavGoal,
};

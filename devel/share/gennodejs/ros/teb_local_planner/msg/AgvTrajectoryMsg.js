// Auto-generated. Do not edit!

// (in-package teb_local_planner.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AgvLineMsg = require('./AgvLineMsg.js');

//-----------------------------------------------------------

class AgvTrajectoryMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.agv_trajectory = null;
      this.move_dir = null;
    }
    else {
      if (initObj.hasOwnProperty('agv_trajectory')) {
        this.agv_trajectory = initObj.agv_trajectory
      }
      else {
        this.agv_trajectory = [];
      }
      if (initObj.hasOwnProperty('move_dir')) {
        this.move_dir = initObj.move_dir
      }
      else {
        this.move_dir = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AgvTrajectoryMsg
    // Serialize message field [agv_trajectory]
    // Serialize the length for message field [agv_trajectory]
    bufferOffset = _serializer.uint32(obj.agv_trajectory.length, buffer, bufferOffset);
    obj.agv_trajectory.forEach((val) => {
      bufferOffset = AgvLineMsg.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [move_dir]
    bufferOffset = _serializer.int32(obj.move_dir, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AgvTrajectoryMsg
    let len;
    let data = new AgvTrajectoryMsg(null);
    // Deserialize message field [agv_trajectory]
    // Deserialize array length for message field [agv_trajectory]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.agv_trajectory = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.agv_trajectory[i] = AgvLineMsg.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [move_dir]
    data.move_dir = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 76 * object.agv_trajectory.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'teb_local_planner/AgvTrajectoryMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8ea844040bae943d8f96401ca7a88393';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    teb_local_planner/AgvLineMsg[] agv_trajectory
    int32 move_dir
    
    ================================================================================
    MSG: teb_local_planner/AgvLineMsg
    # The pose of the robot
    geometry_msgs/Pose[3] poses
    
    std_msgs/Int32 type
    
    std_msgs/Int32 path_id
    
    float64 vel
    
    int32 crossing
    
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
    MSG: std_msgs/Int32
    int32 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AgvTrajectoryMsg(null);
    if (msg.agv_trajectory !== undefined) {
      resolved.agv_trajectory = new Array(msg.agv_trajectory.length);
      for (let i = 0; i < resolved.agv_trajectory.length; ++i) {
        resolved.agv_trajectory[i] = AgvLineMsg.Resolve(msg.agv_trajectory[i]);
      }
    }
    else {
      resolved.agv_trajectory = []
    }

    if (msg.move_dir !== undefined) {
      resolved.move_dir = msg.move_dir;
    }
    else {
      resolved.move_dir = 0
    }

    return resolved;
    }
};

module.exports = AgvTrajectoryMsg;

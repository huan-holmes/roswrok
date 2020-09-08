// Auto-generated. Do not edit!

// (in-package custom_sys_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AgvLineMsg2 = require('./AgvLineMsg2.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class AgvTrajectoryMsg2 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.task_id = null;
      this.task_type = null;
      this.vehicle_id = null;
      this.free_nav = null;
      this.deadline = null;
      this.dst_pose = null;
      this.agv_trajectory = null;
      this.test = null;
    }
    else {
      if (initObj.hasOwnProperty('task_id')) {
        this.task_id = initObj.task_id
      }
      else {
        this.task_id = 0;
      }
      if (initObj.hasOwnProperty('task_type')) {
        this.task_type = initObj.task_type
      }
      else {
        this.task_type = 0;
      }
      if (initObj.hasOwnProperty('vehicle_id')) {
        this.vehicle_id = initObj.vehicle_id
      }
      else {
        this.vehicle_id = 0;
      }
      if (initObj.hasOwnProperty('free_nav')) {
        this.free_nav = initObj.free_nav
      }
      else {
        this.free_nav = 0;
      }
      if (initObj.hasOwnProperty('deadline')) {
        this.deadline = initObj.deadline
      }
      else {
        this.deadline = 0.0;
      }
      if (initObj.hasOwnProperty('dst_pose')) {
        this.dst_pose = initObj.dst_pose
      }
      else {
        this.dst_pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('agv_trajectory')) {
        this.agv_trajectory = initObj.agv_trajectory
      }
      else {
        this.agv_trajectory = [];
      }
      if (initObj.hasOwnProperty('test')) {
        this.test = initObj.test
      }
      else {
        this.test = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AgvTrajectoryMsg2
    // Serialize message field [task_id]
    bufferOffset = _serializer.int32(obj.task_id, buffer, bufferOffset);
    // Serialize message field [task_type]
    bufferOffset = _serializer.int32(obj.task_type, buffer, bufferOffset);
    // Serialize message field [vehicle_id]
    bufferOffset = _serializer.int32(obj.vehicle_id, buffer, bufferOffset);
    // Serialize message field [free_nav]
    bufferOffset = _serializer.int32(obj.free_nav, buffer, bufferOffset);
    // Serialize message field [deadline]
    bufferOffset = _serializer.float64(obj.deadline, buffer, bufferOffset);
    // Serialize message field [dst_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.dst_pose, buffer, bufferOffset);
    // Serialize message field [agv_trajectory]
    // Serialize the length for message field [agv_trajectory]
    bufferOffset = _serializer.uint32(obj.agv_trajectory.length, buffer, bufferOffset);
    obj.agv_trajectory.forEach((val) => {
      bufferOffset = AgvLineMsg2.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [test]
    bufferOffset = _serializer.int32(obj.test, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AgvTrajectoryMsg2
    let len;
    let data = new AgvTrajectoryMsg2(null);
    // Deserialize message field [task_id]
    data.task_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [task_type]
    data.task_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [vehicle_id]
    data.vehicle_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [free_nav]
    data.free_nav = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [deadline]
    data.deadline = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dst_pose]
    data.dst_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [agv_trajectory]
    // Deserialize array length for message field [agv_trajectory]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.agv_trajectory = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.agv_trajectory[i] = AgvLineMsg2.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [test]
    data.test = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 233 * object.agv_trajectory.length;
    return length + 88;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_sys_msgs/AgvTrajectoryMsg2';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6b07c1f81ca25d93ada13ba8f99101b8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 task_id
    int32 task_type
    int32 vehicle_id
    int32 free_nav
    float64 deadline
    geometry_msgs/Pose dst_pose
    custom_sys_msgs/AgvLineMsg2[] agv_trajectory
    int32 test
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
    MSG: custom_sys_msgs/AgvLineMsg2
    int32 segment_id
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AgvTrajectoryMsg2(null);
    if (msg.task_id !== undefined) {
      resolved.task_id = msg.task_id;
    }
    else {
      resolved.task_id = 0
    }

    if (msg.task_type !== undefined) {
      resolved.task_type = msg.task_type;
    }
    else {
      resolved.task_type = 0
    }

    if (msg.vehicle_id !== undefined) {
      resolved.vehicle_id = msg.vehicle_id;
    }
    else {
      resolved.vehicle_id = 0
    }

    if (msg.free_nav !== undefined) {
      resolved.free_nav = msg.free_nav;
    }
    else {
      resolved.free_nav = 0
    }

    if (msg.deadline !== undefined) {
      resolved.deadline = msg.deadline;
    }
    else {
      resolved.deadline = 0.0
    }

    if (msg.dst_pose !== undefined) {
      resolved.dst_pose = geometry_msgs.msg.Pose.Resolve(msg.dst_pose)
    }
    else {
      resolved.dst_pose = new geometry_msgs.msg.Pose()
    }

    if (msg.agv_trajectory !== undefined) {
      resolved.agv_trajectory = new Array(msg.agv_trajectory.length);
      for (let i = 0; i < resolved.agv_trajectory.length; ++i) {
        resolved.agv_trajectory[i] = AgvLineMsg2.Resolve(msg.agv_trajectory[i]);
      }
    }
    else {
      resolved.agv_trajectory = []
    }

    if (msg.test !== undefined) {
      resolved.test = msg.test;
    }
    else {
      resolved.test = 0
    }

    return resolved;
    }
};

module.exports = AgvTrajectoryMsg2;

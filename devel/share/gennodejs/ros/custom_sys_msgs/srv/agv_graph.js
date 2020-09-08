// Auto-generated. Do not edit!

// (in-package custom_sys_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let AgvTrajectoryMsg2 = require('../msg/AgvTrajectoryMsg2.js');

//-----------------------------------------------------------

class agv_graphRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type agv_graphRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type agv_graphRequest
    let len;
    let data = new agv_graphRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_sys_msgs/agv_graphRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new agv_graphRequest(null);
    return resolved;
    }
};

class agv_graphResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.agv_graph = null;
    }
    else {
      if (initObj.hasOwnProperty('agv_graph')) {
        this.agv_graph = initObj.agv_graph
      }
      else {
        this.agv_graph = new AgvTrajectoryMsg2();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type agv_graphResponse
    // Serialize message field [agv_graph]
    bufferOffset = AgvTrajectoryMsg2.serialize(obj.agv_graph, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type agv_graphResponse
    let len;
    let data = new agv_graphResponse(null);
    // Deserialize message field [agv_graph]
    data.agv_graph = AgvTrajectoryMsg2.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += AgvTrajectoryMsg2.getMessageSize(object.agv_graph);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_sys_msgs/agv_graphResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e9c74557c444af09c8ff470ac412ba81';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    custom_sys_msgs/AgvTrajectoryMsg2 agv_graph
    
    
    ================================================================================
    MSG: custom_sys_msgs/AgvTrajectoryMsg2
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
    const resolved = new agv_graphResponse(null);
    if (msg.agv_graph !== undefined) {
      resolved.agv_graph = AgvTrajectoryMsg2.Resolve(msg.agv_graph)
    }
    else {
      resolved.agv_graph = new AgvTrajectoryMsg2()
    }

    return resolved;
    }
};

module.exports = {
  Request: agv_graphRequest,
  Response: agv_graphResponse,
  md5sum() { return 'e9c74557c444af09c8ff470ac412ba81'; },
  datatype() { return 'custom_sys_msgs/agv_graph'; }
};

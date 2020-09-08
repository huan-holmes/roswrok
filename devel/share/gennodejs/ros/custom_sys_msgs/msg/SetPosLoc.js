// Auto-generated. Do not edit!

// (in-package custom_sys_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class SetPosLoc {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose = null;
      this.search_dist = null;
      this.search_yaw = null;
    }
    else {
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('search_dist')) {
        this.search_dist = initObj.search_dist
      }
      else {
        this.search_dist = 0.0;
      }
      if (initObj.hasOwnProperty('search_yaw')) {
        this.search_yaw = initObj.search_yaw
      }
      else {
        this.search_yaw = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetPosLoc
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [search_dist]
    bufferOffset = _serializer.float64(obj.search_dist, buffer, bufferOffset);
    // Serialize message field [search_yaw]
    bufferOffset = _serializer.float64(obj.search_yaw, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetPosLoc
    let len;
    let data = new SetPosLoc(null);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [search_dist]
    data.search_dist = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [search_yaw]
    data.search_yaw = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 72;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_sys_msgs/SetPosLoc';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '78c9abe59b92be81b769bcaf9d65589c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose pose
    float64 search_dist
    float64 search_yaw
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetPosLoc(null);
    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.search_dist !== undefined) {
      resolved.search_dist = msg.search_dist;
    }
    else {
      resolved.search_dist = 0.0
    }

    if (msg.search_yaw !== undefined) {
      resolved.search_yaw = msg.search_yaw;
    }
    else {
      resolved.search_yaw = 0.0
    }

    return resolved;
    }
};

module.exports = SetPosLoc;

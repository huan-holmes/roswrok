// Auto-generated. Do not edit!

// (in-package teb_local_planner.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class AgvLineMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.poses = null;
      this.type = null;
      this.path_id = null;
      this.vel = null;
      this.crossing = null;
    }
    else {
      if (initObj.hasOwnProperty('poses')) {
        this.poses = initObj.poses
      }
      else {
        this.poses = new Array(3).fill(new geometry_msgs.msg.Pose());
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('path_id')) {
        this.path_id = initObj.path_id
      }
      else {
        this.path_id = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('vel')) {
        this.vel = initObj.vel
      }
      else {
        this.vel = 0.0;
      }
      if (initObj.hasOwnProperty('crossing')) {
        this.crossing = initObj.crossing
      }
      else {
        this.crossing = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AgvLineMsg
    // Check that the constant length array field [poses] has the right length
    if (obj.poses.length !== 3) {
      throw new Error('Unable to serialize array field poses - length must be 3')
    }
    // Serialize message field [poses]
    obj.poses.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [type]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [path_id]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.path_id, buffer, bufferOffset);
    // Serialize message field [vel]
    bufferOffset = _serializer.float64(obj.vel, buffer, bufferOffset);
    // Serialize message field [crossing]
    bufferOffset = _serializer.int32(obj.crossing, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AgvLineMsg
    let len;
    let data = new AgvLineMsg(null);
    // Deserialize message field [poses]
    len = 3;
    data.poses = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.poses[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [type]
    data.type = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [path_id]
    data.path_id = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [vel]
    data.vel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [crossing]
    data.crossing = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 76;
  }

  static datatype() {
    // Returns string type for a message object
    return 'teb_local_planner/AgvLineMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8a938cc1a16df264a8bdf537bad11201';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new AgvLineMsg(null);
    if (msg.poses !== undefined) {
      resolved.poses = new Array(3)
      for (let i = 0; i < resolved.poses.length; ++i) {
        if (msg.poses.length > i) {
          resolved.poses[i] = geometry_msgs.msg.Pose.Resolve(msg.poses[i]);
        }
        else {
          resolved.poses[i] = new geometry_msgs.msg.Pose();
        }
      }
    }
    else {
      resolved.poses = new Array(3).fill(new geometry_msgs.msg.Pose())
    }

    if (msg.type !== undefined) {
      resolved.type = std_msgs.msg.Int32.Resolve(msg.type)
    }
    else {
      resolved.type = new std_msgs.msg.Int32()
    }

    if (msg.path_id !== undefined) {
      resolved.path_id = std_msgs.msg.Int32.Resolve(msg.path_id)
    }
    else {
      resolved.path_id = new std_msgs.msg.Int32()
    }

    if (msg.vel !== undefined) {
      resolved.vel = msg.vel;
    }
    else {
      resolved.vel = 0.0
    }

    if (msg.crossing !== undefined) {
      resolved.crossing = msg.crossing;
    }
    else {
      resolved.crossing = 0
    }

    return resolved;
    }
};

module.exports = AgvLineMsg;

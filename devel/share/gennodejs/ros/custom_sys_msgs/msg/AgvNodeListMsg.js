// Auto-generated. Do not edit!

// (in-package custom_sys_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AgvNodeMsg = require('./AgvNodeMsg.js');

//-----------------------------------------------------------

class AgvNodeListMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.node_list = null;
    }
    else {
      if (initObj.hasOwnProperty('node_list')) {
        this.node_list = initObj.node_list
      }
      else {
        this.node_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AgvNodeListMsg
    // Serialize message field [node_list]
    // Serialize the length for message field [node_list]
    bufferOffset = _serializer.uint32(obj.node_list.length, buffer, bufferOffset);
    obj.node_list.forEach((val) => {
      bufferOffset = AgvNodeMsg.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AgvNodeListMsg
    let len;
    let data = new AgvNodeListMsg(null);
    // Deserialize message field [node_list]
    // Deserialize array length for message field [node_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.node_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.node_list[i] = AgvNodeMsg.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.node_list.forEach((val) => {
      length += AgvNodeMsg.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_sys_msgs/AgvNodeListMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2203275847428c3096be7271d54ad404';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    custom_sys_msgs/AgvNodeMsg[] node_list
    
    ================================================================================
    MSG: custom_sys_msgs/AgvNodeMsg
    int32 node_id
    string node_name
    int32 node_type
    int32 ref_cnt
    geometry_msgs/Pose pos
    
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
    const resolved = new AgvNodeListMsg(null);
    if (msg.node_list !== undefined) {
      resolved.node_list = new Array(msg.node_list.length);
      for (let i = 0; i < resolved.node_list.length; ++i) {
        resolved.node_list[i] = AgvNodeMsg.Resolve(msg.node_list[i]);
      }
    }
    else {
      resolved.node_list = []
    }

    return resolved;
    }
};

module.exports = AgvNodeListMsg;

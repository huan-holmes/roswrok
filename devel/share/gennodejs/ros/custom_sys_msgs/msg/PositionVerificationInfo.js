// Auto-generated. Do not edit!

// (in-package custom_sys_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PositionVerificationInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.loc_status = null;
      this.suggest_max_vx = null;
      this.suggest_max_vtheta = null;
    }
    else {
      if (initObj.hasOwnProperty('loc_status')) {
        this.loc_status = initObj.loc_status
      }
      else {
        this.loc_status = 0;
      }
      if (initObj.hasOwnProperty('suggest_max_vx')) {
        this.suggest_max_vx = initObj.suggest_max_vx
      }
      else {
        this.suggest_max_vx = 0.0;
      }
      if (initObj.hasOwnProperty('suggest_max_vtheta')) {
        this.suggest_max_vtheta = initObj.suggest_max_vtheta
      }
      else {
        this.suggest_max_vtheta = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PositionVerificationInfo
    // Serialize message field [loc_status]
    bufferOffset = _serializer.int32(obj.loc_status, buffer, bufferOffset);
    // Serialize message field [suggest_max_vx]
    bufferOffset = _serializer.float64(obj.suggest_max_vx, buffer, bufferOffset);
    // Serialize message field [suggest_max_vtheta]
    bufferOffset = _serializer.float64(obj.suggest_max_vtheta, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PositionVerificationInfo
    let len;
    let data = new PositionVerificationInfo(null);
    // Deserialize message field [loc_status]
    data.loc_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [suggest_max_vx]
    data.suggest_max_vx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [suggest_max_vtheta]
    data.suggest_max_vtheta = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_sys_msgs/PositionVerificationInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7ce66b05d8b3d1f15000aa53d885fc04';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 loc_status
    float64 suggest_max_vx
    float64 suggest_max_vtheta
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PositionVerificationInfo(null);
    if (msg.loc_status !== undefined) {
      resolved.loc_status = msg.loc_status;
    }
    else {
      resolved.loc_status = 0
    }

    if (msg.suggest_max_vx !== undefined) {
      resolved.suggest_max_vx = msg.suggest_max_vx;
    }
    else {
      resolved.suggest_max_vx = 0.0
    }

    if (msg.suggest_max_vtheta !== undefined) {
      resolved.suggest_max_vtheta = msg.suggest_max_vtheta;
    }
    else {
      resolved.suggest_max_vtheta = 0.0
    }

    return resolved;
    }
};

module.exports = PositionVerificationInfo;

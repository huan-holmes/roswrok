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

class dynamicFootPrint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_radius = null;
      this.pole_distance = null;
      this.footprint = null;
      this.pole_footprint = null;
      this.pre_robot_radius = null;
      this.body_footprint = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_radius')) {
        this.robot_radius = initObj.robot_radius
      }
      else {
        this.robot_radius = 0.0;
      }
      if (initObj.hasOwnProperty('pole_distance')) {
        this.pole_distance = initObj.pole_distance
      }
      else {
        this.pole_distance = 0.0;
      }
      if (initObj.hasOwnProperty('footprint')) {
        this.footprint = initObj.footprint
      }
      else {
        this.footprint = '';
      }
      if (initObj.hasOwnProperty('pole_footprint')) {
        this.pole_footprint = initObj.pole_footprint
      }
      else {
        this.pole_footprint = '';
      }
      if (initObj.hasOwnProperty('pre_robot_radius')) {
        this.pre_robot_radius = initObj.pre_robot_radius
      }
      else {
        this.pre_robot_radius = 0.0;
      }
      if (initObj.hasOwnProperty('body_footprint')) {
        this.body_footprint = initObj.body_footprint
      }
      else {
        this.body_footprint = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type dynamicFootPrint
    // Serialize message field [robot_radius]
    bufferOffset = _serializer.float64(obj.robot_radius, buffer, bufferOffset);
    // Serialize message field [pole_distance]
    bufferOffset = _serializer.float64(obj.pole_distance, buffer, bufferOffset);
    // Serialize message field [footprint]
    bufferOffset = _serializer.string(obj.footprint, buffer, bufferOffset);
    // Serialize message field [pole_footprint]
    bufferOffset = _serializer.string(obj.pole_footprint, buffer, bufferOffset);
    // Serialize message field [pre_robot_radius]
    bufferOffset = _serializer.float64(obj.pre_robot_radius, buffer, bufferOffset);
    // Serialize message field [body_footprint]
    bufferOffset = _serializer.string(obj.body_footprint, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type dynamicFootPrint
    let len;
    let data = new dynamicFootPrint(null);
    // Deserialize message field [robot_radius]
    data.robot_radius = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pole_distance]
    data.pole_distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [footprint]
    data.footprint = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pole_footprint]
    data.pole_footprint = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pre_robot_radius]
    data.pre_robot_radius = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [body_footprint]
    data.body_footprint = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.footprint.length;
    length += object.pole_footprint.length;
    length += object.body_footprint.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_sys_msgs/dynamicFootPrint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b198cd1c56ad3f0f3cc7882ae559bf05';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 robot_radius
    float64 pole_distance
    string footprint
    string pole_footprint
    float64 pre_robot_radius
    string body_footprint
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new dynamicFootPrint(null);
    if (msg.robot_radius !== undefined) {
      resolved.robot_radius = msg.robot_radius;
    }
    else {
      resolved.robot_radius = 0.0
    }

    if (msg.pole_distance !== undefined) {
      resolved.pole_distance = msg.pole_distance;
    }
    else {
      resolved.pole_distance = 0.0
    }

    if (msg.footprint !== undefined) {
      resolved.footprint = msg.footprint;
    }
    else {
      resolved.footprint = ''
    }

    if (msg.pole_footprint !== undefined) {
      resolved.pole_footprint = msg.pole_footprint;
    }
    else {
      resolved.pole_footprint = ''
    }

    if (msg.pre_robot_radius !== undefined) {
      resolved.pre_robot_radius = msg.pre_robot_radius;
    }
    else {
      resolved.pre_robot_radius = 0.0
    }

    if (msg.body_footprint !== undefined) {
      resolved.body_footprint = msg.body_footprint;
    }
    else {
      resolved.body_footprint = ''
    }

    return resolved;
    }
};

module.exports = dynamicFootPrint;

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

class SensorStatusMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.laser = null;
      this.base = null;
      this.sonar = null;
      this.vision = null;
      this.odom = null;
      this.uwb = null;
      this.emergency = null;
      this.charge = null;
      this.power = null;
    }
    else {
      if (initObj.hasOwnProperty('laser')) {
        this.laser = initObj.laser
      }
      else {
        this.laser = 0;
      }
      if (initObj.hasOwnProperty('base')) {
        this.base = initObj.base
      }
      else {
        this.base = 0;
      }
      if (initObj.hasOwnProperty('sonar')) {
        this.sonar = initObj.sonar
      }
      else {
        this.sonar = 0;
      }
      if (initObj.hasOwnProperty('vision')) {
        this.vision = initObj.vision
      }
      else {
        this.vision = 0;
      }
      if (initObj.hasOwnProperty('odom')) {
        this.odom = initObj.odom
      }
      else {
        this.odom = 0;
      }
      if (initObj.hasOwnProperty('uwb')) {
        this.uwb = initObj.uwb
      }
      else {
        this.uwb = 0;
      }
      if (initObj.hasOwnProperty('emergency')) {
        this.emergency = initObj.emergency
      }
      else {
        this.emergency = 0;
      }
      if (initObj.hasOwnProperty('charge')) {
        this.charge = initObj.charge
      }
      else {
        this.charge = 0;
      }
      if (initObj.hasOwnProperty('power')) {
        this.power = initObj.power
      }
      else {
        this.power = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SensorStatusMsg
    // Serialize message field [laser]
    bufferOffset = _serializer.int32(obj.laser, buffer, bufferOffset);
    // Serialize message field [base]
    bufferOffset = _serializer.int32(obj.base, buffer, bufferOffset);
    // Serialize message field [sonar]
    bufferOffset = _serializer.int32(obj.sonar, buffer, bufferOffset);
    // Serialize message field [vision]
    bufferOffset = _serializer.int32(obj.vision, buffer, bufferOffset);
    // Serialize message field [odom]
    bufferOffset = _serializer.int32(obj.odom, buffer, bufferOffset);
    // Serialize message field [uwb]
    bufferOffset = _serializer.int32(obj.uwb, buffer, bufferOffset);
    // Serialize message field [emergency]
    bufferOffset = _serializer.int32(obj.emergency, buffer, bufferOffset);
    // Serialize message field [charge]
    bufferOffset = _serializer.int32(obj.charge, buffer, bufferOffset);
    // Serialize message field [power]
    bufferOffset = _serializer.string(obj.power, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SensorStatusMsg
    let len;
    let data = new SensorStatusMsg(null);
    // Deserialize message field [laser]
    data.laser = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [base]
    data.base = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [sonar]
    data.sonar = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [vision]
    data.vision = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [odom]
    data.odom = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [uwb]
    data.uwb = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [emergency]
    data.emergency = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [charge]
    data.charge = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [power]
    data.power = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.power.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_sys_msgs/SensorStatusMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '64dec694a8aac012670ece9363dd4bfd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 laser
    int32 base
    int32 sonar
    int32 vision
    int32 odom
    int32 uwb
    int32 emergency
    int32 charge
    string power
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SensorStatusMsg(null);
    if (msg.laser !== undefined) {
      resolved.laser = msg.laser;
    }
    else {
      resolved.laser = 0
    }

    if (msg.base !== undefined) {
      resolved.base = msg.base;
    }
    else {
      resolved.base = 0
    }

    if (msg.sonar !== undefined) {
      resolved.sonar = msg.sonar;
    }
    else {
      resolved.sonar = 0
    }

    if (msg.vision !== undefined) {
      resolved.vision = msg.vision;
    }
    else {
      resolved.vision = 0
    }

    if (msg.odom !== undefined) {
      resolved.odom = msg.odom;
    }
    else {
      resolved.odom = 0
    }

    if (msg.uwb !== undefined) {
      resolved.uwb = msg.uwb;
    }
    else {
      resolved.uwb = 0
    }

    if (msg.emergency !== undefined) {
      resolved.emergency = msg.emergency;
    }
    else {
      resolved.emergency = 0
    }

    if (msg.charge !== undefined) {
      resolved.charge = msg.charge;
    }
    else {
      resolved.charge = 0
    }

    if (msg.power !== undefined) {
      resolved.power = msg.power;
    }
    else {
      resolved.power = ''
    }

    return resolved;
    }
};

module.exports = SensorStatusMsg;

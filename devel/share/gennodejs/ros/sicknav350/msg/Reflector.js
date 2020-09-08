// Auto-generated. Do not edit!

// (in-package sicknav350.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Reflector {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.filter = null;
      this.num_reflector = null;
      this.cart = null;
      this.x = null;
      this.y = null;
      this.polar = null;
    }
    else {
      if (initObj.hasOwnProperty('filter')) {
        this.filter = initObj.filter
      }
      else {
        this.filter = 0;
      }
      if (initObj.hasOwnProperty('num_reflector')) {
        this.num_reflector = initObj.num_reflector
      }
      else {
        this.num_reflector = 0;
      }
      if (initObj.hasOwnProperty('cart')) {
        this.cart = initObj.cart
      }
      else {
        this.cart = [];
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = [];
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = [];
      }
      if (initObj.hasOwnProperty('polar')) {
        this.polar = initObj.polar
      }
      else {
        this.polar = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Reflector
    // Serialize message field [filter]
    bufferOffset = _serializer.uint32(obj.filter, buffer, bufferOffset);
    // Serialize message field [num_reflector]
    bufferOffset = _serializer.uint32(obj.num_reflector, buffer, bufferOffset);
    // Serialize message field [cart]
    bufferOffset = _arraySerializer.uint32(obj.cart, buffer, bufferOffset, null);
    // Serialize message field [x]
    bufferOffset = _arraySerializer.float32(obj.x, buffer, bufferOffset, null);
    // Serialize message field [y]
    bufferOffset = _arraySerializer.float32(obj.y, buffer, bufferOffset, null);
    // Serialize message field [polar]
    bufferOffset = _arraySerializer.uint64(obj.polar, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Reflector
    let len;
    let data = new Reflector(null);
    // Deserialize message field [filter]
    data.filter = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [num_reflector]
    data.num_reflector = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [cart]
    data.cart = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [x]
    data.x = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [y]
    data.y = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [polar]
    data.polar = _arrayDeserializer.uint64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.cart.length;
    length += 4 * object.x.length;
    length += 4 * object.y.length;
    length += 8 * object.polar.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sicknav350/Reflector';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '011340bf811926a91f45981bd574d1c3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 filter	
    uint32 num_reflector
    uint32[] cart
    float32[] x
    float32[] y
    uint64[] polar
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Reflector(null);
    if (msg.filter !== undefined) {
      resolved.filter = msg.filter;
    }
    else {
      resolved.filter = 0
    }

    if (msg.num_reflector !== undefined) {
      resolved.num_reflector = msg.num_reflector;
    }
    else {
      resolved.num_reflector = 0
    }

    if (msg.cart !== undefined) {
      resolved.cart = msg.cart;
    }
    else {
      resolved.cart = []
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = []
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = []
    }

    if (msg.polar !== undefined) {
      resolved.polar = msg.polar;
    }
    else {
      resolved.polar = []
    }

    return resolved;
    }
};

module.exports = Reflector;

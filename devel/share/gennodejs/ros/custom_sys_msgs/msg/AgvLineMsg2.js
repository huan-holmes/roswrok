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

class AgvLineMsg2 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.segment_id = null;
      this.segment_type = null;
      this.attitude = null;
      this.tracking_mode = null;
      this.speed = null;
      this.precision = null;
      this.arrival_time = null;
      this.departure_time = null;
      this.redundancy_time = null;
      this.p_start = null;
      this.p_middle = null;
      this.p_end = null;
      this.start_node_id = null;
      this.end_node_id = null;
      this.crossing = null;
    }
    else {
      if (initObj.hasOwnProperty('segment_id')) {
        this.segment_id = initObj.segment_id
      }
      else {
        this.segment_id = 0;
      }
      if (initObj.hasOwnProperty('segment_type')) {
        this.segment_type = initObj.segment_type
      }
      else {
        this.segment_type = 0;
      }
      if (initObj.hasOwnProperty('attitude')) {
        this.attitude = initObj.attitude
      }
      else {
        this.attitude = 0;
      }
      if (initObj.hasOwnProperty('tracking_mode')) {
        this.tracking_mode = initObj.tracking_mode
      }
      else {
        this.tracking_mode = 0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('precision')) {
        this.precision = initObj.precision
      }
      else {
        this.precision = 0.0;
      }
      if (initObj.hasOwnProperty('arrival_time')) {
        this.arrival_time = initObj.arrival_time
      }
      else {
        this.arrival_time = 0.0;
      }
      if (initObj.hasOwnProperty('departure_time')) {
        this.departure_time = initObj.departure_time
      }
      else {
        this.departure_time = 0.0;
      }
      if (initObj.hasOwnProperty('redundancy_time')) {
        this.redundancy_time = initObj.redundancy_time
      }
      else {
        this.redundancy_time = 0.0;
      }
      if (initObj.hasOwnProperty('p_start')) {
        this.p_start = initObj.p_start
      }
      else {
        this.p_start = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('p_middle')) {
        this.p_middle = initObj.p_middle
      }
      else {
        this.p_middle = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('p_end')) {
        this.p_end = initObj.p_end
      }
      else {
        this.p_end = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('start_node_id')) {
        this.start_node_id = initObj.start_node_id
      }
      else {
        this.start_node_id = 0;
      }
      if (initObj.hasOwnProperty('end_node_id')) {
        this.end_node_id = initObj.end_node_id
      }
      else {
        this.end_node_id = 0;
      }
      if (initObj.hasOwnProperty('crossing')) {
        this.crossing = initObj.crossing
      }
      else {
        this.crossing = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AgvLineMsg2
    // Serialize message field [segment_id]
    bufferOffset = _serializer.int32(obj.segment_id, buffer, bufferOffset);
    // Serialize message field [segment_type]
    bufferOffset = _serializer.int32(obj.segment_type, buffer, bufferOffset);
    // Serialize message field [attitude]
    bufferOffset = _serializer.int32(obj.attitude, buffer, bufferOffset);
    // Serialize message field [tracking_mode]
    bufferOffset = _serializer.int32(obj.tracking_mode, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float64(obj.speed, buffer, bufferOffset);
    // Serialize message field [precision]
    bufferOffset = _serializer.float64(obj.precision, buffer, bufferOffset);
    // Serialize message field [arrival_time]
    bufferOffset = _serializer.float64(obj.arrival_time, buffer, bufferOffset);
    // Serialize message field [departure_time]
    bufferOffset = _serializer.float64(obj.departure_time, buffer, bufferOffset);
    // Serialize message field [redundancy_time]
    bufferOffset = _serializer.float64(obj.redundancy_time, buffer, bufferOffset);
    // Serialize message field [p_start]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.p_start, buffer, bufferOffset);
    // Serialize message field [p_middle]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.p_middle, buffer, bufferOffset);
    // Serialize message field [p_end]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.p_end, buffer, bufferOffset);
    // Serialize message field [start_node_id]
    bufferOffset = _serializer.int32(obj.start_node_id, buffer, bufferOffset);
    // Serialize message field [end_node_id]
    bufferOffset = _serializer.int32(obj.end_node_id, buffer, bufferOffset);
    // Serialize message field [crossing]
    bufferOffset = _serializer.bool(obj.crossing, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AgvLineMsg2
    let len;
    let data = new AgvLineMsg2(null);
    // Deserialize message field [segment_id]
    data.segment_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [segment_type]
    data.segment_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [attitude]
    data.attitude = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [tracking_mode]
    data.tracking_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [precision]
    data.precision = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [arrival_time]
    data.arrival_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [departure_time]
    data.departure_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [redundancy_time]
    data.redundancy_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [p_start]
    data.p_start = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [p_middle]
    data.p_middle = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [p_end]
    data.p_end = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [start_node_id]
    data.start_node_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [end_node_id]
    data.end_node_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [crossing]
    data.crossing = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 233;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_sys_msgs/AgvLineMsg2';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2d421422889a341f7cf947ef206bc0e3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new AgvLineMsg2(null);
    if (msg.segment_id !== undefined) {
      resolved.segment_id = msg.segment_id;
    }
    else {
      resolved.segment_id = 0
    }

    if (msg.segment_type !== undefined) {
      resolved.segment_type = msg.segment_type;
    }
    else {
      resolved.segment_type = 0
    }

    if (msg.attitude !== undefined) {
      resolved.attitude = msg.attitude;
    }
    else {
      resolved.attitude = 0
    }

    if (msg.tracking_mode !== undefined) {
      resolved.tracking_mode = msg.tracking_mode;
    }
    else {
      resolved.tracking_mode = 0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.precision !== undefined) {
      resolved.precision = msg.precision;
    }
    else {
      resolved.precision = 0.0
    }

    if (msg.arrival_time !== undefined) {
      resolved.arrival_time = msg.arrival_time;
    }
    else {
      resolved.arrival_time = 0.0
    }

    if (msg.departure_time !== undefined) {
      resolved.departure_time = msg.departure_time;
    }
    else {
      resolved.departure_time = 0.0
    }

    if (msg.redundancy_time !== undefined) {
      resolved.redundancy_time = msg.redundancy_time;
    }
    else {
      resolved.redundancy_time = 0.0
    }

    if (msg.p_start !== undefined) {
      resolved.p_start = geometry_msgs.msg.Pose.Resolve(msg.p_start)
    }
    else {
      resolved.p_start = new geometry_msgs.msg.Pose()
    }

    if (msg.p_middle !== undefined) {
      resolved.p_middle = geometry_msgs.msg.Pose.Resolve(msg.p_middle)
    }
    else {
      resolved.p_middle = new geometry_msgs.msg.Pose()
    }

    if (msg.p_end !== undefined) {
      resolved.p_end = geometry_msgs.msg.Pose.Resolve(msg.p_end)
    }
    else {
      resolved.p_end = new geometry_msgs.msg.Pose()
    }

    if (msg.start_node_id !== undefined) {
      resolved.start_node_id = msg.start_node_id;
    }
    else {
      resolved.start_node_id = 0
    }

    if (msg.end_node_id !== undefined) {
      resolved.end_node_id = msg.end_node_id;
    }
    else {
      resolved.end_node_id = 0
    }

    if (msg.crossing !== undefined) {
      resolved.crossing = msg.crossing;
    }
    else {
      resolved.crossing = false
    }

    return resolved;
    }
};

module.exports = AgvLineMsg2;

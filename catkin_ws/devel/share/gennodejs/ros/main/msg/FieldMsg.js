// Auto-generated. Do not edit!

// (in-package main.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class FieldMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ranges = null;
      this.start_angle = null;
      this.angular_resolution = null;
      this.protective_field = null;
    }
    else {
      if (initObj.hasOwnProperty('ranges')) {
        this.ranges = initObj.ranges
      }
      else {
        this.ranges = [];
      }
      if (initObj.hasOwnProperty('start_angle')) {
        this.start_angle = initObj.start_angle
      }
      else {
        this.start_angle = 0.0;
      }
      if (initObj.hasOwnProperty('angular_resolution')) {
        this.angular_resolution = initObj.angular_resolution
      }
      else {
        this.angular_resolution = 0.0;
      }
      if (initObj.hasOwnProperty('protective_field')) {
        this.protective_field = initObj.protective_field
      }
      else {
        this.protective_field = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FieldMsg
    // Serialize message field [ranges]
    bufferOffset = _arraySerializer.float32(obj.ranges, buffer, bufferOffset, null);
    // Serialize message field [start_angle]
    bufferOffset = _serializer.float32(obj.start_angle, buffer, bufferOffset);
    // Serialize message field [angular_resolution]
    bufferOffset = _serializer.float32(obj.angular_resolution, buffer, bufferOffset);
    // Serialize message field [protective_field]
    bufferOffset = _serializer.bool(obj.protective_field, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FieldMsg
    let len;
    let data = new FieldMsg(null);
    // Deserialize message field [ranges]
    data.ranges = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [start_angle]
    data.start_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angular_resolution]
    data.angular_resolution = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [protective_field]
    data.protective_field = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.ranges.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'main/FieldMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd92cc93fdff8827129e1f6fd20b75f7e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] ranges
    float32 start_angle
    float32 angular_resolution
    bool protective_field
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FieldMsg(null);
    if (msg.ranges !== undefined) {
      resolved.ranges = msg.ranges;
    }
    else {
      resolved.ranges = []
    }

    if (msg.start_angle !== undefined) {
      resolved.start_angle = msg.start_angle;
    }
    else {
      resolved.start_angle = 0.0
    }

    if (msg.angular_resolution !== undefined) {
      resolved.angular_resolution = msg.angular_resolution;
    }
    else {
      resolved.angular_resolution = 0.0
    }

    if (msg.protective_field !== undefined) {
      resolved.protective_field = msg.protective_field;
    }
    else {
      resolved.protective_field = false
    }

    return resolved;
    }
};

module.exports = FieldMsg;

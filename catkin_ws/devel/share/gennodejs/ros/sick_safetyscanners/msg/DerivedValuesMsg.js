// Auto-generated. Do not edit!

// (in-package sick_safetyscanners.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class DerivedValuesMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.multiplication_factor = null;
      this.number_of_beams = null;
      this.scan_time = null;
      this.start_angle = null;
      this.angular_beam_resolution = null;
      this.interbeam_period = null;
    }
    else {
      if (initObj.hasOwnProperty('multiplication_factor')) {
        this.multiplication_factor = initObj.multiplication_factor
      }
      else {
        this.multiplication_factor = 0;
      }
      if (initObj.hasOwnProperty('number_of_beams')) {
        this.number_of_beams = initObj.number_of_beams
      }
      else {
        this.number_of_beams = 0;
      }
      if (initObj.hasOwnProperty('scan_time')) {
        this.scan_time = initObj.scan_time
      }
      else {
        this.scan_time = 0;
      }
      if (initObj.hasOwnProperty('start_angle')) {
        this.start_angle = initObj.start_angle
      }
      else {
        this.start_angle = 0.0;
      }
      if (initObj.hasOwnProperty('angular_beam_resolution')) {
        this.angular_beam_resolution = initObj.angular_beam_resolution
      }
      else {
        this.angular_beam_resolution = 0.0;
      }
      if (initObj.hasOwnProperty('interbeam_period')) {
        this.interbeam_period = initObj.interbeam_period
      }
      else {
        this.interbeam_period = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DerivedValuesMsg
    // Serialize message field [multiplication_factor]
    bufferOffset = _serializer.uint16(obj.multiplication_factor, buffer, bufferOffset);
    // Serialize message field [number_of_beams]
    bufferOffset = _serializer.uint16(obj.number_of_beams, buffer, bufferOffset);
    // Serialize message field [scan_time]
    bufferOffset = _serializer.uint16(obj.scan_time, buffer, bufferOffset);
    // Serialize message field [start_angle]
    bufferOffset = _serializer.float32(obj.start_angle, buffer, bufferOffset);
    // Serialize message field [angular_beam_resolution]
    bufferOffset = _serializer.float32(obj.angular_beam_resolution, buffer, bufferOffset);
    // Serialize message field [interbeam_period]
    bufferOffset = _serializer.uint32(obj.interbeam_period, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DerivedValuesMsg
    let len;
    let data = new DerivedValuesMsg(null);
    // Deserialize message field [multiplication_factor]
    data.multiplication_factor = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [number_of_beams]
    data.number_of_beams = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [scan_time]
    data.scan_time = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [start_angle]
    data.start_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angular_beam_resolution]
    data.angular_beam_resolution = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [interbeam_period]
    data.interbeam_period = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sick_safetyscanners/DerivedValuesMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '04584ac5d46a750ab91f3b01bac703dd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 multiplication_factor
    uint16 number_of_beams
    uint16 scan_time
    float32 start_angle
    float32 angular_beam_resolution
    uint32 interbeam_period
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DerivedValuesMsg(null);
    if (msg.multiplication_factor !== undefined) {
      resolved.multiplication_factor = msg.multiplication_factor;
    }
    else {
      resolved.multiplication_factor = 0
    }

    if (msg.number_of_beams !== undefined) {
      resolved.number_of_beams = msg.number_of_beams;
    }
    else {
      resolved.number_of_beams = 0
    }

    if (msg.scan_time !== undefined) {
      resolved.scan_time = msg.scan_time;
    }
    else {
      resolved.scan_time = 0
    }

    if (msg.start_angle !== undefined) {
      resolved.start_angle = msg.start_angle;
    }
    else {
      resolved.start_angle = 0.0
    }

    if (msg.angular_beam_resolution !== undefined) {
      resolved.angular_beam_resolution = msg.angular_beam_resolution;
    }
    else {
      resolved.angular_beam_resolution = 0.0
    }

    if (msg.interbeam_period !== undefined) {
      resolved.interbeam_period = msg.interbeam_period;
    }
    else {
      resolved.interbeam_period = 0
    }

    return resolved;
    }
};

module.exports = DerivedValuesMsg;

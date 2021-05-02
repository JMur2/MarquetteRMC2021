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

class ApplicationInputsMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.unsafe_inputs_input_sources = null;
      this.unsafe_inputs_flags = null;
      this.monitoring_case_number_inputs = null;
      this.monitoring_case_number_inputs_flags = null;
      this.linear_velocity_inputs_velocity_0 = null;
      this.linear_velocity_inputs_velocity_0_valid = null;
      this.linear_velocity_inputs_velocity_0_transmitted_safely = null;
      this.linear_velocity_inputs_velocity_1 = null;
      this.linear_velocity_inputs_velocity_1_valid = null;
      this.linear_velocity_inputs_velocity_1_transmitted_safely = null;
      this.sleep_mode_input = null;
    }
    else {
      if (initObj.hasOwnProperty('unsafe_inputs_input_sources')) {
        this.unsafe_inputs_input_sources = initObj.unsafe_inputs_input_sources
      }
      else {
        this.unsafe_inputs_input_sources = [];
      }
      if (initObj.hasOwnProperty('unsafe_inputs_flags')) {
        this.unsafe_inputs_flags = initObj.unsafe_inputs_flags
      }
      else {
        this.unsafe_inputs_flags = [];
      }
      if (initObj.hasOwnProperty('monitoring_case_number_inputs')) {
        this.monitoring_case_number_inputs = initObj.monitoring_case_number_inputs
      }
      else {
        this.monitoring_case_number_inputs = [];
      }
      if (initObj.hasOwnProperty('monitoring_case_number_inputs_flags')) {
        this.monitoring_case_number_inputs_flags = initObj.monitoring_case_number_inputs_flags
      }
      else {
        this.monitoring_case_number_inputs_flags = [];
      }
      if (initObj.hasOwnProperty('linear_velocity_inputs_velocity_0')) {
        this.linear_velocity_inputs_velocity_0 = initObj.linear_velocity_inputs_velocity_0
      }
      else {
        this.linear_velocity_inputs_velocity_0 = 0;
      }
      if (initObj.hasOwnProperty('linear_velocity_inputs_velocity_0_valid')) {
        this.linear_velocity_inputs_velocity_0_valid = initObj.linear_velocity_inputs_velocity_0_valid
      }
      else {
        this.linear_velocity_inputs_velocity_0_valid = false;
      }
      if (initObj.hasOwnProperty('linear_velocity_inputs_velocity_0_transmitted_safely')) {
        this.linear_velocity_inputs_velocity_0_transmitted_safely = initObj.linear_velocity_inputs_velocity_0_transmitted_safely
      }
      else {
        this.linear_velocity_inputs_velocity_0_transmitted_safely = false;
      }
      if (initObj.hasOwnProperty('linear_velocity_inputs_velocity_1')) {
        this.linear_velocity_inputs_velocity_1 = initObj.linear_velocity_inputs_velocity_1
      }
      else {
        this.linear_velocity_inputs_velocity_1 = 0;
      }
      if (initObj.hasOwnProperty('linear_velocity_inputs_velocity_1_valid')) {
        this.linear_velocity_inputs_velocity_1_valid = initObj.linear_velocity_inputs_velocity_1_valid
      }
      else {
        this.linear_velocity_inputs_velocity_1_valid = false;
      }
      if (initObj.hasOwnProperty('linear_velocity_inputs_velocity_1_transmitted_safely')) {
        this.linear_velocity_inputs_velocity_1_transmitted_safely = initObj.linear_velocity_inputs_velocity_1_transmitted_safely
      }
      else {
        this.linear_velocity_inputs_velocity_1_transmitted_safely = false;
      }
      if (initObj.hasOwnProperty('sleep_mode_input')) {
        this.sleep_mode_input = initObj.sleep_mode_input
      }
      else {
        this.sleep_mode_input = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ApplicationInputsMsg
    // Serialize message field [unsafe_inputs_input_sources]
    bufferOffset = _arraySerializer.bool(obj.unsafe_inputs_input_sources, buffer, bufferOffset, null);
    // Serialize message field [unsafe_inputs_flags]
    bufferOffset = _arraySerializer.bool(obj.unsafe_inputs_flags, buffer, bufferOffset, null);
    // Serialize message field [monitoring_case_number_inputs]
    bufferOffset = _arraySerializer.uint16(obj.monitoring_case_number_inputs, buffer, bufferOffset, null);
    // Serialize message field [monitoring_case_number_inputs_flags]
    bufferOffset = _arraySerializer.bool(obj.monitoring_case_number_inputs_flags, buffer, bufferOffset, null);
    // Serialize message field [linear_velocity_inputs_velocity_0]
    bufferOffset = _serializer.int16(obj.linear_velocity_inputs_velocity_0, buffer, bufferOffset);
    // Serialize message field [linear_velocity_inputs_velocity_0_valid]
    bufferOffset = _serializer.bool(obj.linear_velocity_inputs_velocity_0_valid, buffer, bufferOffset);
    // Serialize message field [linear_velocity_inputs_velocity_0_transmitted_safely]
    bufferOffset = _serializer.bool(obj.linear_velocity_inputs_velocity_0_transmitted_safely, buffer, bufferOffset);
    // Serialize message field [linear_velocity_inputs_velocity_1]
    bufferOffset = _serializer.int16(obj.linear_velocity_inputs_velocity_1, buffer, bufferOffset);
    // Serialize message field [linear_velocity_inputs_velocity_1_valid]
    bufferOffset = _serializer.bool(obj.linear_velocity_inputs_velocity_1_valid, buffer, bufferOffset);
    // Serialize message field [linear_velocity_inputs_velocity_1_transmitted_safely]
    bufferOffset = _serializer.bool(obj.linear_velocity_inputs_velocity_1_transmitted_safely, buffer, bufferOffset);
    // Serialize message field [sleep_mode_input]
    bufferOffset = _serializer.uint8(obj.sleep_mode_input, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ApplicationInputsMsg
    let len;
    let data = new ApplicationInputsMsg(null);
    // Deserialize message field [unsafe_inputs_input_sources]
    data.unsafe_inputs_input_sources = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [unsafe_inputs_flags]
    data.unsafe_inputs_flags = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [monitoring_case_number_inputs]
    data.monitoring_case_number_inputs = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [monitoring_case_number_inputs_flags]
    data.monitoring_case_number_inputs_flags = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [linear_velocity_inputs_velocity_0]
    data.linear_velocity_inputs_velocity_0 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [linear_velocity_inputs_velocity_0_valid]
    data.linear_velocity_inputs_velocity_0_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [linear_velocity_inputs_velocity_0_transmitted_safely]
    data.linear_velocity_inputs_velocity_0_transmitted_safely = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [linear_velocity_inputs_velocity_1]
    data.linear_velocity_inputs_velocity_1 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [linear_velocity_inputs_velocity_1_valid]
    data.linear_velocity_inputs_velocity_1_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [linear_velocity_inputs_velocity_1_transmitted_safely]
    data.linear_velocity_inputs_velocity_1_transmitted_safely = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [sleep_mode_input]
    data.sleep_mode_input = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.unsafe_inputs_input_sources.length;
    length += object.unsafe_inputs_flags.length;
    length += 2 * object.monitoring_case_number_inputs.length;
    length += object.monitoring_case_number_inputs_flags.length;
    return length + 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'main/ApplicationInputsMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7b0ded75242c9efbfe5da85d5a0cf07c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool[] unsafe_inputs_input_sources
    bool[] unsafe_inputs_flags
    
    uint16[] monitoring_case_number_inputs
    bool[] monitoring_case_number_inputs_flags
    
    int16 linear_velocity_inputs_velocity_0
    bool linear_velocity_inputs_velocity_0_valid
    bool linear_velocity_inputs_velocity_0_transmitted_safely
    
    int16 linear_velocity_inputs_velocity_1
    bool linear_velocity_inputs_velocity_1_valid
    bool linear_velocity_inputs_velocity_1_transmitted_safely
    
    uint8 sleep_mode_input
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ApplicationInputsMsg(null);
    if (msg.unsafe_inputs_input_sources !== undefined) {
      resolved.unsafe_inputs_input_sources = msg.unsafe_inputs_input_sources;
    }
    else {
      resolved.unsafe_inputs_input_sources = []
    }

    if (msg.unsafe_inputs_flags !== undefined) {
      resolved.unsafe_inputs_flags = msg.unsafe_inputs_flags;
    }
    else {
      resolved.unsafe_inputs_flags = []
    }

    if (msg.monitoring_case_number_inputs !== undefined) {
      resolved.monitoring_case_number_inputs = msg.monitoring_case_number_inputs;
    }
    else {
      resolved.monitoring_case_number_inputs = []
    }

    if (msg.monitoring_case_number_inputs_flags !== undefined) {
      resolved.monitoring_case_number_inputs_flags = msg.monitoring_case_number_inputs_flags;
    }
    else {
      resolved.monitoring_case_number_inputs_flags = []
    }

    if (msg.linear_velocity_inputs_velocity_0 !== undefined) {
      resolved.linear_velocity_inputs_velocity_0 = msg.linear_velocity_inputs_velocity_0;
    }
    else {
      resolved.linear_velocity_inputs_velocity_0 = 0
    }

    if (msg.linear_velocity_inputs_velocity_0_valid !== undefined) {
      resolved.linear_velocity_inputs_velocity_0_valid = msg.linear_velocity_inputs_velocity_0_valid;
    }
    else {
      resolved.linear_velocity_inputs_velocity_0_valid = false
    }

    if (msg.linear_velocity_inputs_velocity_0_transmitted_safely !== undefined) {
      resolved.linear_velocity_inputs_velocity_0_transmitted_safely = msg.linear_velocity_inputs_velocity_0_transmitted_safely;
    }
    else {
      resolved.linear_velocity_inputs_velocity_0_transmitted_safely = false
    }

    if (msg.linear_velocity_inputs_velocity_1 !== undefined) {
      resolved.linear_velocity_inputs_velocity_1 = msg.linear_velocity_inputs_velocity_1;
    }
    else {
      resolved.linear_velocity_inputs_velocity_1 = 0
    }

    if (msg.linear_velocity_inputs_velocity_1_valid !== undefined) {
      resolved.linear_velocity_inputs_velocity_1_valid = msg.linear_velocity_inputs_velocity_1_valid;
    }
    else {
      resolved.linear_velocity_inputs_velocity_1_valid = false
    }

    if (msg.linear_velocity_inputs_velocity_1_transmitted_safely !== undefined) {
      resolved.linear_velocity_inputs_velocity_1_transmitted_safely = msg.linear_velocity_inputs_velocity_1_transmitted_safely;
    }
    else {
      resolved.linear_velocity_inputs_velocity_1_transmitted_safely = false
    }

    if (msg.sleep_mode_input !== undefined) {
      resolved.sleep_mode_input = msg.sleep_mode_input;
    }
    else {
      resolved.sleep_mode_input = 0
    }

    return resolved;
    }
};

module.exports = ApplicationInputsMsg;

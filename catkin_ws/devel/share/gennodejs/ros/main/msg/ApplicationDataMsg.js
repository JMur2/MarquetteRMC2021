// Auto-generated. Do not edit!

// (in-package main.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ApplicationInputsMsg = require('./ApplicationInputsMsg.js');
let ApplicationOutputsMsg = require('./ApplicationOutputsMsg.js');

//-----------------------------------------------------------

class ApplicationDataMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.inputs = null;
      this.outputs = null;
    }
    else {
      if (initObj.hasOwnProperty('inputs')) {
        this.inputs = initObj.inputs
      }
      else {
        this.inputs = new ApplicationInputsMsg();
      }
      if (initObj.hasOwnProperty('outputs')) {
        this.outputs = initObj.outputs
      }
      else {
        this.outputs = new ApplicationOutputsMsg();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ApplicationDataMsg
    // Serialize message field [inputs]
    bufferOffset = ApplicationInputsMsg.serialize(obj.inputs, buffer, bufferOffset);
    // Serialize message field [outputs]
    bufferOffset = ApplicationOutputsMsg.serialize(obj.outputs, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ApplicationDataMsg
    let len;
    let data = new ApplicationDataMsg(null);
    // Deserialize message field [inputs]
    data.inputs = ApplicationInputsMsg.deserialize(buffer, bufferOffset);
    // Deserialize message field [outputs]
    data.outputs = ApplicationOutputsMsg.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ApplicationInputsMsg.getMessageSize(object.inputs);
    length += ApplicationOutputsMsg.getMessageSize(object.outputs);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'main/ApplicationDataMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e2c1cd2050a13f8b7c83b35c17583a56';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ApplicationInputsMsg inputs
    ApplicationOutputsMsg outputs
    
    ================================================================================
    MSG: main/ApplicationInputsMsg
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
    
    
    ================================================================================
    MSG: main/ApplicationOutputsMsg
    bool[] evaluation_path_outputs_eval_out
    bool[] evaluation_path_outputs_is_safe
    bool[] evaluation_path_outputs_is_valid
    
    uint16[] monitoring_case_number_outputs 
    bool[] monitoring_case_number_outputs_flags
    
    uint8 sleep_mode_output
    bool sleep_mode_output_valid
    
    bool error_flag_contamination_warning
    bool error_flag_contamination_error
    bool error_flag_manipulation_error
    bool error_flag_glare
    bool error_flag_reference_contour_intruded
    bool error_flag_critical_error
    bool error_flags_are_valid
    
    
    int16 linear_velocity_outputs_velocity_0
    bool linear_velocity_outputs_velocity_0_valid
    bool linear_velocity_outputs_velocity_0_transmitted_safely
    
    int16 linear_velocity_outputs_velocity_1
    bool linear_velocity_outputs_velocity_1_valid
    bool linear_velocity_outputs_velocity_1_transmitted_safely
    
    int16[] resulting_velocity
    bool[] resulting_velocity_flags
    
     
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ApplicationDataMsg(null);
    if (msg.inputs !== undefined) {
      resolved.inputs = ApplicationInputsMsg.Resolve(msg.inputs)
    }
    else {
      resolved.inputs = new ApplicationInputsMsg()
    }

    if (msg.outputs !== undefined) {
      resolved.outputs = ApplicationOutputsMsg.Resolve(msg.outputs)
    }
    else {
      resolved.outputs = new ApplicationOutputsMsg()
    }

    return resolved;
    }
};

module.exports = ApplicationDataMsg;

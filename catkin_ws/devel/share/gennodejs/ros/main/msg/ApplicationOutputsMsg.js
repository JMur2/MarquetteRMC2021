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

class ApplicationOutputsMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.evaluation_path_outputs_eval_out = null;
      this.evaluation_path_outputs_is_safe = null;
      this.evaluation_path_outputs_is_valid = null;
      this.monitoring_case_number_outputs = null;
      this.monitoring_case_number_outputs_flags = null;
      this.sleep_mode_output = null;
      this.sleep_mode_output_valid = null;
      this.error_flag_contamination_warning = null;
      this.error_flag_contamination_error = null;
      this.error_flag_manipulation_error = null;
      this.error_flag_glare = null;
      this.error_flag_reference_contour_intruded = null;
      this.error_flag_critical_error = null;
      this.error_flags_are_valid = null;
      this.linear_velocity_outputs_velocity_0 = null;
      this.linear_velocity_outputs_velocity_0_valid = null;
      this.linear_velocity_outputs_velocity_0_transmitted_safely = null;
      this.linear_velocity_outputs_velocity_1 = null;
      this.linear_velocity_outputs_velocity_1_valid = null;
      this.linear_velocity_outputs_velocity_1_transmitted_safely = null;
      this.resulting_velocity = null;
      this.resulting_velocity_flags = null;
    }
    else {
      if (initObj.hasOwnProperty('evaluation_path_outputs_eval_out')) {
        this.evaluation_path_outputs_eval_out = initObj.evaluation_path_outputs_eval_out
      }
      else {
        this.evaluation_path_outputs_eval_out = [];
      }
      if (initObj.hasOwnProperty('evaluation_path_outputs_is_safe')) {
        this.evaluation_path_outputs_is_safe = initObj.evaluation_path_outputs_is_safe
      }
      else {
        this.evaluation_path_outputs_is_safe = [];
      }
      if (initObj.hasOwnProperty('evaluation_path_outputs_is_valid')) {
        this.evaluation_path_outputs_is_valid = initObj.evaluation_path_outputs_is_valid
      }
      else {
        this.evaluation_path_outputs_is_valid = [];
      }
      if (initObj.hasOwnProperty('monitoring_case_number_outputs')) {
        this.monitoring_case_number_outputs = initObj.monitoring_case_number_outputs
      }
      else {
        this.monitoring_case_number_outputs = [];
      }
      if (initObj.hasOwnProperty('monitoring_case_number_outputs_flags')) {
        this.monitoring_case_number_outputs_flags = initObj.monitoring_case_number_outputs_flags
      }
      else {
        this.monitoring_case_number_outputs_flags = [];
      }
      if (initObj.hasOwnProperty('sleep_mode_output')) {
        this.sleep_mode_output = initObj.sleep_mode_output
      }
      else {
        this.sleep_mode_output = 0;
      }
      if (initObj.hasOwnProperty('sleep_mode_output_valid')) {
        this.sleep_mode_output_valid = initObj.sleep_mode_output_valid
      }
      else {
        this.sleep_mode_output_valid = false;
      }
      if (initObj.hasOwnProperty('error_flag_contamination_warning')) {
        this.error_flag_contamination_warning = initObj.error_flag_contamination_warning
      }
      else {
        this.error_flag_contamination_warning = false;
      }
      if (initObj.hasOwnProperty('error_flag_contamination_error')) {
        this.error_flag_contamination_error = initObj.error_flag_contamination_error
      }
      else {
        this.error_flag_contamination_error = false;
      }
      if (initObj.hasOwnProperty('error_flag_manipulation_error')) {
        this.error_flag_manipulation_error = initObj.error_flag_manipulation_error
      }
      else {
        this.error_flag_manipulation_error = false;
      }
      if (initObj.hasOwnProperty('error_flag_glare')) {
        this.error_flag_glare = initObj.error_flag_glare
      }
      else {
        this.error_flag_glare = false;
      }
      if (initObj.hasOwnProperty('error_flag_reference_contour_intruded')) {
        this.error_flag_reference_contour_intruded = initObj.error_flag_reference_contour_intruded
      }
      else {
        this.error_flag_reference_contour_intruded = false;
      }
      if (initObj.hasOwnProperty('error_flag_critical_error')) {
        this.error_flag_critical_error = initObj.error_flag_critical_error
      }
      else {
        this.error_flag_critical_error = false;
      }
      if (initObj.hasOwnProperty('error_flags_are_valid')) {
        this.error_flags_are_valid = initObj.error_flags_are_valid
      }
      else {
        this.error_flags_are_valid = false;
      }
      if (initObj.hasOwnProperty('linear_velocity_outputs_velocity_0')) {
        this.linear_velocity_outputs_velocity_0 = initObj.linear_velocity_outputs_velocity_0
      }
      else {
        this.linear_velocity_outputs_velocity_0 = 0;
      }
      if (initObj.hasOwnProperty('linear_velocity_outputs_velocity_0_valid')) {
        this.linear_velocity_outputs_velocity_0_valid = initObj.linear_velocity_outputs_velocity_0_valid
      }
      else {
        this.linear_velocity_outputs_velocity_0_valid = false;
      }
      if (initObj.hasOwnProperty('linear_velocity_outputs_velocity_0_transmitted_safely')) {
        this.linear_velocity_outputs_velocity_0_transmitted_safely = initObj.linear_velocity_outputs_velocity_0_transmitted_safely
      }
      else {
        this.linear_velocity_outputs_velocity_0_transmitted_safely = false;
      }
      if (initObj.hasOwnProperty('linear_velocity_outputs_velocity_1')) {
        this.linear_velocity_outputs_velocity_1 = initObj.linear_velocity_outputs_velocity_1
      }
      else {
        this.linear_velocity_outputs_velocity_1 = 0;
      }
      if (initObj.hasOwnProperty('linear_velocity_outputs_velocity_1_valid')) {
        this.linear_velocity_outputs_velocity_1_valid = initObj.linear_velocity_outputs_velocity_1_valid
      }
      else {
        this.linear_velocity_outputs_velocity_1_valid = false;
      }
      if (initObj.hasOwnProperty('linear_velocity_outputs_velocity_1_transmitted_safely')) {
        this.linear_velocity_outputs_velocity_1_transmitted_safely = initObj.linear_velocity_outputs_velocity_1_transmitted_safely
      }
      else {
        this.linear_velocity_outputs_velocity_1_transmitted_safely = false;
      }
      if (initObj.hasOwnProperty('resulting_velocity')) {
        this.resulting_velocity = initObj.resulting_velocity
      }
      else {
        this.resulting_velocity = [];
      }
      if (initObj.hasOwnProperty('resulting_velocity_flags')) {
        this.resulting_velocity_flags = initObj.resulting_velocity_flags
      }
      else {
        this.resulting_velocity_flags = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ApplicationOutputsMsg
    // Serialize message field [evaluation_path_outputs_eval_out]
    bufferOffset = _arraySerializer.bool(obj.evaluation_path_outputs_eval_out, buffer, bufferOffset, null);
    // Serialize message field [evaluation_path_outputs_is_safe]
    bufferOffset = _arraySerializer.bool(obj.evaluation_path_outputs_is_safe, buffer, bufferOffset, null);
    // Serialize message field [evaluation_path_outputs_is_valid]
    bufferOffset = _arraySerializer.bool(obj.evaluation_path_outputs_is_valid, buffer, bufferOffset, null);
    // Serialize message field [monitoring_case_number_outputs]
    bufferOffset = _arraySerializer.uint16(obj.monitoring_case_number_outputs, buffer, bufferOffset, null);
    // Serialize message field [monitoring_case_number_outputs_flags]
    bufferOffset = _arraySerializer.bool(obj.monitoring_case_number_outputs_flags, buffer, bufferOffset, null);
    // Serialize message field [sleep_mode_output]
    bufferOffset = _serializer.uint8(obj.sleep_mode_output, buffer, bufferOffset);
    // Serialize message field [sleep_mode_output_valid]
    bufferOffset = _serializer.bool(obj.sleep_mode_output_valid, buffer, bufferOffset);
    // Serialize message field [error_flag_contamination_warning]
    bufferOffset = _serializer.bool(obj.error_flag_contamination_warning, buffer, bufferOffset);
    // Serialize message field [error_flag_contamination_error]
    bufferOffset = _serializer.bool(obj.error_flag_contamination_error, buffer, bufferOffset);
    // Serialize message field [error_flag_manipulation_error]
    bufferOffset = _serializer.bool(obj.error_flag_manipulation_error, buffer, bufferOffset);
    // Serialize message field [error_flag_glare]
    bufferOffset = _serializer.bool(obj.error_flag_glare, buffer, bufferOffset);
    // Serialize message field [error_flag_reference_contour_intruded]
    bufferOffset = _serializer.bool(obj.error_flag_reference_contour_intruded, buffer, bufferOffset);
    // Serialize message field [error_flag_critical_error]
    bufferOffset = _serializer.bool(obj.error_flag_critical_error, buffer, bufferOffset);
    // Serialize message field [error_flags_are_valid]
    bufferOffset = _serializer.bool(obj.error_flags_are_valid, buffer, bufferOffset);
    // Serialize message field [linear_velocity_outputs_velocity_0]
    bufferOffset = _serializer.int16(obj.linear_velocity_outputs_velocity_0, buffer, bufferOffset);
    // Serialize message field [linear_velocity_outputs_velocity_0_valid]
    bufferOffset = _serializer.bool(obj.linear_velocity_outputs_velocity_0_valid, buffer, bufferOffset);
    // Serialize message field [linear_velocity_outputs_velocity_0_transmitted_safely]
    bufferOffset = _serializer.bool(obj.linear_velocity_outputs_velocity_0_transmitted_safely, buffer, bufferOffset);
    // Serialize message field [linear_velocity_outputs_velocity_1]
    bufferOffset = _serializer.int16(obj.linear_velocity_outputs_velocity_1, buffer, bufferOffset);
    // Serialize message field [linear_velocity_outputs_velocity_1_valid]
    bufferOffset = _serializer.bool(obj.linear_velocity_outputs_velocity_1_valid, buffer, bufferOffset);
    // Serialize message field [linear_velocity_outputs_velocity_1_transmitted_safely]
    bufferOffset = _serializer.bool(obj.linear_velocity_outputs_velocity_1_transmitted_safely, buffer, bufferOffset);
    // Serialize message field [resulting_velocity]
    bufferOffset = _arraySerializer.int16(obj.resulting_velocity, buffer, bufferOffset, null);
    // Serialize message field [resulting_velocity_flags]
    bufferOffset = _arraySerializer.bool(obj.resulting_velocity_flags, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ApplicationOutputsMsg
    let len;
    let data = new ApplicationOutputsMsg(null);
    // Deserialize message field [evaluation_path_outputs_eval_out]
    data.evaluation_path_outputs_eval_out = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [evaluation_path_outputs_is_safe]
    data.evaluation_path_outputs_is_safe = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [evaluation_path_outputs_is_valid]
    data.evaluation_path_outputs_is_valid = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [monitoring_case_number_outputs]
    data.monitoring_case_number_outputs = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [monitoring_case_number_outputs_flags]
    data.monitoring_case_number_outputs_flags = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [sleep_mode_output]
    data.sleep_mode_output = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sleep_mode_output_valid]
    data.sleep_mode_output_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_flag_contamination_warning]
    data.error_flag_contamination_warning = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_flag_contamination_error]
    data.error_flag_contamination_error = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_flag_manipulation_error]
    data.error_flag_manipulation_error = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_flag_glare]
    data.error_flag_glare = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_flag_reference_contour_intruded]
    data.error_flag_reference_contour_intruded = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_flag_critical_error]
    data.error_flag_critical_error = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_flags_are_valid]
    data.error_flags_are_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [linear_velocity_outputs_velocity_0]
    data.linear_velocity_outputs_velocity_0 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [linear_velocity_outputs_velocity_0_valid]
    data.linear_velocity_outputs_velocity_0_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [linear_velocity_outputs_velocity_0_transmitted_safely]
    data.linear_velocity_outputs_velocity_0_transmitted_safely = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [linear_velocity_outputs_velocity_1]
    data.linear_velocity_outputs_velocity_1 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [linear_velocity_outputs_velocity_1_valid]
    data.linear_velocity_outputs_velocity_1_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [linear_velocity_outputs_velocity_1_transmitted_safely]
    data.linear_velocity_outputs_velocity_1_transmitted_safely = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [resulting_velocity]
    data.resulting_velocity = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [resulting_velocity_flags]
    data.resulting_velocity_flags = _arrayDeserializer.bool(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.evaluation_path_outputs_eval_out.length;
    length += object.evaluation_path_outputs_is_safe.length;
    length += object.evaluation_path_outputs_is_valid.length;
    length += 2 * object.monitoring_case_number_outputs.length;
    length += object.monitoring_case_number_outputs_flags.length;
    length += 2 * object.resulting_velocity.length;
    length += object.resulting_velocity_flags.length;
    return length + 45;
  }

  static datatype() {
    // Returns string type for a message object
    return 'main/ApplicationOutputsMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '04afaf34d19dee3d3399e6f11d12df15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ApplicationOutputsMsg(null);
    if (msg.evaluation_path_outputs_eval_out !== undefined) {
      resolved.evaluation_path_outputs_eval_out = msg.evaluation_path_outputs_eval_out;
    }
    else {
      resolved.evaluation_path_outputs_eval_out = []
    }

    if (msg.evaluation_path_outputs_is_safe !== undefined) {
      resolved.evaluation_path_outputs_is_safe = msg.evaluation_path_outputs_is_safe;
    }
    else {
      resolved.evaluation_path_outputs_is_safe = []
    }

    if (msg.evaluation_path_outputs_is_valid !== undefined) {
      resolved.evaluation_path_outputs_is_valid = msg.evaluation_path_outputs_is_valid;
    }
    else {
      resolved.evaluation_path_outputs_is_valid = []
    }

    if (msg.monitoring_case_number_outputs !== undefined) {
      resolved.monitoring_case_number_outputs = msg.monitoring_case_number_outputs;
    }
    else {
      resolved.monitoring_case_number_outputs = []
    }

    if (msg.monitoring_case_number_outputs_flags !== undefined) {
      resolved.monitoring_case_number_outputs_flags = msg.monitoring_case_number_outputs_flags;
    }
    else {
      resolved.monitoring_case_number_outputs_flags = []
    }

    if (msg.sleep_mode_output !== undefined) {
      resolved.sleep_mode_output = msg.sleep_mode_output;
    }
    else {
      resolved.sleep_mode_output = 0
    }

    if (msg.sleep_mode_output_valid !== undefined) {
      resolved.sleep_mode_output_valid = msg.sleep_mode_output_valid;
    }
    else {
      resolved.sleep_mode_output_valid = false
    }

    if (msg.error_flag_contamination_warning !== undefined) {
      resolved.error_flag_contamination_warning = msg.error_flag_contamination_warning;
    }
    else {
      resolved.error_flag_contamination_warning = false
    }

    if (msg.error_flag_contamination_error !== undefined) {
      resolved.error_flag_contamination_error = msg.error_flag_contamination_error;
    }
    else {
      resolved.error_flag_contamination_error = false
    }

    if (msg.error_flag_manipulation_error !== undefined) {
      resolved.error_flag_manipulation_error = msg.error_flag_manipulation_error;
    }
    else {
      resolved.error_flag_manipulation_error = false
    }

    if (msg.error_flag_glare !== undefined) {
      resolved.error_flag_glare = msg.error_flag_glare;
    }
    else {
      resolved.error_flag_glare = false
    }

    if (msg.error_flag_reference_contour_intruded !== undefined) {
      resolved.error_flag_reference_contour_intruded = msg.error_flag_reference_contour_intruded;
    }
    else {
      resolved.error_flag_reference_contour_intruded = false
    }

    if (msg.error_flag_critical_error !== undefined) {
      resolved.error_flag_critical_error = msg.error_flag_critical_error;
    }
    else {
      resolved.error_flag_critical_error = false
    }

    if (msg.error_flags_are_valid !== undefined) {
      resolved.error_flags_are_valid = msg.error_flags_are_valid;
    }
    else {
      resolved.error_flags_are_valid = false
    }

    if (msg.linear_velocity_outputs_velocity_0 !== undefined) {
      resolved.linear_velocity_outputs_velocity_0 = msg.linear_velocity_outputs_velocity_0;
    }
    else {
      resolved.linear_velocity_outputs_velocity_0 = 0
    }

    if (msg.linear_velocity_outputs_velocity_0_valid !== undefined) {
      resolved.linear_velocity_outputs_velocity_0_valid = msg.linear_velocity_outputs_velocity_0_valid;
    }
    else {
      resolved.linear_velocity_outputs_velocity_0_valid = false
    }

    if (msg.linear_velocity_outputs_velocity_0_transmitted_safely !== undefined) {
      resolved.linear_velocity_outputs_velocity_0_transmitted_safely = msg.linear_velocity_outputs_velocity_0_transmitted_safely;
    }
    else {
      resolved.linear_velocity_outputs_velocity_0_transmitted_safely = false
    }

    if (msg.linear_velocity_outputs_velocity_1 !== undefined) {
      resolved.linear_velocity_outputs_velocity_1 = msg.linear_velocity_outputs_velocity_1;
    }
    else {
      resolved.linear_velocity_outputs_velocity_1 = 0
    }

    if (msg.linear_velocity_outputs_velocity_1_valid !== undefined) {
      resolved.linear_velocity_outputs_velocity_1_valid = msg.linear_velocity_outputs_velocity_1_valid;
    }
    else {
      resolved.linear_velocity_outputs_velocity_1_valid = false
    }

    if (msg.linear_velocity_outputs_velocity_1_transmitted_safely !== undefined) {
      resolved.linear_velocity_outputs_velocity_1_transmitted_safely = msg.linear_velocity_outputs_velocity_1_transmitted_safely;
    }
    else {
      resolved.linear_velocity_outputs_velocity_1_transmitted_safely = false
    }

    if (msg.resulting_velocity !== undefined) {
      resolved.resulting_velocity = msg.resulting_velocity;
    }
    else {
      resolved.resulting_velocity = []
    }

    if (msg.resulting_velocity_flags !== undefined) {
      resolved.resulting_velocity_flags = msg.resulting_velocity_flags;
    }
    else {
      resolved.resulting_velocity_flags = []
    }

    return resolved;
    }
};

module.exports = ApplicationOutputsMsg;

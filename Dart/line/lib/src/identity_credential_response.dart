/**
 * Autogenerated by Thrift Compiler (0.11.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library line.src.identity_credential_response;

import 'dart:typed_data' show Uint8List;
import 'package:thrift/thrift.dart';
import 'package:line/line.dart';

class IdentityCredentialResponse implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("IdentityCredentialResponse");
  static final TField _META_DATA_FIELD_DESC = new TField("metaData", TType.MAP, 1);
  static final TField _RESPONSE_TYPE_FIELD_DESC = new TField("responseType", TType.I32, 2);
  static final TField _CONFIRMATION_VERIFIER_FIELD_DESC = new TField("confirmationVerifier", TType.STRING, 3);
  static final TField _TIMEOUT_IN_SECONDS_FIELD_DESC = new TField("timeoutInSeconds", TType.I64, 4);

  Map<String, String> _metaData;
  static const int METADATA = 1;
  int _responseType;
  static const int RESPONSETYPE = 2;
  String _confirmationVerifier;
  static const int CONFIRMATIONVERIFIER = 3;
  int _timeoutInSeconds = 0;
  static const int TIMEOUTINSECONDS = 4;

  bool __isset_responseType = false;
  bool __isset_timeoutInSeconds = false;

  IdentityCredentialResponse() {
  }

  // metaData
  Map<String, String> get metaData => this._metaData;

  set metaData(Map<String, String> metaData) {
    this._metaData = metaData;
  }

  bool isSetMetaData() => this.metaData != null;

  unsetMetaData() {
    this.metaData = null;
  }

  // responseType
  int get responseType => this._responseType;

  set responseType(int responseType) {
    this._responseType = responseType;
    this.__isset_responseType = true;
  }

  bool isSetResponseType() => this.__isset_responseType;

  unsetResponseType() {
    this.__isset_responseType = false;
  }

  // confirmationVerifier
  String get confirmationVerifier => this._confirmationVerifier;

  set confirmationVerifier(String confirmationVerifier) {
    this._confirmationVerifier = confirmationVerifier;
  }

  bool isSetConfirmationVerifier() => this.confirmationVerifier != null;

  unsetConfirmationVerifier() {
    this.confirmationVerifier = null;
  }

  // timeoutInSeconds
  int get timeoutInSeconds => this._timeoutInSeconds;

  set timeoutInSeconds(int timeoutInSeconds) {
    this._timeoutInSeconds = timeoutInSeconds;
    this.__isset_timeoutInSeconds = true;
  }

  bool isSetTimeoutInSeconds() => this.__isset_timeoutInSeconds;

  unsetTimeoutInSeconds() {
    this.__isset_timeoutInSeconds = false;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case METADATA:
        return this.metaData;
      case RESPONSETYPE:
        return this.responseType;
      case CONFIRMATIONVERIFIER:
        return this.confirmationVerifier;
      case TIMEOUTINSECONDS:
        return this.timeoutInSeconds;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case METADATA:
        if (value == null) {
          unsetMetaData();
        } else {
          this.metaData = value;
        }
        break;

      case RESPONSETYPE:
        if (value == null) {
          unsetResponseType();
        } else {
          this.responseType = value;
        }
        break;

      case CONFIRMATIONVERIFIER:
        if (value == null) {
          unsetConfirmationVerifier();
        } else {
          this.confirmationVerifier = value;
        }
        break;

      case TIMEOUTINSECONDS:
        if (value == null) {
          unsetTimeoutInSeconds();
        } else {
          this.timeoutInSeconds = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case METADATA:
        return isSetMetaData();
      case RESPONSETYPE:
        return isSetResponseType();
      case CONFIRMATIONVERIFIER:
        return isSetConfirmationVerifier();
      case TIMEOUTINSECONDS:
        return isSetTimeoutInSeconds();
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  read(TProtocol iprot) {
    TField field;
    iprot.readStructBegin();
    while (true) {
      field = iprot.readFieldBegin();
      if (field.type == TType.STOP) {
        break;
      }
      switch (field.id) {
        case METADATA:
          if (field.type == TType.MAP) {
            {
              TMap _map20 = iprot.readMapBegin();
              this.metaData = new Map<String, String>();
              for (int _i21 = 0; _i21 < _map20.length; ++_i21) {
                String _key22;
                String _val23;
                _key22 = iprot.readString();
                _val23 = iprot.readString();
                this.metaData[_key22] = _val23;
              }
              iprot.readMapEnd();
            }
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case RESPONSETYPE:
          if (field.type == TType.I32) {
            this.responseType = iprot.readI32();
            this.__isset_responseType = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case CONFIRMATIONVERIFIER:
          if (field.type == TType.STRING) {
            this.confirmationVerifier = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case TIMEOUTINSECONDS:
          if (field.type == TType.I64) {
            this.timeoutInSeconds = iprot.readI64();
            this.__isset_timeoutInSeconds = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        default:
          TProtocolUtil.skip(iprot, field.type);
          break;
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();

    // check for required fields of primitive type, which can't be checked in the validate method
    validate();
  }

  write(TProtocol oprot) {
    validate();

    oprot.writeStructBegin(_STRUCT_DESC);
    if (this.metaData != null) {
      oprot.writeFieldBegin(_META_DATA_FIELD_DESC);
      {
        oprot.writeMapBegin(new TMap(TType.STRING, TType.STRING, this.metaData.length));
        for (var elem25 in this.metaData.keys) {
          oprot.writeString(elem25);
          oprot.writeString(this.metaData[elem25]);
        }
        oprot.writeMapEnd();
      }
      oprot.writeFieldEnd();
    }
    oprot.writeFieldBegin(_RESPONSE_TYPE_FIELD_DESC);
    oprot.writeI32(this.responseType);
    oprot.writeFieldEnd();
    if (this.confirmationVerifier != null) {
      oprot.writeFieldBegin(_CONFIRMATION_VERIFIER_FIELD_DESC);
      oprot.writeString(this.confirmationVerifier);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldBegin(_TIMEOUT_IN_SECONDS_FIELD_DESC);
    oprot.writeI64(this.timeoutInSeconds);
    oprot.writeFieldEnd();
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("IdentityCredentialResponse(");

    ret.write("metaData:");
    if (this.metaData == null) {
      ret.write("null");
    } else {
      ret.write(this.metaData);
    }

    ret.write(", ");
    ret.write("responseType:");
    String responseType_name = IdentityResponseType.VALUES_TO_NAMES[this.responseType];
    if (responseType_name != null) {
      ret.write(responseType_name);
      ret.write(" (");
    }
    ret.write(this.responseType);
    if (responseType_name != null) {
      ret.write(")");
    }

    ret.write(", ");
    ret.write("confirmationVerifier:");
    if (this.confirmationVerifier == null) {
      ret.write("null");
    } else {
      ret.write(this.confirmationVerifier);
    }

    ret.write(", ");
    ret.write("timeoutInSeconds:");
    ret.write(this.timeoutInSeconds);

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
    if (isSetResponseType() && !IdentityResponseType.VALID_VALUES.contains(responseType)) {
      throw new TProtocolError(TProtocolErrorType.UNKNOWN, "The field 'responseType' has been assigned the invalid value $responseType");
    }
  }

}

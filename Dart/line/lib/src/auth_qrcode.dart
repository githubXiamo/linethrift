/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library line.src.auth_qrcode;

import 'dart:typed_data' show Uint8List;
import 'package:thrift/thrift.dart';
import 'package:line/line.dart';

class AuthQrcode implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("AuthQrcode");
  static final TField _QRCODE_FIELD_DESC = new TField("qrcode", TType.STRING, 1);
  static final TField _VERIFIER_FIELD_DESC = new TField("verifier", TType.STRING, 2);
  static final TField _CALLBACK_URL_FIELD_DESC = new TField("callbackUrl", TType.STRING, 3);

  String _qrcode;
  static const int QRCODE = 1;
  String _verifier;
  static const int VERIFIER = 2;
  String _callbackUrl;
  static const int CALLBACKURL = 3;


  AuthQrcode() {
  }

  // qrcode
  String get qrcode => this._qrcode;

  set qrcode(String qrcode) {
    this._qrcode = qrcode;
  }

  bool isSetQrcode() => this.qrcode != null;

  unsetQrcode() {
    this.qrcode = null;
  }

  // verifier
  String get verifier => this._verifier;

  set verifier(String verifier) {
    this._verifier = verifier;
  }

  bool isSetVerifier() => this.verifier != null;

  unsetVerifier() {
    this.verifier = null;
  }

  // callbackUrl
  String get callbackUrl => this._callbackUrl;

  set callbackUrl(String callbackUrl) {
    this._callbackUrl = callbackUrl;
  }

  bool isSetCallbackUrl() => this.callbackUrl != null;

  unsetCallbackUrl() {
    this.callbackUrl = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case QRCODE:
        return this.qrcode;
      case VERIFIER:
        return this.verifier;
      case CALLBACKURL:
        return this.callbackUrl;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case QRCODE:
        if (value == null) {
          unsetQrcode();
        } else {
          this.qrcode = value;
        }
        break;

      case VERIFIER:
        if (value == null) {
          unsetVerifier();
        } else {
          this.verifier = value;
        }
        break;

      case CALLBACKURL:
        if (value == null) {
          unsetCallbackUrl();
        } else {
          this.callbackUrl = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case QRCODE:
        return isSetQrcode();
      case VERIFIER:
        return isSetVerifier();
      case CALLBACKURL:
        return isSetCallbackUrl();
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
        case QRCODE:
          if (field.type == TType.STRING) {
            this.qrcode = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case VERIFIER:
          if (field.type == TType.STRING) {
            this.verifier = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case CALLBACKURL:
          if (field.type == TType.STRING) {
            this.callbackUrl = iprot.readString();
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
    if (this.qrcode != null) {
      oprot.writeFieldBegin(_QRCODE_FIELD_DESC);
      oprot.writeString(this.qrcode);
      oprot.writeFieldEnd();
    }
    if (this.verifier != null) {
      oprot.writeFieldBegin(_VERIFIER_FIELD_DESC);
      oprot.writeString(this.verifier);
      oprot.writeFieldEnd();
    }
    if (this.callbackUrl != null) {
      oprot.writeFieldBegin(_CALLBACK_URL_FIELD_DESC);
      oprot.writeString(this.callbackUrl);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("AuthQrcode(");

    ret.write("qrcode:");
    if (this.qrcode == null) {
      ret.write("null");
    } else {
      ret.write(this.qrcode);
    }

    ret.write(", ");
    ret.write("verifier:");
    if (this.verifier == null) {
      ret.write("null");
    } else {
      ret.write(this.verifier);
    }

    ret.write(", ");
    ret.write("callbackUrl:");
    if (this.callbackUrl == null) {
      ret.write("null");
    } else {
      ret.write(this.callbackUrl);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }

}


/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library line.src.simple_channel_client;

import 'dart:typed_data' show Uint8List;
import 'package:thrift/thrift.dart';
import 'package:line/line.dart';

class SimpleChannelClient implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("SimpleChannelClient");
  static final TField _APPLICATION_TYPE_FIELD_DESC = new TField("applicationType", TType.STRING, 1);
  static final TField _APPLICATION_VERSION_FIELD_DESC = new TField("applicationVersion", TType.STRING, 2);
  static final TField _LOCALE_FIELD_DESC = new TField("locale", TType.STRING, 3);

  String _applicationType;
  static const int APPLICATIONTYPE = 1;
  String _applicationVersion;
  static const int APPLICATIONVERSION = 2;
  String _locale;
  static const int LOCALE = 3;


  SimpleChannelClient() {
  }

  // applicationType
  String get applicationType => this._applicationType;

  set applicationType(String applicationType) {
    this._applicationType = applicationType;
  }

  bool isSetApplicationType() => this.applicationType != null;

  unsetApplicationType() {
    this.applicationType = null;
  }

  // applicationVersion
  String get applicationVersion => this._applicationVersion;

  set applicationVersion(String applicationVersion) {
    this._applicationVersion = applicationVersion;
  }

  bool isSetApplicationVersion() => this.applicationVersion != null;

  unsetApplicationVersion() {
    this.applicationVersion = null;
  }

  // locale
  String get locale => this._locale;

  set locale(String locale) {
    this._locale = locale;
  }

  bool isSetLocale() => this.locale != null;

  unsetLocale() {
    this.locale = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case APPLICATIONTYPE:
        return this.applicationType;
      case APPLICATIONVERSION:
        return this.applicationVersion;
      case LOCALE:
        return this.locale;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case APPLICATIONTYPE:
        if (value == null) {
          unsetApplicationType();
        } else {
          this.applicationType = value;
        }
        break;

      case APPLICATIONVERSION:
        if (value == null) {
          unsetApplicationVersion();
        } else {
          this.applicationVersion = value;
        }
        break;

      case LOCALE:
        if (value == null) {
          unsetLocale();
        } else {
          this.locale = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case APPLICATIONTYPE:
        return isSetApplicationType();
      case APPLICATIONVERSION:
        return isSetApplicationVersion();
      case LOCALE:
        return isSetLocale();
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
        case APPLICATIONTYPE:
          if (field.type == TType.STRING) {
            this.applicationType = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case APPLICATIONVERSION:
          if (field.type == TType.STRING) {
            this.applicationVersion = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case LOCALE:
          if (field.type == TType.STRING) {
            this.locale = iprot.readString();
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
    if (this.applicationType != null) {
      oprot.writeFieldBegin(_APPLICATION_TYPE_FIELD_DESC);
      oprot.writeString(this.applicationType);
      oprot.writeFieldEnd();
    }
    if (this.applicationVersion != null) {
      oprot.writeFieldBegin(_APPLICATION_VERSION_FIELD_DESC);
      oprot.writeString(this.applicationVersion);
      oprot.writeFieldEnd();
    }
    if (this.locale != null) {
      oprot.writeFieldBegin(_LOCALE_FIELD_DESC);
      oprot.writeString(this.locale);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("SimpleChannelClient(");

    ret.write("applicationType:");
    if (this.applicationType == null) {
      ret.write("null");
    } else {
      ret.write(this.applicationType);
    }

    ret.write(", ");
    ret.write("applicationVersion:");
    if (this.applicationVersion == null) {
      ret.write("null");
    } else {
      ret.write(this.applicationVersion);
    }

    ret.write(", ");
    ret.write("locale:");
    if (this.locale == null) {
      ret.write("null");
    } else {
      ret.write(this.locale);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }

}

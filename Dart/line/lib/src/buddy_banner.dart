/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library line.src.buddy_banner;

import 'dart:typed_data' show Uint8List;
import 'package:thrift/thrift.dart';
import 'package:line/line.dart';

class BuddyBanner implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("BuddyBanner");
  static final TField _BUDDY_BANNER_LINK_TYPE_FIELD_DESC = new TField("buddyBannerLinkType", TType.I32, 1);
  static final TField _BUDDY_BANNER_LINK_FIELD_DESC = new TField("buddyBannerLink", TType.STRING, 2);
  static final TField _BUDDY_BANNER_IMAGE_URL_FIELD_DESC = new TField("buddyBannerImageUrl", TType.STRING, 3);

  int _buddyBannerLinkType;
  static const int BUDDYBANNERLINKTYPE = 1;
  String _buddyBannerLink;
  static const int BUDDYBANNERLINK = 2;
  String _buddyBannerImageUrl;
  static const int BUDDYBANNERIMAGEURL = 3;

  bool __isset_buddyBannerLinkType = false;

  BuddyBanner() {
  }

  // buddyBannerLinkType
  int get buddyBannerLinkType => this._buddyBannerLinkType;

  set buddyBannerLinkType(int buddyBannerLinkType) {
    this._buddyBannerLinkType = buddyBannerLinkType;
    this.__isset_buddyBannerLinkType = true;
  }

  bool isSetBuddyBannerLinkType() => this.__isset_buddyBannerLinkType;

  unsetBuddyBannerLinkType() {
    this.__isset_buddyBannerLinkType = false;
  }

  // buddyBannerLink
  String get buddyBannerLink => this._buddyBannerLink;

  set buddyBannerLink(String buddyBannerLink) {
    this._buddyBannerLink = buddyBannerLink;
  }

  bool isSetBuddyBannerLink() => this.buddyBannerLink != null;

  unsetBuddyBannerLink() {
    this.buddyBannerLink = null;
  }

  // buddyBannerImageUrl
  String get buddyBannerImageUrl => this._buddyBannerImageUrl;

  set buddyBannerImageUrl(String buddyBannerImageUrl) {
    this._buddyBannerImageUrl = buddyBannerImageUrl;
  }

  bool isSetBuddyBannerImageUrl() => this.buddyBannerImageUrl != null;

  unsetBuddyBannerImageUrl() {
    this.buddyBannerImageUrl = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case BUDDYBANNERLINKTYPE:
        return this.buddyBannerLinkType;
      case BUDDYBANNERLINK:
        return this.buddyBannerLink;
      case BUDDYBANNERIMAGEURL:
        return this.buddyBannerImageUrl;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case BUDDYBANNERLINKTYPE:
        if (value == null) {
          unsetBuddyBannerLinkType();
        } else {
          this.buddyBannerLinkType = value;
        }
        break;

      case BUDDYBANNERLINK:
        if (value == null) {
          unsetBuddyBannerLink();
        } else {
          this.buddyBannerLink = value;
        }
        break;

      case BUDDYBANNERIMAGEURL:
        if (value == null) {
          unsetBuddyBannerImageUrl();
        } else {
          this.buddyBannerImageUrl = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case BUDDYBANNERLINKTYPE:
        return isSetBuddyBannerLinkType();
      case BUDDYBANNERLINK:
        return isSetBuddyBannerLink();
      case BUDDYBANNERIMAGEURL:
        return isSetBuddyBannerImageUrl();
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
        case BUDDYBANNERLINKTYPE:
          if (field.type == TType.I32) {
            this.buddyBannerLinkType = iprot.readI32();
            this.__isset_buddyBannerLinkType = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case BUDDYBANNERLINK:
          if (field.type == TType.STRING) {
            this.buddyBannerLink = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case BUDDYBANNERIMAGEURL:
          if (field.type == TType.STRING) {
            this.buddyBannerImageUrl = iprot.readString();
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
    oprot.writeFieldBegin(_BUDDY_BANNER_LINK_TYPE_FIELD_DESC);
    oprot.writeI32(this.buddyBannerLinkType);
    oprot.writeFieldEnd();
    if (this.buddyBannerLink != null) {
      oprot.writeFieldBegin(_BUDDY_BANNER_LINK_FIELD_DESC);
      oprot.writeString(this.buddyBannerLink);
      oprot.writeFieldEnd();
    }
    if (this.buddyBannerImageUrl != null) {
      oprot.writeFieldBegin(_BUDDY_BANNER_IMAGE_URL_FIELD_DESC);
      oprot.writeString(this.buddyBannerImageUrl);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("BuddyBanner(");

    ret.write("buddyBannerLinkType:");
    String buddyBannerLinkType_name = BuddyBannerLinkType.VALUES_TO_NAMES[this.buddyBannerLinkType];
    if (buddyBannerLinkType_name != null) {
      ret.write(buddyBannerLinkType_name);
      ret.write(" (");
    }
    ret.write(this.buddyBannerLinkType);
    if (buddyBannerLinkType_name != null) {
      ret.write(")");
    }

    ret.write(", ");
    ret.write("buddyBannerLink:");
    if (this.buddyBannerLink == null) {
      ret.write("null");
    } else {
      ret.write(this.buddyBannerLink);
    }

    ret.write(", ");
    ret.write("buddyBannerImageUrl:");
    if (this.buddyBannerImageUrl == null) {
      ret.write("null");
    } else {
      ret.write(this.buddyBannerImageUrl);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
    if (isSetBuddyBannerLinkType() && !BuddyBannerLinkType.VALID_VALUES.contains(buddyBannerLinkType)) {
      throw new TProtocolError(TProtocolErrorType.UNKNOWN, "The field 'buddyBannerLinkType' has been assigned the invalid value $buddyBannerLinkType");
    }
  }

}


/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library line.src.reject_square_members_response;

import 'dart:typed_data' show Uint8List;
import 'package:thrift/thrift.dart';
import 'package:line/line.dart';

class RejectSquareMembersResponse implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("RejectSquareMembersResponse");
  static final TField _REJECTED_MEMBERS_FIELD_DESC = new TField("rejectedMembers", TType.LIST, 1);
  static final TField _STATUS_FIELD_DESC = new TField("status", TType.STRUCT, 2);

  List<SquareMember> _rejectedMembers;
  static const int REJECTEDMEMBERS = 1;
  SquareStatus _status;
  static const int STATUS = 2;


  RejectSquareMembersResponse() {
  }

  // rejectedMembers
  List<SquareMember> get rejectedMembers => this._rejectedMembers;

  set rejectedMembers(List<SquareMember> rejectedMembers) {
    this._rejectedMembers = rejectedMembers;
  }

  bool isSetRejectedMembers() => this.rejectedMembers != null;

  unsetRejectedMembers() {
    this.rejectedMembers = null;
  }

  // status
  SquareStatus get status => this._status;

  set status(SquareStatus status) {
    this._status = status;
  }

  bool isSetStatus() => this.status != null;

  unsetStatus() {
    this.status = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case REJECTEDMEMBERS:
        return this.rejectedMembers;
      case STATUS:
        return this.status;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case REJECTEDMEMBERS:
        if (value == null) {
          unsetRejectedMembers();
        } else {
          this.rejectedMembers = value;
        }
        break;

      case STATUS:
        if (value == null) {
          unsetStatus();
        } else {
          this.status = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case REJECTEDMEMBERS:
        return isSetRejectedMembers();
      case STATUS:
        return isSetStatus();
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
        case REJECTEDMEMBERS:
          if (field.type == TType.LIST) {
            {
              TList _list476 = iprot.readListBegin();
              this.rejectedMembers = new List<SquareMember>();
              for (int _i477 = 0; _i477 < _list476.length; ++_i477) {
                SquareMember _elem478;
                _elem478 = new SquareMember();
                _elem478.read(iprot);
                this.rejectedMembers.add(_elem478);
              }
              iprot.readListEnd();
            }
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case STATUS:
          if (field.type == TType.STRUCT) {
            this.status = new SquareStatus();
            this.status.read(iprot);
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
    if (this.rejectedMembers != null) {
      oprot.writeFieldBegin(_REJECTED_MEMBERS_FIELD_DESC);
      {
        oprot.writeListBegin(new TList(TType.STRUCT, this.rejectedMembers.length));
        for (var elem479 in this.rejectedMembers) {
          elem479.write(oprot);
        }
        oprot.writeListEnd();
      }
      oprot.writeFieldEnd();
    }
    if (this.status != null) {
      oprot.writeFieldBegin(_STATUS_FIELD_DESC);
      this.status.write(oprot);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("RejectSquareMembersResponse(");

    ret.write("rejectedMembers:");
    if (this.rejectedMembers == null) {
      ret.write("null");
    } else {
      ret.write(this.rejectedMembers);
    }

    ret.write(", ");
    ret.write("status:");
    if (this.status == null) {
      ret.write("null");
    } else {
      ret.write(this.status);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }

}

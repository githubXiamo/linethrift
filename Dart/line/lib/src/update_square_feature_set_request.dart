/**
 * Autogenerated by Thrift Compiler (0.11.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library line.src.update_square_feature_set_request;

import 'dart:typed_data' show Uint8List;
import 'package:thrift/thrift.dart';
import 'package:line/line.dart';

class UpdateSquareFeatureSetRequest implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("UpdateSquareFeatureSetRequest");
  static final TField _UPDATE_ATTRIBUTES_FIELD_DESC = new TField("updateAttributes", TType.SET, 2);
  static final TField _SQUARE_FEATURE_SET_FIELD_DESC = new TField("squareFeatureSet", TType.STRUCT, 3);

  Set<int> _updateAttributes;
  static const int UPDATEATTRIBUTES = 2;
  SquareFeatureSet _squareFeatureSet;
  static const int SQUAREFEATURESET = 3;


  UpdateSquareFeatureSetRequest() {
  }

  // updateAttributes
  Set<int> get updateAttributes => this._updateAttributes;

  set updateAttributes(Set<int> updateAttributes) {
    this._updateAttributes = updateAttributes;
  }

  bool isSetUpdateAttributes() => this.updateAttributes != null;

  unsetUpdateAttributes() {
    this.updateAttributes = null;
  }

  // squareFeatureSet
  SquareFeatureSet get squareFeatureSet => this._squareFeatureSet;

  set squareFeatureSet(SquareFeatureSet squareFeatureSet) {
    this._squareFeatureSet = squareFeatureSet;
  }

  bool isSetSquareFeatureSet() => this.squareFeatureSet != null;

  unsetSquareFeatureSet() {
    this.squareFeatureSet = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case UPDATEATTRIBUTES:
        return this.updateAttributes;
      case SQUAREFEATURESET:
        return this.squareFeatureSet;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case UPDATEATTRIBUTES:
        if (value == null) {
          unsetUpdateAttributes();
        } else {
          this.updateAttributes = value;
        }
        break;

      case SQUAREFEATURESET:
        if (value == null) {
          unsetSquareFeatureSet();
        } else {
          this.squareFeatureSet = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case UPDATEATTRIBUTES:
        return isSetUpdateAttributes();
      case SQUAREFEATURESET:
        return isSetSquareFeatureSet();
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
        case UPDATEATTRIBUTES:
          if (field.type == TType.SET) {
            {
              TSet _set526 = iprot.readSetBegin();
              this.updateAttributes = new Set<int>();
              for (int _i527 = 0; _i527 < _set526.length; ++_i527) {
                int _elem528;
                _elem528 = iprot.readI32();
                this.updateAttributes.add(_elem528);
              }
              iprot.readSetEnd();
            }
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case SQUAREFEATURESET:
          if (field.type == TType.STRUCT) {
            this.squareFeatureSet = new SquareFeatureSet();
            this.squareFeatureSet.read(iprot);
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
    if (this.updateAttributes != null) {
      oprot.writeFieldBegin(_UPDATE_ATTRIBUTES_FIELD_DESC);
      {
        oprot.writeSetBegin(new TSet(TType.I32, this.updateAttributes.length));
        for (var elem529 in this.updateAttributes) {
          oprot.writeI32(elem529);
        }
        oprot.writeSetEnd();
      }
      oprot.writeFieldEnd();
    }
    if (this.squareFeatureSet != null) {
      oprot.writeFieldBegin(_SQUARE_FEATURE_SET_FIELD_DESC);
      this.squareFeatureSet.write(oprot);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("UpdateSquareFeatureSetRequest(");

    ret.write("updateAttributes:");
    if (this.updateAttributes == null) {
      ret.write("null");
    } else {
      ret.write(this.updateAttributes);
    }

    ret.write(", ");
    ret.write("squareFeatureSet:");
    if (this.squareFeatureSet == null) {
      ret.write("null");
    } else {
      ret.write(this.squareFeatureSet);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }

}

/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library line.src.phone_verification_result;

import 'dart:typed_data' show Uint8List;
import 'package:thrift/thrift.dart';
import 'package:line/line.dart';

class PhoneVerificationResult implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("PhoneVerificationResult");
  static final TField _VERIFICATION_RESULT_FIELD_DESC = new TField("verificationResult", TType.I32, 1);
  static final TField _ACCOUNT_MIGRATION_CHECK_TYPE_FIELD_DESC = new TField("accountMigrationCheckType", TType.I32, 2);
  static final TField _RECOMMEND_ADD_FRIENDS_FIELD_DESC = new TField("recommendAddFriends", TType.BOOL, 3);

  int _verificationResult;
  static const int VERIFICATIONRESULT = 1;
  int _accountMigrationCheckType;
  static const int ACCOUNTMIGRATIONCHECKTYPE = 2;
  bool _recommendAddFriends = false;
  static const int RECOMMENDADDFRIENDS = 3;

  bool __isset_verificationResult = false;
  bool __isset_accountMigrationCheckType = false;
  bool __isset_recommendAddFriends = false;

  PhoneVerificationResult() {
  }

  // verificationResult
  int get verificationResult => this._verificationResult;

  set verificationResult(int verificationResult) {
    this._verificationResult = verificationResult;
    this.__isset_verificationResult = true;
  }

  bool isSetVerificationResult() => this.__isset_verificationResult;

  unsetVerificationResult() {
    this.__isset_verificationResult = false;
  }

  // accountMigrationCheckType
  int get accountMigrationCheckType => this._accountMigrationCheckType;

  set accountMigrationCheckType(int accountMigrationCheckType) {
    this._accountMigrationCheckType = accountMigrationCheckType;
    this.__isset_accountMigrationCheckType = true;
  }

  bool isSetAccountMigrationCheckType() => this.__isset_accountMigrationCheckType;

  unsetAccountMigrationCheckType() {
    this.__isset_accountMigrationCheckType = false;
  }

  // recommendAddFriends
  bool get recommendAddFriends => this._recommendAddFriends;

  set recommendAddFriends(bool recommendAddFriends) {
    this._recommendAddFriends = recommendAddFriends;
    this.__isset_recommendAddFriends = true;
  }

  bool isSetRecommendAddFriends() => this.__isset_recommendAddFriends;

  unsetRecommendAddFriends() {
    this.__isset_recommendAddFriends = false;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case VERIFICATIONRESULT:
        return this.verificationResult;
      case ACCOUNTMIGRATIONCHECKTYPE:
        return this.accountMigrationCheckType;
      case RECOMMENDADDFRIENDS:
        return this.recommendAddFriends;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case VERIFICATIONRESULT:
        if (value == null) {
          unsetVerificationResult();
        } else {
          this.verificationResult = value;
        }
        break;

      case ACCOUNTMIGRATIONCHECKTYPE:
        if (value == null) {
          unsetAccountMigrationCheckType();
        } else {
          this.accountMigrationCheckType = value;
        }
        break;

      case RECOMMENDADDFRIENDS:
        if (value == null) {
          unsetRecommendAddFriends();
        } else {
          this.recommendAddFriends = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case VERIFICATIONRESULT:
        return isSetVerificationResult();
      case ACCOUNTMIGRATIONCHECKTYPE:
        return isSetAccountMigrationCheckType();
      case RECOMMENDADDFRIENDS:
        return isSetRecommendAddFriends();
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
        case VERIFICATIONRESULT:
          if (field.type == TType.I32) {
            this.verificationResult = iprot.readI32();
            this.__isset_verificationResult = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case ACCOUNTMIGRATIONCHECKTYPE:
          if (field.type == TType.I32) {
            this.accountMigrationCheckType = iprot.readI32();
            this.__isset_accountMigrationCheckType = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case RECOMMENDADDFRIENDS:
          if (field.type == TType.BOOL) {
            this.recommendAddFriends = iprot.readBool();
            this.__isset_recommendAddFriends = true;
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
    oprot.writeFieldBegin(_VERIFICATION_RESULT_FIELD_DESC);
    oprot.writeI32(this.verificationResult);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_ACCOUNT_MIGRATION_CHECK_TYPE_FIELD_DESC);
    oprot.writeI32(this.accountMigrationCheckType);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_RECOMMEND_ADD_FRIENDS_FIELD_DESC);
    oprot.writeBool(this.recommendAddFriends);
    oprot.writeFieldEnd();
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("PhoneVerificationResult(");

    ret.write("verificationResult:");
    String verificationResult_name = VerificationResult.VALUES_TO_NAMES[this.verificationResult];
    if (verificationResult_name != null) {
      ret.write(verificationResult_name);
      ret.write(" (");
    }
    ret.write(this.verificationResult);
    if (verificationResult_name != null) {
      ret.write(")");
    }

    ret.write(", ");
    ret.write("accountMigrationCheckType:");
    String accountMigrationCheckType_name = AccountMigrationCheckType.VALUES_TO_NAMES[this.accountMigrationCheckType];
    if (accountMigrationCheckType_name != null) {
      ret.write(accountMigrationCheckType_name);
      ret.write(" (");
    }
    ret.write(this.accountMigrationCheckType);
    if (accountMigrationCheckType_name != null) {
      ret.write(")");
    }

    ret.write(", ");
    ret.write("recommendAddFriends:");
    ret.write(this.recommendAddFriends);

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
    if (isSetVerificationResult() && !VerificationResult.VALID_VALUES.contains(verificationResult)) {
      throw new TProtocolError(TProtocolErrorType.UNKNOWN, "The field 'verificationResult' has been assigned the invalid value $verificationResult");
    }
    if (isSetAccountMigrationCheckType() && !AccountMigrationCheckType.VALID_VALUES.contains(accountMigrationCheckType)) {
      throw new TProtocolError(TProtocolErrorType.UNKNOWN, "The field 'accountMigrationCheckType' has been assigned the invalid value $accountMigrationCheckType");
    }
  }

}

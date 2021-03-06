/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
import java.util.Hashtable;
import java.util.Vector;
import java.util.Enumeration;

import org.apache.thrift.*;
import org.apache.thrift.meta_data.*;
import org.apache.thrift.transport.*;
import org.apache.thrift.protocol.*;

public class SquareException extends Exception implements TBase {
  private static final TStruct STRUCT_DESC = new TStruct("SquareException");

  private static final TField ERROR_CODE_FIELD_DESC = new TField("errorCode", TType.I32, (short)1);
  private static final TField ERROR_EXTRA_INFO_FIELD_DESC = new TField("errorExtraInfo", TType.STRUCT, (short)2);
  private static final TField REASON_FIELD_DESC = new TField("reason", TType.STRING, (short)3);

  private SQErrorCode errorCode;
  private ErrorExtraInfo errorExtraInfo;
  private String reason;

  // isset id assignments

  public SquareException() {
  }

  public SquareException(
    SQErrorCode errorCode,
    ErrorExtraInfo errorExtraInfo,
    String reason)
  {
    this();
    this.errorCode = errorCode;
    this.errorExtraInfo = errorExtraInfo;
    this.reason = reason;
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public SquareException(SquareException other) {
    if (other.isSetErrorCode()) {
      this.errorCode = other.errorCode;
    }
    if (other.isSetErrorExtraInfo()) {
      this.errorExtraInfo = new ErrorExtraInfo(other.errorExtraInfo);
    }
    if (other.isSetReason()) {
      this.reason = other.reason;
    }
  }

  public SquareException deepCopy() {
    return new SquareException(this);
  }

  public void clear() {
    this.errorCode = null;
    this.errorExtraInfo = null;
    this.reason = null;
  }

  /**
   * 
   * @see SQErrorCode
   */
  public SQErrorCode getErrorCode() {
    return this.errorCode;
  }

  /**
   * 
   * @see SQErrorCode
   */
  public void setErrorCode(SQErrorCode errorCode) {
    this.errorCode = errorCode;
  }

  public void unsetErrorCode() {
    this.errorCode = null;
  }

  /** Returns true if field errorCode is set (has been assigned a value) and false otherwise */
  public boolean isSetErrorCode() {
    return this.errorCode != null;
  }

  public void setErrorCodeIsSet(boolean value) {
    if (!value) {
      this.errorCode = null;
    }
  }

  public ErrorExtraInfo getErrorExtraInfo() {
    return this.errorExtraInfo;
  }

  public void setErrorExtraInfo(ErrorExtraInfo errorExtraInfo) {
    this.errorExtraInfo = errorExtraInfo;
  }

  public void unsetErrorExtraInfo() {
    this.errorExtraInfo = null;
  }

  /** Returns true if field errorExtraInfo is set (has been assigned a value) and false otherwise */
  public boolean isSetErrorExtraInfo() {
    return this.errorExtraInfo != null;
  }

  public void setErrorExtraInfoIsSet(boolean value) {
    if (!value) {
      this.errorExtraInfo = null;
    }
  }

  public String getReason() {
    return this.reason;
  }

  public void setReason(String reason) {
    this.reason = reason;
  }

  public void unsetReason() {
    this.reason = null;
  }

  /** Returns true if field reason is set (has been assigned a value) and false otherwise */
  public boolean isSetReason() {
    return this.reason != null;
  }

  public void setReasonIsSet(boolean value) {
    if (!value) {
      this.reason = null;
    }
  }

  public boolean equals(Object that) {
    if (that == null)
      return false;
    if (that instanceof SquareException)
      return this.equals((SquareException)that);
    return false;
  }

  public boolean equals(SquareException that) {
    if (that == null)
      return false;
    if (this == that)
      return true;

    boolean this_present_errorCode = true && this.isSetErrorCode();
    boolean that_present_errorCode = true && that.isSetErrorCode();
    if (this_present_errorCode || that_present_errorCode) {
      if (!(this_present_errorCode && that_present_errorCode))
        return false;
      if (!this.errorCode.equals(that.errorCode))
        return false;
    }

    boolean this_present_errorExtraInfo = true && this.isSetErrorExtraInfo();
    boolean that_present_errorExtraInfo = true && that.isSetErrorExtraInfo();
    if (this_present_errorExtraInfo || that_present_errorExtraInfo) {
      if (!(this_present_errorExtraInfo && that_present_errorExtraInfo))
        return false;
      if (!this.errorExtraInfo.equals(that.errorExtraInfo))
        return false;
    }

    boolean this_present_reason = true && this.isSetReason();
    boolean that_present_reason = true && that.isSetReason();
    if (this_present_reason || that_present_reason) {
      if (!(this_present_reason && that_present_reason))
        return false;
      if (!this.reason.equals(that.reason))
        return false;
    }

    return true;
  }

  public int hashCode() {
    return 0;
  }

  public int compareTo(Object otherObject) {
    if (!getClass().equals(otherObject.getClass())) {
      return getClass().getName().compareTo(otherObject.getClass().getName());
    }

    SquareException other = (SquareException)otherObject;    int lastComparison = 0;

    lastComparison = TBaseHelper.compareTo(isSetErrorCode(), other.isSetErrorCode());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetErrorCode()) {
      lastComparison = TBaseHelper.compareTo(this.errorCode, other.errorCode);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetErrorExtraInfo(), other.isSetErrorExtraInfo());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetErrorExtraInfo()) {
      lastComparison = this.errorExtraInfo.compareTo(other.errorExtraInfo);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetReason(), other.isSetReason());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetReason()) {
      lastComparison = TBaseHelper.compareTo(this.reason, other.reason);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    return 0;
  }

  public void read(TProtocol iprot) throws TException {
    TField field;
    iprot.readStructBegin();
    while (true)
    {
      field = iprot.readFieldBegin();
      if (field.type == TType.STOP) { 
        break;
      }
      switch (field.id) {
        case 1: // ERROR_CODE
          if (field.type == TType.I32) {
            this.errorCode = SQErrorCode.findByValue(iprot.readI32());
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 2: // ERROR_EXTRA_INFO
          if (field.type == TType.STRUCT) {
            this.errorExtraInfo = new ErrorExtraInfo();
            this.errorExtraInfo.read(iprot);
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 3: // REASON
          if (field.type == TType.STRING) {
            this.reason = iprot.readString();
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        default:
          TProtocolUtil.skip(iprot, field.type);
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();
    validate();
  }

  public void write(TProtocol oprot) throws TException {
    validate();

    oprot.writeStructBegin(STRUCT_DESC);
    if (this.errorCode != null) {
      oprot.writeFieldBegin(ERROR_CODE_FIELD_DESC);
      oprot.writeI32(this.errorCode.getValue());
      oprot.writeFieldEnd();
    }
    if (this.errorExtraInfo != null) {
      oprot.writeFieldBegin(ERROR_EXTRA_INFO_FIELD_DESC);
      this.errorExtraInfo.write(oprot);
      oprot.writeFieldEnd();
    }
    if (this.reason != null) {
      oprot.writeFieldBegin(REASON_FIELD_DESC);
      oprot.writeString(this.reason);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  public String toString() {
    StringBuffer sb = new StringBuffer("SquareException(");
    boolean first = true;

    sb.append("errorCode:");
    if (this.errorCode == null) {
      sb.append("null");
    } else {
      sb.append(this.errorCode);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("errorExtraInfo:");
    if (this.errorExtraInfo == null) {
      sb.append("null");
    } else {
      sb.append(this.errorExtraInfo);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("reason:");
    if (this.reason == null) {
      sb.append("null");
    } else {
      sb.append(this.reason);
    }
    first = false;
    sb.append(")");
    return sb.toString();
  }

  public void validate() throws TException {
    // check for required fields
  }

}


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

public class PaidCallAdCountry implements TBase {
  private static final TStruct STRUCT_DESC = new TStruct("PaidCallAdCountry");

  private static final TField COUNTRY_CODE_FIELD_DESC = new TField("countryCode", TType.STRING, (short)1);
  private static final TField RATE_DIVISION_FIELD_DESC = new TField("rateDivision", TType.STRING, (short)2);

  private String countryCode;
  private String rateDivision;

  // isset id assignments

  public PaidCallAdCountry() {
  }

  public PaidCallAdCountry(
    String countryCode,
    String rateDivision)
  {
    this();
    this.countryCode = countryCode;
    this.rateDivision = rateDivision;
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public PaidCallAdCountry(PaidCallAdCountry other) {
    if (other.isSetCountryCode()) {
      this.countryCode = other.countryCode;
    }
    if (other.isSetRateDivision()) {
      this.rateDivision = other.rateDivision;
    }
  }

  public PaidCallAdCountry deepCopy() {
    return new PaidCallAdCountry(this);
  }

  public void clear() {
    this.countryCode = null;
    this.rateDivision = null;
  }

  public String getCountryCode() {
    return this.countryCode;
  }

  public void setCountryCode(String countryCode) {
    this.countryCode = countryCode;
  }

  public void unsetCountryCode() {
    this.countryCode = null;
  }

  /** Returns true if field countryCode is set (has been assigned a value) and false otherwise */
  public boolean isSetCountryCode() {
    return this.countryCode != null;
  }

  public void setCountryCodeIsSet(boolean value) {
    if (!value) {
      this.countryCode = null;
    }
  }

  public String getRateDivision() {
    return this.rateDivision;
  }

  public void setRateDivision(String rateDivision) {
    this.rateDivision = rateDivision;
  }

  public void unsetRateDivision() {
    this.rateDivision = null;
  }

  /** Returns true if field rateDivision is set (has been assigned a value) and false otherwise */
  public boolean isSetRateDivision() {
    return this.rateDivision != null;
  }

  public void setRateDivisionIsSet(boolean value) {
    if (!value) {
      this.rateDivision = null;
    }
  }

  public boolean equals(Object that) {
    if (that == null)
      return false;
    if (that instanceof PaidCallAdCountry)
      return this.equals((PaidCallAdCountry)that);
    return false;
  }

  public boolean equals(PaidCallAdCountry that) {
    if (that == null)
      return false;
    if (this == that)
      return true;

    boolean this_present_countryCode = true && this.isSetCountryCode();
    boolean that_present_countryCode = true && that.isSetCountryCode();
    if (this_present_countryCode || that_present_countryCode) {
      if (!(this_present_countryCode && that_present_countryCode))
        return false;
      if (!this.countryCode.equals(that.countryCode))
        return false;
    }

    boolean this_present_rateDivision = true && this.isSetRateDivision();
    boolean that_present_rateDivision = true && that.isSetRateDivision();
    if (this_present_rateDivision || that_present_rateDivision) {
      if (!(this_present_rateDivision && that_present_rateDivision))
        return false;
      if (!this.rateDivision.equals(that.rateDivision))
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

    PaidCallAdCountry other = (PaidCallAdCountry)otherObject;    int lastComparison = 0;

    lastComparison = TBaseHelper.compareTo(isSetCountryCode(), other.isSetCountryCode());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetCountryCode()) {
      lastComparison = TBaseHelper.compareTo(this.countryCode, other.countryCode);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetRateDivision(), other.isSetRateDivision());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetRateDivision()) {
      lastComparison = TBaseHelper.compareTo(this.rateDivision, other.rateDivision);
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
        case 1: // COUNTRY_CODE
          if (field.type == TType.STRING) {
            this.countryCode = iprot.readString();
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 2: // RATE_DIVISION
          if (field.type == TType.STRING) {
            this.rateDivision = iprot.readString();
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
    if (this.countryCode != null) {
      oprot.writeFieldBegin(COUNTRY_CODE_FIELD_DESC);
      oprot.writeString(this.countryCode);
      oprot.writeFieldEnd();
    }
    if (this.rateDivision != null) {
      oprot.writeFieldBegin(RATE_DIVISION_FIELD_DESC);
      oprot.writeString(this.rateDivision);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  public String toString() {
    StringBuffer sb = new StringBuffer("PaidCallAdCountry(");
    boolean first = true;

    sb.append("countryCode:");
    if (this.countryCode == null) {
      sb.append("null");
    } else {
      sb.append(this.countryCode);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("rateDivision:");
    if (this.rateDivision == null) {
      sb.append("null");
    } else {
      sb.append(this.rateDivision);
    }
    first = false;
    sb.append(")");
    return sb.toString();
  }

  public void validate() throws TException {
    // check for required fields
  }

}

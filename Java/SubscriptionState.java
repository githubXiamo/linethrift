/**
 * Autogenerated by Thrift Compiler (0.11.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
@SuppressWarnings({"cast", "rawtypes", "serial", "unchecked", "unused"})
@javax.annotation.Generated(value = "Autogenerated by Thrift Compiler (0.11.0)", date = "2018-11-17")
public class SubscriptionState implements org.apache.thrift.TBase<SubscriptionState, SubscriptionState._Fields>, java.io.Serializable, Cloneable, Comparable<SubscriptionState> {
  private static final org.apache.thrift.protocol.TStruct STRUCT_DESC = new org.apache.thrift.protocol.TStruct("SubscriptionState");

  private static final org.apache.thrift.protocol.TField SUBSCRIPTION_ID_FIELD_DESC = new org.apache.thrift.protocol.TField("subscriptionId", org.apache.thrift.protocol.TType.I64, (short)1);
  private static final org.apache.thrift.protocol.TField TTL_MILLIS_FIELD_DESC = new org.apache.thrift.protocol.TField("ttlMillis", org.apache.thrift.protocol.TType.I64, (short)2);

  private static final org.apache.thrift.scheme.SchemeFactory STANDARD_SCHEME_FACTORY = new SubscriptionStateStandardSchemeFactory();
  private static final org.apache.thrift.scheme.SchemeFactory TUPLE_SCHEME_FACTORY = new SubscriptionStateTupleSchemeFactory();

  public long subscriptionId; // required
  public long ttlMillis; // required

  /** The set of fields this struct contains, along with convenience methods for finding and manipulating them. */
  public enum _Fields implements org.apache.thrift.TFieldIdEnum {
    SUBSCRIPTION_ID((short)1, "subscriptionId"),
    TTL_MILLIS((short)2, "ttlMillis");

    private static final java.util.Map<java.lang.String, _Fields> byName = new java.util.HashMap<java.lang.String, _Fields>();

    static {
      for (_Fields field : java.util.EnumSet.allOf(_Fields.class)) {
        byName.put(field.getFieldName(), field);
      }
    }

    /**
     * Find the _Fields constant that matches fieldId, or null if its not found.
     */
    public static _Fields findByThriftId(int fieldId) {
      switch(fieldId) {
        case 1: // SUBSCRIPTION_ID
          return SUBSCRIPTION_ID;
        case 2: // TTL_MILLIS
          return TTL_MILLIS;
        default:
          return null;
      }
    }

    /**
     * Find the _Fields constant that matches fieldId, throwing an exception
     * if it is not found.
     */
    public static _Fields findByThriftIdOrThrow(int fieldId) {
      _Fields fields = findByThriftId(fieldId);
      if (fields == null) throw new java.lang.IllegalArgumentException("Field " + fieldId + " doesn't exist!");
      return fields;
    }

    /**
     * Find the _Fields constant that matches name, or null if its not found.
     */
    public static _Fields findByName(java.lang.String name) {
      return byName.get(name);
    }

    private final short _thriftId;
    private final java.lang.String _fieldName;

    _Fields(short thriftId, java.lang.String fieldName) {
      _thriftId = thriftId;
      _fieldName = fieldName;
    }

    public short getThriftFieldId() {
      return _thriftId;
    }

    public java.lang.String getFieldName() {
      return _fieldName;
    }
  }

  // isset id assignments
  private static final int __SUBSCRIPTIONID_ISSET_ID = 0;
  private static final int __TTLMILLIS_ISSET_ID = 1;
  private byte __isset_bitfield = 0;
  public static final java.util.Map<_Fields, org.apache.thrift.meta_data.FieldMetaData> metaDataMap;
  static {
    java.util.Map<_Fields, org.apache.thrift.meta_data.FieldMetaData> tmpMap = new java.util.EnumMap<_Fields, org.apache.thrift.meta_data.FieldMetaData>(_Fields.class);
    tmpMap.put(_Fields.SUBSCRIPTION_ID, new org.apache.thrift.meta_data.FieldMetaData("subscriptionId", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.I64)));
    tmpMap.put(_Fields.TTL_MILLIS, new org.apache.thrift.meta_data.FieldMetaData("ttlMillis", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.I64)));
    metaDataMap = java.util.Collections.unmodifiableMap(tmpMap);
    org.apache.thrift.meta_data.FieldMetaData.addStructMetaDataMap(SubscriptionState.class, metaDataMap);
  }

  public SubscriptionState() {
  }

  public SubscriptionState(
    long subscriptionId,
    long ttlMillis)
  {
    this();
    this.subscriptionId = subscriptionId;
    setSubscriptionIdIsSet(true);
    this.ttlMillis = ttlMillis;
    setTtlMillisIsSet(true);
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public SubscriptionState(SubscriptionState other) {
    __isset_bitfield = other.__isset_bitfield;
    this.subscriptionId = other.subscriptionId;
    this.ttlMillis = other.ttlMillis;
  }

  public SubscriptionState deepCopy() {
    return new SubscriptionState(this);
  }

  @Override
  public void clear() {
    setSubscriptionIdIsSet(false);
    this.subscriptionId = 0;
    setTtlMillisIsSet(false);
    this.ttlMillis = 0;
  }

  public long getSubscriptionId() {
    return this.subscriptionId;
  }

  public SubscriptionState setSubscriptionId(long subscriptionId) {
    this.subscriptionId = subscriptionId;
    setSubscriptionIdIsSet(true);
    return this;
  }

  public void unsetSubscriptionId() {
    __isset_bitfield = org.apache.thrift.EncodingUtils.clearBit(__isset_bitfield, __SUBSCRIPTIONID_ISSET_ID);
  }

  /** Returns true if field subscriptionId is set (has been assigned a value) and false otherwise */
  public boolean isSetSubscriptionId() {
    return org.apache.thrift.EncodingUtils.testBit(__isset_bitfield, __SUBSCRIPTIONID_ISSET_ID);
  }

  public void setSubscriptionIdIsSet(boolean value) {
    __isset_bitfield = org.apache.thrift.EncodingUtils.setBit(__isset_bitfield, __SUBSCRIPTIONID_ISSET_ID, value);
  }

  public long getTtlMillis() {
    return this.ttlMillis;
  }

  public SubscriptionState setTtlMillis(long ttlMillis) {
    this.ttlMillis = ttlMillis;
    setTtlMillisIsSet(true);
    return this;
  }

  public void unsetTtlMillis() {
    __isset_bitfield = org.apache.thrift.EncodingUtils.clearBit(__isset_bitfield, __TTLMILLIS_ISSET_ID);
  }

  /** Returns true if field ttlMillis is set (has been assigned a value) and false otherwise */
  public boolean isSetTtlMillis() {
    return org.apache.thrift.EncodingUtils.testBit(__isset_bitfield, __TTLMILLIS_ISSET_ID);
  }

  public void setTtlMillisIsSet(boolean value) {
    __isset_bitfield = org.apache.thrift.EncodingUtils.setBit(__isset_bitfield, __TTLMILLIS_ISSET_ID, value);
  }

  public void setFieldValue(_Fields field, java.lang.Object value) {
    switch (field) {
    case SUBSCRIPTION_ID:
      if (value == null) {
        unsetSubscriptionId();
      } else {
        setSubscriptionId((java.lang.Long)value);
      }
      break;

    case TTL_MILLIS:
      if (value == null) {
        unsetTtlMillis();
      } else {
        setTtlMillis((java.lang.Long)value);
      }
      break;

    }
  }

  public java.lang.Object getFieldValue(_Fields field) {
    switch (field) {
    case SUBSCRIPTION_ID:
      return getSubscriptionId();

    case TTL_MILLIS:
      return getTtlMillis();

    }
    throw new java.lang.IllegalStateException();
  }

  /** Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise */
  public boolean isSet(_Fields field) {
    if (field == null) {
      throw new java.lang.IllegalArgumentException();
    }

    switch (field) {
    case SUBSCRIPTION_ID:
      return isSetSubscriptionId();
    case TTL_MILLIS:
      return isSetTtlMillis();
    }
    throw new java.lang.IllegalStateException();
  }

  @Override
  public boolean equals(java.lang.Object that) {
    if (that == null)
      return false;
    if (that instanceof SubscriptionState)
      return this.equals((SubscriptionState)that);
    return false;
  }

  public boolean equals(SubscriptionState that) {
    if (that == null)
      return false;
    if (this == that)
      return true;

    boolean this_present_subscriptionId = true;
    boolean that_present_subscriptionId = true;
    if (this_present_subscriptionId || that_present_subscriptionId) {
      if (!(this_present_subscriptionId && that_present_subscriptionId))
        return false;
      if (this.subscriptionId != that.subscriptionId)
        return false;
    }

    boolean this_present_ttlMillis = true;
    boolean that_present_ttlMillis = true;
    if (this_present_ttlMillis || that_present_ttlMillis) {
      if (!(this_present_ttlMillis && that_present_ttlMillis))
        return false;
      if (this.ttlMillis != that.ttlMillis)
        return false;
    }

    return true;
  }

  @Override
  public int hashCode() {
    int hashCode = 1;

    hashCode = hashCode * 8191 + org.apache.thrift.TBaseHelper.hashCode(subscriptionId);

    hashCode = hashCode * 8191 + org.apache.thrift.TBaseHelper.hashCode(ttlMillis);

    return hashCode;
  }

  @Override
  public int compareTo(SubscriptionState other) {
    if (!getClass().equals(other.getClass())) {
      return getClass().getName().compareTo(other.getClass().getName());
    }

    int lastComparison = 0;

    lastComparison = java.lang.Boolean.valueOf(isSetSubscriptionId()).compareTo(other.isSetSubscriptionId());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetSubscriptionId()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.subscriptionId, other.subscriptionId);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = java.lang.Boolean.valueOf(isSetTtlMillis()).compareTo(other.isSetTtlMillis());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetTtlMillis()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.ttlMillis, other.ttlMillis);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    return 0;
  }

  public _Fields fieldForId(int fieldId) {
    return _Fields.findByThriftId(fieldId);
  }

  public void read(org.apache.thrift.protocol.TProtocol iprot) throws org.apache.thrift.TException {
    scheme(iprot).read(iprot, this);
  }

  public void write(org.apache.thrift.protocol.TProtocol oprot) throws org.apache.thrift.TException {
    scheme(oprot).write(oprot, this);
  }

  @Override
  public java.lang.String toString() {
    java.lang.StringBuilder sb = new java.lang.StringBuilder("SubscriptionState(");
    boolean first = true;

    sb.append("subscriptionId:");
    sb.append(this.subscriptionId);
    first = false;
    if (!first) sb.append(", ");
    sb.append("ttlMillis:");
    sb.append(this.ttlMillis);
    first = false;
    sb.append(")");
    return sb.toString();
  }

  public void validate() throws org.apache.thrift.TException {
    // check for required fields
    // check for sub-struct validity
  }

  private void writeObject(java.io.ObjectOutputStream out) throws java.io.IOException {
    try {
      write(new org.apache.thrift.protocol.TCompactProtocol(new org.apache.thrift.transport.TIOStreamTransport(out)));
    } catch (org.apache.thrift.TException te) {
      throw new java.io.IOException(te);
    }
  }

  private void readObject(java.io.ObjectInputStream in) throws java.io.IOException, java.lang.ClassNotFoundException {
    try {
      // it doesn't seem like you should have to do this, but java serialization is wacky, and doesn't call the default constructor.
      __isset_bitfield = 0;
      read(new org.apache.thrift.protocol.TCompactProtocol(new org.apache.thrift.transport.TIOStreamTransport(in)));
    } catch (org.apache.thrift.TException te) {
      throw new java.io.IOException(te);
    }
  }

  private static class SubscriptionStateStandardSchemeFactory implements org.apache.thrift.scheme.SchemeFactory {
    public SubscriptionStateStandardScheme getScheme() {
      return new SubscriptionStateStandardScheme();
    }
  }

  private static class SubscriptionStateStandardScheme extends org.apache.thrift.scheme.StandardScheme<SubscriptionState> {

    public void read(org.apache.thrift.protocol.TProtocol iprot, SubscriptionState struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TField schemeField;
      iprot.readStructBegin();
      while (true)
      {
        schemeField = iprot.readFieldBegin();
        if (schemeField.type == org.apache.thrift.protocol.TType.STOP) { 
          break;
        }
        switch (schemeField.id) {
          case 1: // SUBSCRIPTION_ID
            if (schemeField.type == org.apache.thrift.protocol.TType.I64) {
              struct.subscriptionId = iprot.readI64();
              struct.setSubscriptionIdIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          case 2: // TTL_MILLIS
            if (schemeField.type == org.apache.thrift.protocol.TType.I64) {
              struct.ttlMillis = iprot.readI64();
              struct.setTtlMillisIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          default:
            org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
        }
        iprot.readFieldEnd();
      }
      iprot.readStructEnd();

      // check for required fields of primitive type, which can't be checked in the validate method
      struct.validate();
    }

    public void write(org.apache.thrift.protocol.TProtocol oprot, SubscriptionState struct) throws org.apache.thrift.TException {
      struct.validate();

      oprot.writeStructBegin(STRUCT_DESC);
      oprot.writeFieldBegin(SUBSCRIPTION_ID_FIELD_DESC);
      oprot.writeI64(struct.subscriptionId);
      oprot.writeFieldEnd();
      oprot.writeFieldBegin(TTL_MILLIS_FIELD_DESC);
      oprot.writeI64(struct.ttlMillis);
      oprot.writeFieldEnd();
      oprot.writeFieldStop();
      oprot.writeStructEnd();
    }

  }

  private static class SubscriptionStateTupleSchemeFactory implements org.apache.thrift.scheme.SchemeFactory {
    public SubscriptionStateTupleScheme getScheme() {
      return new SubscriptionStateTupleScheme();
    }
  }

  private static class SubscriptionStateTupleScheme extends org.apache.thrift.scheme.TupleScheme<SubscriptionState> {

    @Override
    public void write(org.apache.thrift.protocol.TProtocol prot, SubscriptionState struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TTupleProtocol oprot = (org.apache.thrift.protocol.TTupleProtocol) prot;
      java.util.BitSet optionals = new java.util.BitSet();
      if (struct.isSetSubscriptionId()) {
        optionals.set(0);
      }
      if (struct.isSetTtlMillis()) {
        optionals.set(1);
      }
      oprot.writeBitSet(optionals, 2);
      if (struct.isSetSubscriptionId()) {
        oprot.writeI64(struct.subscriptionId);
      }
      if (struct.isSetTtlMillis()) {
        oprot.writeI64(struct.ttlMillis);
      }
    }

    @Override
    public void read(org.apache.thrift.protocol.TProtocol prot, SubscriptionState struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TTupleProtocol iprot = (org.apache.thrift.protocol.TTupleProtocol) prot;
      java.util.BitSet incoming = iprot.readBitSet(2);
      if (incoming.get(0)) {
        struct.subscriptionId = iprot.readI64();
        struct.setSubscriptionIdIsSet(true);
      }
      if (incoming.get(1)) {
        struct.ttlMillis = iprot.readI64();
        struct.setTtlMillisIsSet(true);
      }
    }
  }

  private static <S extends org.apache.thrift.scheme.IScheme> S scheme(org.apache.thrift.protocol.TProtocol proto) {
    return (org.apache.thrift.scheme.StandardScheme.class.equals(proto.getScheme()) ? STANDARD_SCHEME_FACTORY : TUPLE_SCHEME_FACTORY).getScheme();
  }
}

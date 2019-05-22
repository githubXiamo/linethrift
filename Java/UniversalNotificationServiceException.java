/**
 * Autogenerated by Thrift Compiler (0.11.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
@SuppressWarnings({"cast", "rawtypes", "serial", "unchecked", "unused"})
@javax.annotation.Generated(value = "Autogenerated by Thrift Compiler (0.11.0)", date = "2018-11-17")
public class UniversalNotificationServiceException extends org.apache.thrift.TException implements org.apache.thrift.TBase<UniversalNotificationServiceException, UniversalNotificationServiceException._Fields>, java.io.Serializable, Cloneable, Comparable<UniversalNotificationServiceException> {
  private static final org.apache.thrift.protocol.TStruct STRUCT_DESC = new org.apache.thrift.protocol.TStruct("UniversalNotificationServiceException");

  private static final org.apache.thrift.protocol.TField CODE_FIELD_DESC = new org.apache.thrift.protocol.TField("code", org.apache.thrift.protocol.TType.I32, (short)1);
  private static final org.apache.thrift.protocol.TField REASON_FIELD_DESC = new org.apache.thrift.protocol.TField("reason", org.apache.thrift.protocol.TType.STRING, (short)2);
  private static final org.apache.thrift.protocol.TField PARAMETER_MAP_FIELD_DESC = new org.apache.thrift.protocol.TField("parameterMap", org.apache.thrift.protocol.TType.MAP, (short)3);

  private static final org.apache.thrift.scheme.SchemeFactory STANDARD_SCHEME_FACTORY = new UniversalNotificationServiceExceptionStandardSchemeFactory();
  private static final org.apache.thrift.scheme.SchemeFactory TUPLE_SCHEME_FACTORY = new UniversalNotificationServiceExceptionTupleSchemeFactory();

  /**
   * 
   * @see UniversalNotificationServiceErrorCode
   */
  public UniversalNotificationServiceErrorCode code; // required
  public java.lang.String reason; // required
  public java.util.Map<java.lang.String,java.lang.String> parameterMap; // required

  /** The set of fields this struct contains, along with convenience methods for finding and manipulating them. */
  public enum _Fields implements org.apache.thrift.TFieldIdEnum {
    /**
     * 
     * @see UniversalNotificationServiceErrorCode
     */
    CODE((short)1, "code"),
    REASON((short)2, "reason"),
    PARAMETER_MAP((short)3, "parameterMap");

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
        case 1: // CODE
          return CODE;
        case 2: // REASON
          return REASON;
        case 3: // PARAMETER_MAP
          return PARAMETER_MAP;
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
  public static final java.util.Map<_Fields, org.apache.thrift.meta_data.FieldMetaData> metaDataMap;
  static {
    java.util.Map<_Fields, org.apache.thrift.meta_data.FieldMetaData> tmpMap = new java.util.EnumMap<_Fields, org.apache.thrift.meta_data.FieldMetaData>(_Fields.class);
    tmpMap.put(_Fields.CODE, new org.apache.thrift.meta_data.FieldMetaData("code", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.EnumMetaData(org.apache.thrift.protocol.TType.ENUM, UniversalNotificationServiceErrorCode.class)));
    tmpMap.put(_Fields.REASON, new org.apache.thrift.meta_data.FieldMetaData("reason", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.STRING)));
    tmpMap.put(_Fields.PARAMETER_MAP, new org.apache.thrift.meta_data.FieldMetaData("parameterMap", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.MapMetaData(org.apache.thrift.protocol.TType.MAP, 
            new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.STRING), 
            new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.STRING))));
    metaDataMap = java.util.Collections.unmodifiableMap(tmpMap);
    org.apache.thrift.meta_data.FieldMetaData.addStructMetaDataMap(UniversalNotificationServiceException.class, metaDataMap);
  }

  public UniversalNotificationServiceException() {
  }

  public UniversalNotificationServiceException(
    UniversalNotificationServiceErrorCode code,
    java.lang.String reason,
    java.util.Map<java.lang.String,java.lang.String> parameterMap)
  {
    this();
    this.code = code;
    this.reason = reason;
    this.parameterMap = parameterMap;
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public UniversalNotificationServiceException(UniversalNotificationServiceException other) {
    if (other.isSetCode()) {
      this.code = other.code;
    }
    if (other.isSetReason()) {
      this.reason = other.reason;
    }
    if (other.isSetParameterMap()) {
      java.util.Map<java.lang.String,java.lang.String> __this__parameterMap = new java.util.HashMap<java.lang.String,java.lang.String>(other.parameterMap);
      this.parameterMap = __this__parameterMap;
    }
  }

  public UniversalNotificationServiceException deepCopy() {
    return new UniversalNotificationServiceException(this);
  }

  @Override
  public void clear() {
    this.code = null;
    this.reason = null;
    this.parameterMap = null;
  }

  /**
   * 
   * @see UniversalNotificationServiceErrorCode
   */
  public UniversalNotificationServiceErrorCode getCode() {
    return this.code;
  }

  /**
   * 
   * @see UniversalNotificationServiceErrorCode
   */
  public UniversalNotificationServiceException setCode(UniversalNotificationServiceErrorCode code) {
    this.code = code;
    return this;
  }

  public void unsetCode() {
    this.code = null;
  }

  /** Returns true if field code is set (has been assigned a value) and false otherwise */
  public boolean isSetCode() {
    return this.code != null;
  }

  public void setCodeIsSet(boolean value) {
    if (!value) {
      this.code = null;
    }
  }

  public java.lang.String getReason() {
    return this.reason;
  }

  public UniversalNotificationServiceException setReason(java.lang.String reason) {
    this.reason = reason;
    return this;
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

  public int getParameterMapSize() {
    return (this.parameterMap == null) ? 0 : this.parameterMap.size();
  }

  public void putToParameterMap(java.lang.String key, java.lang.String val) {
    if (this.parameterMap == null) {
      this.parameterMap = new java.util.HashMap<java.lang.String,java.lang.String>();
    }
    this.parameterMap.put(key, val);
  }

  public java.util.Map<java.lang.String,java.lang.String> getParameterMap() {
    return this.parameterMap;
  }

  public UniversalNotificationServiceException setParameterMap(java.util.Map<java.lang.String,java.lang.String> parameterMap) {
    this.parameterMap = parameterMap;
    return this;
  }

  public void unsetParameterMap() {
    this.parameterMap = null;
  }

  /** Returns true if field parameterMap is set (has been assigned a value) and false otherwise */
  public boolean isSetParameterMap() {
    return this.parameterMap != null;
  }

  public void setParameterMapIsSet(boolean value) {
    if (!value) {
      this.parameterMap = null;
    }
  }

  public void setFieldValue(_Fields field, java.lang.Object value) {
    switch (field) {
    case CODE:
      if (value == null) {
        unsetCode();
      } else {
        setCode((UniversalNotificationServiceErrorCode)value);
      }
      break;

    case REASON:
      if (value == null) {
        unsetReason();
      } else {
        setReason((java.lang.String)value);
      }
      break;

    case PARAMETER_MAP:
      if (value == null) {
        unsetParameterMap();
      } else {
        setParameterMap((java.util.Map<java.lang.String,java.lang.String>)value);
      }
      break;

    }
  }

  public java.lang.Object getFieldValue(_Fields field) {
    switch (field) {
    case CODE:
      return getCode();

    case REASON:
      return getReason();

    case PARAMETER_MAP:
      return getParameterMap();

    }
    throw new java.lang.IllegalStateException();
  }

  /** Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise */
  public boolean isSet(_Fields field) {
    if (field == null) {
      throw new java.lang.IllegalArgumentException();
    }

    switch (field) {
    case CODE:
      return isSetCode();
    case REASON:
      return isSetReason();
    case PARAMETER_MAP:
      return isSetParameterMap();
    }
    throw new java.lang.IllegalStateException();
  }

  @Override
  public boolean equals(java.lang.Object that) {
    if (that == null)
      return false;
    if (that instanceof UniversalNotificationServiceException)
      return this.equals((UniversalNotificationServiceException)that);
    return false;
  }

  public boolean equals(UniversalNotificationServiceException that) {
    if (that == null)
      return false;
    if (this == that)
      return true;

    boolean this_present_code = true && this.isSetCode();
    boolean that_present_code = true && that.isSetCode();
    if (this_present_code || that_present_code) {
      if (!(this_present_code && that_present_code))
        return false;
      if (!this.code.equals(that.code))
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

    boolean this_present_parameterMap = true && this.isSetParameterMap();
    boolean that_present_parameterMap = true && that.isSetParameterMap();
    if (this_present_parameterMap || that_present_parameterMap) {
      if (!(this_present_parameterMap && that_present_parameterMap))
        return false;
      if (!this.parameterMap.equals(that.parameterMap))
        return false;
    }

    return true;
  }

  @Override
  public int hashCode() {
    int hashCode = 1;

    hashCode = hashCode * 8191 + ((isSetCode()) ? 131071 : 524287);
    if (isSetCode())
      hashCode = hashCode * 8191 + code.getValue();

    hashCode = hashCode * 8191 + ((isSetReason()) ? 131071 : 524287);
    if (isSetReason())
      hashCode = hashCode * 8191 + reason.hashCode();

    hashCode = hashCode * 8191 + ((isSetParameterMap()) ? 131071 : 524287);
    if (isSetParameterMap())
      hashCode = hashCode * 8191 + parameterMap.hashCode();

    return hashCode;
  }

  @Override
  public int compareTo(UniversalNotificationServiceException other) {
    if (!getClass().equals(other.getClass())) {
      return getClass().getName().compareTo(other.getClass().getName());
    }

    int lastComparison = 0;

    lastComparison = java.lang.Boolean.valueOf(isSetCode()).compareTo(other.isSetCode());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetCode()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.code, other.code);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = java.lang.Boolean.valueOf(isSetReason()).compareTo(other.isSetReason());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetReason()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.reason, other.reason);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = java.lang.Boolean.valueOf(isSetParameterMap()).compareTo(other.isSetParameterMap());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetParameterMap()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.parameterMap, other.parameterMap);
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
    java.lang.StringBuilder sb = new java.lang.StringBuilder("UniversalNotificationServiceException(");
    boolean first = true;

    sb.append("code:");
    if (this.code == null) {
      sb.append("null");
    } else {
      sb.append(this.code);
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
    if (!first) sb.append(", ");
    sb.append("parameterMap:");
    if (this.parameterMap == null) {
      sb.append("null");
    } else {
      sb.append(this.parameterMap);
    }
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
      read(new org.apache.thrift.protocol.TCompactProtocol(new org.apache.thrift.transport.TIOStreamTransport(in)));
    } catch (org.apache.thrift.TException te) {
      throw new java.io.IOException(te);
    }
  }

  private static class UniversalNotificationServiceExceptionStandardSchemeFactory implements org.apache.thrift.scheme.SchemeFactory {
    public UniversalNotificationServiceExceptionStandardScheme getScheme() {
      return new UniversalNotificationServiceExceptionStandardScheme();
    }
  }

  private static class UniversalNotificationServiceExceptionStandardScheme extends org.apache.thrift.scheme.StandardScheme<UniversalNotificationServiceException> {

    public void read(org.apache.thrift.protocol.TProtocol iprot, UniversalNotificationServiceException struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TField schemeField;
      iprot.readStructBegin();
      while (true)
      {
        schemeField = iprot.readFieldBegin();
        if (schemeField.type == org.apache.thrift.protocol.TType.STOP) { 
          break;
        }
        switch (schemeField.id) {
          case 1: // CODE
            if (schemeField.type == org.apache.thrift.protocol.TType.I32) {
              struct.code = UniversalNotificationServiceErrorCode.findByValue(iprot.readI32());
              struct.setCodeIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          case 2: // REASON
            if (schemeField.type == org.apache.thrift.protocol.TType.STRING) {
              struct.reason = iprot.readString();
              struct.setReasonIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          case 3: // PARAMETER_MAP
            if (schemeField.type == org.apache.thrift.protocol.TType.MAP) {
              {
                org.apache.thrift.protocol.TMap _map1240 = iprot.readMapBegin();
                struct.parameterMap = new java.util.HashMap<java.lang.String,java.lang.String>(2*_map1240.size);
                java.lang.String _key1241;
                java.lang.String _val1242;
                for (int _i1243 = 0; _i1243 < _map1240.size; ++_i1243)
                {
                  _key1241 = iprot.readString();
                  _val1242 = iprot.readString();
                  struct.parameterMap.put(_key1241, _val1242);
                }
                iprot.readMapEnd();
              }
              struct.setParameterMapIsSet(true);
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

    public void write(org.apache.thrift.protocol.TProtocol oprot, UniversalNotificationServiceException struct) throws org.apache.thrift.TException {
      struct.validate();

      oprot.writeStructBegin(STRUCT_DESC);
      if (struct.code != null) {
        oprot.writeFieldBegin(CODE_FIELD_DESC);
        oprot.writeI32(struct.code.getValue());
        oprot.writeFieldEnd();
      }
      if (struct.reason != null) {
        oprot.writeFieldBegin(REASON_FIELD_DESC);
        oprot.writeString(struct.reason);
        oprot.writeFieldEnd();
      }
      if (struct.parameterMap != null) {
        oprot.writeFieldBegin(PARAMETER_MAP_FIELD_DESC);
        {
          oprot.writeMapBegin(new org.apache.thrift.protocol.TMap(org.apache.thrift.protocol.TType.STRING, org.apache.thrift.protocol.TType.STRING, struct.parameterMap.size()));
          for (java.util.Map.Entry<java.lang.String, java.lang.String> _iter1244 : struct.parameterMap.entrySet())
          {
            oprot.writeString(_iter1244.getKey());
            oprot.writeString(_iter1244.getValue());
          }
          oprot.writeMapEnd();
        }
        oprot.writeFieldEnd();
      }
      oprot.writeFieldStop();
      oprot.writeStructEnd();
    }

  }

  private static class UniversalNotificationServiceExceptionTupleSchemeFactory implements org.apache.thrift.scheme.SchemeFactory {
    public UniversalNotificationServiceExceptionTupleScheme getScheme() {
      return new UniversalNotificationServiceExceptionTupleScheme();
    }
  }

  private static class UniversalNotificationServiceExceptionTupleScheme extends org.apache.thrift.scheme.TupleScheme<UniversalNotificationServiceException> {

    @Override
    public void write(org.apache.thrift.protocol.TProtocol prot, UniversalNotificationServiceException struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TTupleProtocol oprot = (org.apache.thrift.protocol.TTupleProtocol) prot;
      java.util.BitSet optionals = new java.util.BitSet();
      if (struct.isSetCode()) {
        optionals.set(0);
      }
      if (struct.isSetReason()) {
        optionals.set(1);
      }
      if (struct.isSetParameterMap()) {
        optionals.set(2);
      }
      oprot.writeBitSet(optionals, 3);
      if (struct.isSetCode()) {
        oprot.writeI32(struct.code.getValue());
      }
      if (struct.isSetReason()) {
        oprot.writeString(struct.reason);
      }
      if (struct.isSetParameterMap()) {
        {
          oprot.writeI32(struct.parameterMap.size());
          for (java.util.Map.Entry<java.lang.String, java.lang.String> _iter1245 : struct.parameterMap.entrySet())
          {
            oprot.writeString(_iter1245.getKey());
            oprot.writeString(_iter1245.getValue());
          }
        }
      }
    }

    @Override
    public void read(org.apache.thrift.protocol.TProtocol prot, UniversalNotificationServiceException struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TTupleProtocol iprot = (org.apache.thrift.protocol.TTupleProtocol) prot;
      java.util.BitSet incoming = iprot.readBitSet(3);
      if (incoming.get(0)) {
        struct.code = UniversalNotificationServiceErrorCode.findByValue(iprot.readI32());
        struct.setCodeIsSet(true);
      }
      if (incoming.get(1)) {
        struct.reason = iprot.readString();
        struct.setReasonIsSet(true);
      }
      if (incoming.get(2)) {
        {
          org.apache.thrift.protocol.TMap _map1246 = new org.apache.thrift.protocol.TMap(org.apache.thrift.protocol.TType.STRING, org.apache.thrift.protocol.TType.STRING, iprot.readI32());
          struct.parameterMap = new java.util.HashMap<java.lang.String,java.lang.String>(2*_map1246.size);
          java.lang.String _key1247;
          java.lang.String _val1248;
          for (int _i1249 = 0; _i1249 < _map1246.size; ++_i1249)
          {
            _key1247 = iprot.readString();
            _val1248 = iprot.readString();
            struct.parameterMap.put(_key1247, _val1248);
          }
        }
        struct.setParameterMapIsSet(true);
      }
    }
  }

  private static <S extends org.apache.thrift.scheme.IScheme> S scheme(org.apache.thrift.protocol.TProtocol proto) {
    return (org.apache.thrift.scheme.StandardScheme.class.equals(proto.getScheme()) ? STANDARD_SCHEME_FACTORY : TUPLE_SCHEME_FACTORY).getScheme();
  }
}

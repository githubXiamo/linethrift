/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
@SuppressWarnings({"cast", "rawtypes", "serial", "unchecked", "unused"})
@javax.annotation.Generated(value = "Autogenerated by Thrift Compiler (0.14.0)", date = "2020-03-23")
public class SyncParamMid implements org.apache.thrift.TBase<SyncParamMid, SyncParamMid._Fields>, java.io.Serializable, Cloneable, Comparable<SyncParamMid> {
  private static final org.apache.thrift.protocol.TStruct STRUCT_DESC = new org.apache.thrift.protocol.TStruct("SyncParamMid");

  private static final org.apache.thrift.protocol.TField MID_FIELD_DESC = new org.apache.thrift.protocol.TField("mid", org.apache.thrift.protocol.TType.STRING, (short)1);
  private static final org.apache.thrift.protocol.TField DIFF_FIELD_DESC = new org.apache.thrift.protocol.TField("diff", org.apache.thrift.protocol.TType.I32, (short)2);
  private static final org.apache.thrift.protocol.TField REVISION_FIELD_DESC = new org.apache.thrift.protocol.TField("revision", org.apache.thrift.protocol.TType.I64, (short)3);

  private static final org.apache.thrift.scheme.SchemeFactory STANDARD_SCHEME_FACTORY = new SyncParamMidStandardSchemeFactory();
  private static final org.apache.thrift.scheme.SchemeFactory TUPLE_SCHEME_FACTORY = new SyncParamMidTupleSchemeFactory();

  public @org.apache.thrift.annotation.Nullable java.lang.String mid; // required
  /**
   * 
   * @see Diff
   */
  public @org.apache.thrift.annotation.Nullable Diff diff; // required
  public long revision; // required

  /** The set of fields this struct contains, along with convenience methods for finding and manipulating them. */
  public enum _Fields implements org.apache.thrift.TFieldIdEnum {
    MID((short)1, "mid"),
    /**
     * 
     * @see Diff
     */
    DIFF((short)2, "diff"),
    REVISION((short)3, "revision");

    private static final java.util.Map<java.lang.String, _Fields> byName = new java.util.HashMap<java.lang.String, _Fields>();

    static {
      for (_Fields field : java.util.EnumSet.allOf(_Fields.class)) {
        byName.put(field.getFieldName(), field);
      }
    }

    /**
     * Find the _Fields constant that matches fieldId, or null if its not found.
     */
    @org.apache.thrift.annotation.Nullable
    public static _Fields findByThriftId(int fieldId) {
      switch(fieldId) {
        case 1: // MID
          return MID;
        case 2: // DIFF
          return DIFF;
        case 3: // REVISION
          return REVISION;
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
    @org.apache.thrift.annotation.Nullable
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
  private static final int __REVISION_ISSET_ID = 0;
  private byte __isset_bitfield = 0;
  public static final java.util.Map<_Fields, org.apache.thrift.meta_data.FieldMetaData> metaDataMap;
  static {
    java.util.Map<_Fields, org.apache.thrift.meta_data.FieldMetaData> tmpMap = new java.util.EnumMap<_Fields, org.apache.thrift.meta_data.FieldMetaData>(_Fields.class);
    tmpMap.put(_Fields.MID, new org.apache.thrift.meta_data.FieldMetaData("mid", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.STRING)));
    tmpMap.put(_Fields.DIFF, new org.apache.thrift.meta_data.FieldMetaData("diff", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.EnumMetaData(org.apache.thrift.protocol.TType.ENUM, Diff.class)));
    tmpMap.put(_Fields.REVISION, new org.apache.thrift.meta_data.FieldMetaData("revision", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.I64)));
    metaDataMap = java.util.Collections.unmodifiableMap(tmpMap);
    org.apache.thrift.meta_data.FieldMetaData.addStructMetaDataMap(SyncParamMid.class, metaDataMap);
  }

  public SyncParamMid() {
  }

  public SyncParamMid(
    java.lang.String mid,
    Diff diff,
    long revision)
  {
    this();
    this.mid = mid;
    this.diff = diff;
    this.revision = revision;
    setRevisionIsSet(true);
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public SyncParamMid(SyncParamMid other) {
    __isset_bitfield = other.__isset_bitfield;
    if (other.isSetMid()) {
      this.mid = other.mid;
    }
    if (other.isSetDiff()) {
      this.diff = other.diff;
    }
    this.revision = other.revision;
  }

  public SyncParamMid deepCopy() {
    return new SyncParamMid(this);
  }

  @Override
  public void clear() {
    this.mid = null;
    this.diff = null;
    setRevisionIsSet(false);
    this.revision = 0;
  }

  @org.apache.thrift.annotation.Nullable
  public java.lang.String getMid() {
    return this.mid;
  }

  public SyncParamMid setMid(@org.apache.thrift.annotation.Nullable java.lang.String mid) {
    this.mid = mid;
    return this;
  }

  public void unsetMid() {
    this.mid = null;
  }

  /** Returns true if field mid is set (has been assigned a value) and false otherwise */
  public boolean isSetMid() {
    return this.mid != null;
  }

  public void setMidIsSet(boolean value) {
    if (!value) {
      this.mid = null;
    }
  }

  /**
   * 
   * @see Diff
   */
  @org.apache.thrift.annotation.Nullable
  public Diff getDiff() {
    return this.diff;
  }

  /**
   * 
   * @see Diff
   */
  public SyncParamMid setDiff(@org.apache.thrift.annotation.Nullable Diff diff) {
    this.diff = diff;
    return this;
  }

  public void unsetDiff() {
    this.diff = null;
  }

  /** Returns true if field diff is set (has been assigned a value) and false otherwise */
  public boolean isSetDiff() {
    return this.diff != null;
  }

  public void setDiffIsSet(boolean value) {
    if (!value) {
      this.diff = null;
    }
  }

  public long getRevision() {
    return this.revision;
  }

  public SyncParamMid setRevision(long revision) {
    this.revision = revision;
    setRevisionIsSet(true);
    return this;
  }

  public void unsetRevision() {
    __isset_bitfield = org.apache.thrift.EncodingUtils.clearBit(__isset_bitfield, __REVISION_ISSET_ID);
  }

  /** Returns true if field revision is set (has been assigned a value) and false otherwise */
  public boolean isSetRevision() {
    return org.apache.thrift.EncodingUtils.testBit(__isset_bitfield, __REVISION_ISSET_ID);
  }

  public void setRevisionIsSet(boolean value) {
    __isset_bitfield = org.apache.thrift.EncodingUtils.setBit(__isset_bitfield, __REVISION_ISSET_ID, value);
  }

  public void setFieldValue(_Fields field, @org.apache.thrift.annotation.Nullable java.lang.Object value) {
    switch (field) {
    case MID:
      if (value == null) {
        unsetMid();
      } else {
        setMid((java.lang.String)value);
      }
      break;

    case DIFF:
      if (value == null) {
        unsetDiff();
      } else {
        setDiff((Diff)value);
      }
      break;

    case REVISION:
      if (value == null) {
        unsetRevision();
      } else {
        setRevision((java.lang.Long)value);
      }
      break;

    }
  }

  @org.apache.thrift.annotation.Nullable
  public java.lang.Object getFieldValue(_Fields field) {
    switch (field) {
    case MID:
      return getMid();

    case DIFF:
      return getDiff();

    case REVISION:
      return getRevision();

    }
    throw new java.lang.IllegalStateException();
  }

  /** Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise */
  public boolean isSet(_Fields field) {
    if (field == null) {
      throw new java.lang.IllegalArgumentException();
    }

    switch (field) {
    case MID:
      return isSetMid();
    case DIFF:
      return isSetDiff();
    case REVISION:
      return isSetRevision();
    }
    throw new java.lang.IllegalStateException();
  }

  @Override
  public boolean equals(java.lang.Object that) {
    if (that instanceof SyncParamMid)
      return this.equals((SyncParamMid)that);
    return false;
  }

  public boolean equals(SyncParamMid that) {
    if (that == null)
      return false;
    if (this == that)
      return true;

    boolean this_present_mid = true && this.isSetMid();
    boolean that_present_mid = true && that.isSetMid();
    if (this_present_mid || that_present_mid) {
      if (!(this_present_mid && that_present_mid))
        return false;
      if (!this.mid.equals(that.mid))
        return false;
    }

    boolean this_present_diff = true && this.isSetDiff();
    boolean that_present_diff = true && that.isSetDiff();
    if (this_present_diff || that_present_diff) {
      if (!(this_present_diff && that_present_diff))
        return false;
      if (!this.diff.equals(that.diff))
        return false;
    }

    boolean this_present_revision = true;
    boolean that_present_revision = true;
    if (this_present_revision || that_present_revision) {
      if (!(this_present_revision && that_present_revision))
        return false;
      if (this.revision != that.revision)
        return false;
    }

    return true;
  }

  @Override
  public int hashCode() {
    int hashCode = 1;

    hashCode = hashCode * 8191 + ((isSetMid()) ? 131071 : 524287);
    if (isSetMid())
      hashCode = hashCode * 8191 + mid.hashCode();

    hashCode = hashCode * 8191 + ((isSetDiff()) ? 131071 : 524287);
    if (isSetDiff())
      hashCode = hashCode * 8191 + diff.getValue();

    hashCode = hashCode * 8191 + org.apache.thrift.TBaseHelper.hashCode(revision);

    return hashCode;
  }

  @Override
  public int compareTo(SyncParamMid other) {
    if (!getClass().equals(other.getClass())) {
      return getClass().getName().compareTo(other.getClass().getName());
    }

    int lastComparison = 0;

    lastComparison = java.lang.Boolean.compare(isSetMid(), other.isSetMid());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetMid()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.mid, other.mid);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = java.lang.Boolean.compare(isSetDiff(), other.isSetDiff());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetDiff()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.diff, other.diff);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = java.lang.Boolean.compare(isSetRevision(), other.isSetRevision());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetRevision()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.revision, other.revision);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    return 0;
  }

  @org.apache.thrift.annotation.Nullable
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
    java.lang.StringBuilder sb = new java.lang.StringBuilder("SyncParamMid(");
    boolean first = true;

    sb.append("mid:");
    if (this.mid == null) {
      sb.append("null");
    } else {
      sb.append(this.mid);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("diff:");
    if (this.diff == null) {
      sb.append("null");
    } else {
      sb.append(this.diff);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("revision:");
    sb.append(this.revision);
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

  private static class SyncParamMidStandardSchemeFactory implements org.apache.thrift.scheme.SchemeFactory {
    public SyncParamMidStandardScheme getScheme() {
      return new SyncParamMidStandardScheme();
    }
  }

  private static class SyncParamMidStandardScheme extends org.apache.thrift.scheme.StandardScheme<SyncParamMid> {

    public void read(org.apache.thrift.protocol.TProtocol iprot, SyncParamMid struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TField schemeField;
      iprot.readStructBegin();
      while (true)
      {
        schemeField = iprot.readFieldBegin();
        if (schemeField.type == org.apache.thrift.protocol.TType.STOP) { 
          break;
        }
        switch (schemeField.id) {
          case 1: // MID
            if (schemeField.type == org.apache.thrift.protocol.TType.STRING) {
              struct.mid = iprot.readString();
              struct.setMidIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          case 2: // DIFF
            if (schemeField.type == org.apache.thrift.protocol.TType.I32) {
              struct.diff = Diff.findByValue(iprot.readI32());
              struct.setDiffIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          case 3: // REVISION
            if (schemeField.type == org.apache.thrift.protocol.TType.I64) {
              struct.revision = iprot.readI64();
              struct.setRevisionIsSet(true);
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

    public void write(org.apache.thrift.protocol.TProtocol oprot, SyncParamMid struct) throws org.apache.thrift.TException {
      struct.validate();

      oprot.writeStructBegin(STRUCT_DESC);
      if (struct.mid != null) {
        oprot.writeFieldBegin(MID_FIELD_DESC);
        oprot.writeString(struct.mid);
        oprot.writeFieldEnd();
      }
      if (struct.diff != null) {
        oprot.writeFieldBegin(DIFF_FIELD_DESC);
        oprot.writeI32(struct.diff.getValue());
        oprot.writeFieldEnd();
      }
      oprot.writeFieldBegin(REVISION_FIELD_DESC);
      oprot.writeI64(struct.revision);
      oprot.writeFieldEnd();
      oprot.writeFieldStop();
      oprot.writeStructEnd();
    }

  }

  private static class SyncParamMidTupleSchemeFactory implements org.apache.thrift.scheme.SchemeFactory {
    public SyncParamMidTupleScheme getScheme() {
      return new SyncParamMidTupleScheme();
    }
  }

  private static class SyncParamMidTupleScheme extends org.apache.thrift.scheme.TupleScheme<SyncParamMid> {

    @Override
    public void write(org.apache.thrift.protocol.TProtocol prot, SyncParamMid struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TTupleProtocol oprot = (org.apache.thrift.protocol.TTupleProtocol) prot;
      java.util.BitSet optionals = new java.util.BitSet();
      if (struct.isSetMid()) {
        optionals.set(0);
      }
      if (struct.isSetDiff()) {
        optionals.set(1);
      }
      if (struct.isSetRevision()) {
        optionals.set(2);
      }
      oprot.writeBitSet(optionals, 3);
      if (struct.isSetMid()) {
        oprot.writeString(struct.mid);
      }
      if (struct.isSetDiff()) {
        oprot.writeI32(struct.diff.getValue());
      }
      if (struct.isSetRevision()) {
        oprot.writeI64(struct.revision);
      }
    }

    @Override
    public void read(org.apache.thrift.protocol.TProtocol prot, SyncParamMid struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TTupleProtocol iprot = (org.apache.thrift.protocol.TTupleProtocol) prot;
      java.util.BitSet incoming = iprot.readBitSet(3);
      if (incoming.get(0)) {
        struct.mid = iprot.readString();
        struct.setMidIsSet(true);
      }
      if (incoming.get(1)) {
        struct.diff = Diff.findByValue(iprot.readI32());
        struct.setDiffIsSet(true);
      }
      if (incoming.get(2)) {
        struct.revision = iprot.readI64();
        struct.setRevisionIsSet(true);
      }
    }
  }

  private static <S extends org.apache.thrift.scheme.IScheme> S scheme(org.apache.thrift.protocol.TProtocol proto) {
    return (org.apache.thrift.scheme.StandardScheme.class.equals(proto.getScheme()) ? STANDARD_SCHEME_FACTORY : TUPLE_SCHEME_FACTORY).getScheme();
  }
}

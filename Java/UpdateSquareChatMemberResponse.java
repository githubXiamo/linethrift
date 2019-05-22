/**
 * Autogenerated by Thrift Compiler (0.11.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
@SuppressWarnings({"cast", "rawtypes", "serial", "unchecked", "unused"})
@javax.annotation.Generated(value = "Autogenerated by Thrift Compiler (0.11.0)", date = "2018-11-17")
public class UpdateSquareChatMemberResponse implements org.apache.thrift.TBase<UpdateSquareChatMemberResponse, UpdateSquareChatMemberResponse._Fields>, java.io.Serializable, Cloneable, Comparable<UpdateSquareChatMemberResponse> {
  private static final org.apache.thrift.protocol.TStruct STRUCT_DESC = new org.apache.thrift.protocol.TStruct("UpdateSquareChatMemberResponse");

  private static final org.apache.thrift.protocol.TField UPDATED_CHAT_MEMBER_FIELD_DESC = new org.apache.thrift.protocol.TField("updatedChatMember", org.apache.thrift.protocol.TType.STRUCT, (short)1);

  private static final org.apache.thrift.scheme.SchemeFactory STANDARD_SCHEME_FACTORY = new UpdateSquareChatMemberResponseStandardSchemeFactory();
  private static final org.apache.thrift.scheme.SchemeFactory TUPLE_SCHEME_FACTORY = new UpdateSquareChatMemberResponseTupleSchemeFactory();

  public SquareChatMember updatedChatMember; // required

  /** The set of fields this struct contains, along with convenience methods for finding and manipulating them. */
  public enum _Fields implements org.apache.thrift.TFieldIdEnum {
    UPDATED_CHAT_MEMBER((short)1, "updatedChatMember");

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
        case 1: // UPDATED_CHAT_MEMBER
          return UPDATED_CHAT_MEMBER;
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
    tmpMap.put(_Fields.UPDATED_CHAT_MEMBER, new org.apache.thrift.meta_data.FieldMetaData("updatedChatMember", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.StructMetaData(org.apache.thrift.protocol.TType.STRUCT, SquareChatMember.class)));
    metaDataMap = java.util.Collections.unmodifiableMap(tmpMap);
    org.apache.thrift.meta_data.FieldMetaData.addStructMetaDataMap(UpdateSquareChatMemberResponse.class, metaDataMap);
  }

  public UpdateSquareChatMemberResponse() {
  }

  public UpdateSquareChatMemberResponse(
    SquareChatMember updatedChatMember)
  {
    this();
    this.updatedChatMember = updatedChatMember;
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public UpdateSquareChatMemberResponse(UpdateSquareChatMemberResponse other) {
    if (other.isSetUpdatedChatMember()) {
      this.updatedChatMember = new SquareChatMember(other.updatedChatMember);
    }
  }

  public UpdateSquareChatMemberResponse deepCopy() {
    return new UpdateSquareChatMemberResponse(this);
  }

  @Override
  public void clear() {
    this.updatedChatMember = null;
  }

  public SquareChatMember getUpdatedChatMember() {
    return this.updatedChatMember;
  }

  public UpdateSquareChatMemberResponse setUpdatedChatMember(SquareChatMember updatedChatMember) {
    this.updatedChatMember = updatedChatMember;
    return this;
  }

  public void unsetUpdatedChatMember() {
    this.updatedChatMember = null;
  }

  /** Returns true if field updatedChatMember is set (has been assigned a value) and false otherwise */
  public boolean isSetUpdatedChatMember() {
    return this.updatedChatMember != null;
  }

  public void setUpdatedChatMemberIsSet(boolean value) {
    if (!value) {
      this.updatedChatMember = null;
    }
  }

  public void setFieldValue(_Fields field, java.lang.Object value) {
    switch (field) {
    case UPDATED_CHAT_MEMBER:
      if (value == null) {
        unsetUpdatedChatMember();
      } else {
        setUpdatedChatMember((SquareChatMember)value);
      }
      break;

    }
  }

  public java.lang.Object getFieldValue(_Fields field) {
    switch (field) {
    case UPDATED_CHAT_MEMBER:
      return getUpdatedChatMember();

    }
    throw new java.lang.IllegalStateException();
  }

  /** Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise */
  public boolean isSet(_Fields field) {
    if (field == null) {
      throw new java.lang.IllegalArgumentException();
    }

    switch (field) {
    case UPDATED_CHAT_MEMBER:
      return isSetUpdatedChatMember();
    }
    throw new java.lang.IllegalStateException();
  }

  @Override
  public boolean equals(java.lang.Object that) {
    if (that == null)
      return false;
    if (that instanceof UpdateSquareChatMemberResponse)
      return this.equals((UpdateSquareChatMemberResponse)that);
    return false;
  }

  public boolean equals(UpdateSquareChatMemberResponse that) {
    if (that == null)
      return false;
    if (this == that)
      return true;

    boolean this_present_updatedChatMember = true && this.isSetUpdatedChatMember();
    boolean that_present_updatedChatMember = true && that.isSetUpdatedChatMember();
    if (this_present_updatedChatMember || that_present_updatedChatMember) {
      if (!(this_present_updatedChatMember && that_present_updatedChatMember))
        return false;
      if (!this.updatedChatMember.equals(that.updatedChatMember))
        return false;
    }

    return true;
  }

  @Override
  public int hashCode() {
    int hashCode = 1;

    hashCode = hashCode * 8191 + ((isSetUpdatedChatMember()) ? 131071 : 524287);
    if (isSetUpdatedChatMember())
      hashCode = hashCode * 8191 + updatedChatMember.hashCode();

    return hashCode;
  }

  @Override
  public int compareTo(UpdateSquareChatMemberResponse other) {
    if (!getClass().equals(other.getClass())) {
      return getClass().getName().compareTo(other.getClass().getName());
    }

    int lastComparison = 0;

    lastComparison = java.lang.Boolean.valueOf(isSetUpdatedChatMember()).compareTo(other.isSetUpdatedChatMember());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetUpdatedChatMember()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.updatedChatMember, other.updatedChatMember);
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
    java.lang.StringBuilder sb = new java.lang.StringBuilder("UpdateSquareChatMemberResponse(");
    boolean first = true;

    sb.append("updatedChatMember:");
    if (this.updatedChatMember == null) {
      sb.append("null");
    } else {
      sb.append(this.updatedChatMember);
    }
    first = false;
    sb.append(")");
    return sb.toString();
  }

  public void validate() throws org.apache.thrift.TException {
    // check for required fields
    // check for sub-struct validity
    if (updatedChatMember != null) {
      updatedChatMember.validate();
    }
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

  private static class UpdateSquareChatMemberResponseStandardSchemeFactory implements org.apache.thrift.scheme.SchemeFactory {
    public UpdateSquareChatMemberResponseStandardScheme getScheme() {
      return new UpdateSquareChatMemberResponseStandardScheme();
    }
  }

  private static class UpdateSquareChatMemberResponseStandardScheme extends org.apache.thrift.scheme.StandardScheme<UpdateSquareChatMemberResponse> {

    public void read(org.apache.thrift.protocol.TProtocol iprot, UpdateSquareChatMemberResponse struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TField schemeField;
      iprot.readStructBegin();
      while (true)
      {
        schemeField = iprot.readFieldBegin();
        if (schemeField.type == org.apache.thrift.protocol.TType.STOP) { 
          break;
        }
        switch (schemeField.id) {
          case 1: // UPDATED_CHAT_MEMBER
            if (schemeField.type == org.apache.thrift.protocol.TType.STRUCT) {
              struct.updatedChatMember = new SquareChatMember();
              struct.updatedChatMember.read(iprot);
              struct.setUpdatedChatMemberIsSet(true);
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

    public void write(org.apache.thrift.protocol.TProtocol oprot, UpdateSquareChatMemberResponse struct) throws org.apache.thrift.TException {
      struct.validate();

      oprot.writeStructBegin(STRUCT_DESC);
      if (struct.updatedChatMember != null) {
        oprot.writeFieldBegin(UPDATED_CHAT_MEMBER_FIELD_DESC);
        struct.updatedChatMember.write(oprot);
        oprot.writeFieldEnd();
      }
      oprot.writeFieldStop();
      oprot.writeStructEnd();
    }

  }

  private static class UpdateSquareChatMemberResponseTupleSchemeFactory implements org.apache.thrift.scheme.SchemeFactory {
    public UpdateSquareChatMemberResponseTupleScheme getScheme() {
      return new UpdateSquareChatMemberResponseTupleScheme();
    }
  }

  private static class UpdateSquareChatMemberResponseTupleScheme extends org.apache.thrift.scheme.TupleScheme<UpdateSquareChatMemberResponse> {

    @Override
    public void write(org.apache.thrift.protocol.TProtocol prot, UpdateSquareChatMemberResponse struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TTupleProtocol oprot = (org.apache.thrift.protocol.TTupleProtocol) prot;
      java.util.BitSet optionals = new java.util.BitSet();
      if (struct.isSetUpdatedChatMember()) {
        optionals.set(0);
      }
      oprot.writeBitSet(optionals, 1);
      if (struct.isSetUpdatedChatMember()) {
        struct.updatedChatMember.write(oprot);
      }
    }

    @Override
    public void read(org.apache.thrift.protocol.TProtocol prot, UpdateSquareChatMemberResponse struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TTupleProtocol iprot = (org.apache.thrift.protocol.TTupleProtocol) prot;
      java.util.BitSet incoming = iprot.readBitSet(1);
      if (incoming.get(0)) {
        struct.updatedChatMember = new SquareChatMember();
        struct.updatedChatMember.read(iprot);
        struct.setUpdatedChatMemberIsSet(true);
      }
    }
  }

  private static <S extends org.apache.thrift.scheme.IScheme> S scheme(org.apache.thrift.protocol.TProtocol proto) {
    return (org.apache.thrift.scheme.StandardScheme.class.equals(proto.getScheme()) ? STANDARD_SCHEME_FACTORY : TUPLE_SCHEME_FACTORY).getScheme();
  }
}

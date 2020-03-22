/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
@SuppressWarnings({"cast", "rawtypes", "serial", "unchecked", "unused"})
@javax.annotation.Generated(value = "Autogenerated by Thrift Compiler (0.14.0)", date = "2020-03-23")
public class SearchSquareMembersResponse implements org.apache.thrift.TBase<SearchSquareMembersResponse, SearchSquareMembersResponse._Fields>, java.io.Serializable, Cloneable, Comparable<SearchSquareMembersResponse> {
  private static final org.apache.thrift.protocol.TStruct STRUCT_DESC = new org.apache.thrift.protocol.TStruct("SearchSquareMembersResponse");

  private static final org.apache.thrift.protocol.TField MEMBERS_FIELD_DESC = new org.apache.thrift.protocol.TField("members", org.apache.thrift.protocol.TType.LIST, (short)1);
  private static final org.apache.thrift.protocol.TField REVISION_FIELD_DESC = new org.apache.thrift.protocol.TField("revision", org.apache.thrift.protocol.TType.I64, (short)2);
  private static final org.apache.thrift.protocol.TField CONTINUATION_TOKEN_FIELD_DESC = new org.apache.thrift.protocol.TField("continuationToken", org.apache.thrift.protocol.TType.STRING, (short)3);
  private static final org.apache.thrift.protocol.TField TOTAL_COUNT_FIELD_DESC = new org.apache.thrift.protocol.TField("totalCount", org.apache.thrift.protocol.TType.I32, (short)4);

  private static final org.apache.thrift.scheme.SchemeFactory STANDARD_SCHEME_FACTORY = new SearchSquareMembersResponseStandardSchemeFactory();
  private static final org.apache.thrift.scheme.SchemeFactory TUPLE_SCHEME_FACTORY = new SearchSquareMembersResponseTupleSchemeFactory();

  public @org.apache.thrift.annotation.Nullable java.util.List<SquareMember> members; // required
  public long revision; // required
  public @org.apache.thrift.annotation.Nullable java.lang.String continuationToken; // required
  public int totalCount; // required

  /** The set of fields this struct contains, along with convenience methods for finding and manipulating them. */
  public enum _Fields implements org.apache.thrift.TFieldIdEnum {
    MEMBERS((short)1, "members"),
    REVISION((short)2, "revision"),
    CONTINUATION_TOKEN((short)3, "continuationToken"),
    TOTAL_COUNT((short)4, "totalCount");

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
        case 1: // MEMBERS
          return MEMBERS;
        case 2: // REVISION
          return REVISION;
        case 3: // CONTINUATION_TOKEN
          return CONTINUATION_TOKEN;
        case 4: // TOTAL_COUNT
          return TOTAL_COUNT;
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
  private static final int __TOTALCOUNT_ISSET_ID = 1;
  private byte __isset_bitfield = 0;
  public static final java.util.Map<_Fields, org.apache.thrift.meta_data.FieldMetaData> metaDataMap;
  static {
    java.util.Map<_Fields, org.apache.thrift.meta_data.FieldMetaData> tmpMap = new java.util.EnumMap<_Fields, org.apache.thrift.meta_data.FieldMetaData>(_Fields.class);
    tmpMap.put(_Fields.MEMBERS, new org.apache.thrift.meta_data.FieldMetaData("members", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.ListMetaData(org.apache.thrift.protocol.TType.LIST, 
            new org.apache.thrift.meta_data.StructMetaData(org.apache.thrift.protocol.TType.STRUCT, SquareMember.class))));
    tmpMap.put(_Fields.REVISION, new org.apache.thrift.meta_data.FieldMetaData("revision", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.I64)));
    tmpMap.put(_Fields.CONTINUATION_TOKEN, new org.apache.thrift.meta_data.FieldMetaData("continuationToken", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.STRING)));
    tmpMap.put(_Fields.TOTAL_COUNT, new org.apache.thrift.meta_data.FieldMetaData("totalCount", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.I32)));
    metaDataMap = java.util.Collections.unmodifiableMap(tmpMap);
    org.apache.thrift.meta_data.FieldMetaData.addStructMetaDataMap(SearchSquareMembersResponse.class, metaDataMap);
  }

  public SearchSquareMembersResponse() {
  }

  public SearchSquareMembersResponse(
    java.util.List<SquareMember> members,
    long revision,
    java.lang.String continuationToken,
    int totalCount)
  {
    this();
    this.members = members;
    this.revision = revision;
    setRevisionIsSet(true);
    this.continuationToken = continuationToken;
    this.totalCount = totalCount;
    setTotalCountIsSet(true);
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public SearchSquareMembersResponse(SearchSquareMembersResponse other) {
    __isset_bitfield = other.__isset_bitfield;
    if (other.isSetMembers()) {
      java.util.List<SquareMember> __this__members = new java.util.ArrayList<SquareMember>(other.members.size());
      for (SquareMember other_element : other.members) {
        __this__members.add(new SquareMember(other_element));
      }
      this.members = __this__members;
    }
    this.revision = other.revision;
    if (other.isSetContinuationToken()) {
      this.continuationToken = other.continuationToken;
    }
    this.totalCount = other.totalCount;
  }

  public SearchSquareMembersResponse deepCopy() {
    return new SearchSquareMembersResponse(this);
  }

  @Override
  public void clear() {
    this.members = null;
    setRevisionIsSet(false);
    this.revision = 0;
    this.continuationToken = null;
    setTotalCountIsSet(false);
    this.totalCount = 0;
  }

  public int getMembersSize() {
    return (this.members == null) ? 0 : this.members.size();
  }

  @org.apache.thrift.annotation.Nullable
  public java.util.Iterator<SquareMember> getMembersIterator() {
    return (this.members == null) ? null : this.members.iterator();
  }

  public void addToMembers(SquareMember elem) {
    if (this.members == null) {
      this.members = new java.util.ArrayList<SquareMember>();
    }
    this.members.add(elem);
  }

  @org.apache.thrift.annotation.Nullable
  public java.util.List<SquareMember> getMembers() {
    return this.members;
  }

  public SearchSquareMembersResponse setMembers(@org.apache.thrift.annotation.Nullable java.util.List<SquareMember> members) {
    this.members = members;
    return this;
  }

  public void unsetMembers() {
    this.members = null;
  }

  /** Returns true if field members is set (has been assigned a value) and false otherwise */
  public boolean isSetMembers() {
    return this.members != null;
  }

  public void setMembersIsSet(boolean value) {
    if (!value) {
      this.members = null;
    }
  }

  public long getRevision() {
    return this.revision;
  }

  public SearchSquareMembersResponse setRevision(long revision) {
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

  @org.apache.thrift.annotation.Nullable
  public java.lang.String getContinuationToken() {
    return this.continuationToken;
  }

  public SearchSquareMembersResponse setContinuationToken(@org.apache.thrift.annotation.Nullable java.lang.String continuationToken) {
    this.continuationToken = continuationToken;
    return this;
  }

  public void unsetContinuationToken() {
    this.continuationToken = null;
  }

  /** Returns true if field continuationToken is set (has been assigned a value) and false otherwise */
  public boolean isSetContinuationToken() {
    return this.continuationToken != null;
  }

  public void setContinuationTokenIsSet(boolean value) {
    if (!value) {
      this.continuationToken = null;
    }
  }

  public int getTotalCount() {
    return this.totalCount;
  }

  public SearchSquareMembersResponse setTotalCount(int totalCount) {
    this.totalCount = totalCount;
    setTotalCountIsSet(true);
    return this;
  }

  public void unsetTotalCount() {
    __isset_bitfield = org.apache.thrift.EncodingUtils.clearBit(__isset_bitfield, __TOTALCOUNT_ISSET_ID);
  }

  /** Returns true if field totalCount is set (has been assigned a value) and false otherwise */
  public boolean isSetTotalCount() {
    return org.apache.thrift.EncodingUtils.testBit(__isset_bitfield, __TOTALCOUNT_ISSET_ID);
  }

  public void setTotalCountIsSet(boolean value) {
    __isset_bitfield = org.apache.thrift.EncodingUtils.setBit(__isset_bitfield, __TOTALCOUNT_ISSET_ID, value);
  }

  public void setFieldValue(_Fields field, @org.apache.thrift.annotation.Nullable java.lang.Object value) {
    switch (field) {
    case MEMBERS:
      if (value == null) {
        unsetMembers();
      } else {
        setMembers((java.util.List<SquareMember>)value);
      }
      break;

    case REVISION:
      if (value == null) {
        unsetRevision();
      } else {
        setRevision((java.lang.Long)value);
      }
      break;

    case CONTINUATION_TOKEN:
      if (value == null) {
        unsetContinuationToken();
      } else {
        setContinuationToken((java.lang.String)value);
      }
      break;

    case TOTAL_COUNT:
      if (value == null) {
        unsetTotalCount();
      } else {
        setTotalCount((java.lang.Integer)value);
      }
      break;

    }
  }

  @org.apache.thrift.annotation.Nullable
  public java.lang.Object getFieldValue(_Fields field) {
    switch (field) {
    case MEMBERS:
      return getMembers();

    case REVISION:
      return getRevision();

    case CONTINUATION_TOKEN:
      return getContinuationToken();

    case TOTAL_COUNT:
      return getTotalCount();

    }
    throw new java.lang.IllegalStateException();
  }

  /** Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise */
  public boolean isSet(_Fields field) {
    if (field == null) {
      throw new java.lang.IllegalArgumentException();
    }

    switch (field) {
    case MEMBERS:
      return isSetMembers();
    case REVISION:
      return isSetRevision();
    case CONTINUATION_TOKEN:
      return isSetContinuationToken();
    case TOTAL_COUNT:
      return isSetTotalCount();
    }
    throw new java.lang.IllegalStateException();
  }

  @Override
  public boolean equals(java.lang.Object that) {
    if (that instanceof SearchSquareMembersResponse)
      return this.equals((SearchSquareMembersResponse)that);
    return false;
  }

  public boolean equals(SearchSquareMembersResponse that) {
    if (that == null)
      return false;
    if (this == that)
      return true;

    boolean this_present_members = true && this.isSetMembers();
    boolean that_present_members = true && that.isSetMembers();
    if (this_present_members || that_present_members) {
      if (!(this_present_members && that_present_members))
        return false;
      if (!this.members.equals(that.members))
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

    boolean this_present_continuationToken = true && this.isSetContinuationToken();
    boolean that_present_continuationToken = true && that.isSetContinuationToken();
    if (this_present_continuationToken || that_present_continuationToken) {
      if (!(this_present_continuationToken && that_present_continuationToken))
        return false;
      if (!this.continuationToken.equals(that.continuationToken))
        return false;
    }

    boolean this_present_totalCount = true;
    boolean that_present_totalCount = true;
    if (this_present_totalCount || that_present_totalCount) {
      if (!(this_present_totalCount && that_present_totalCount))
        return false;
      if (this.totalCount != that.totalCount)
        return false;
    }

    return true;
  }

  @Override
  public int hashCode() {
    int hashCode = 1;

    hashCode = hashCode * 8191 + ((isSetMembers()) ? 131071 : 524287);
    if (isSetMembers())
      hashCode = hashCode * 8191 + members.hashCode();

    hashCode = hashCode * 8191 + org.apache.thrift.TBaseHelper.hashCode(revision);

    hashCode = hashCode * 8191 + ((isSetContinuationToken()) ? 131071 : 524287);
    if (isSetContinuationToken())
      hashCode = hashCode * 8191 + continuationToken.hashCode();

    hashCode = hashCode * 8191 + totalCount;

    return hashCode;
  }

  @Override
  public int compareTo(SearchSquareMembersResponse other) {
    if (!getClass().equals(other.getClass())) {
      return getClass().getName().compareTo(other.getClass().getName());
    }

    int lastComparison = 0;

    lastComparison = java.lang.Boolean.compare(isSetMembers(), other.isSetMembers());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetMembers()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.members, other.members);
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
    lastComparison = java.lang.Boolean.compare(isSetContinuationToken(), other.isSetContinuationToken());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetContinuationToken()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.continuationToken, other.continuationToken);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = java.lang.Boolean.compare(isSetTotalCount(), other.isSetTotalCount());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetTotalCount()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.totalCount, other.totalCount);
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
    java.lang.StringBuilder sb = new java.lang.StringBuilder("SearchSquareMembersResponse(");
    boolean first = true;

    sb.append("members:");
    if (this.members == null) {
      sb.append("null");
    } else {
      sb.append(this.members);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("revision:");
    sb.append(this.revision);
    first = false;
    if (!first) sb.append(", ");
    sb.append("continuationToken:");
    if (this.continuationToken == null) {
      sb.append("null");
    } else {
      sb.append(this.continuationToken);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("totalCount:");
    sb.append(this.totalCount);
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

  private static class SearchSquareMembersResponseStandardSchemeFactory implements org.apache.thrift.scheme.SchemeFactory {
    public SearchSquareMembersResponseStandardScheme getScheme() {
      return new SearchSquareMembersResponseStandardScheme();
    }
  }

  private static class SearchSquareMembersResponseStandardScheme extends org.apache.thrift.scheme.StandardScheme<SearchSquareMembersResponse> {

    public void read(org.apache.thrift.protocol.TProtocol iprot, SearchSquareMembersResponse struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TField schemeField;
      iprot.readStructBegin();
      while (true)
      {
        schemeField = iprot.readFieldBegin();
        if (schemeField.type == org.apache.thrift.protocol.TType.STOP) { 
          break;
        }
        switch (schemeField.id) {
          case 1: // MEMBERS
            if (schemeField.type == org.apache.thrift.protocol.TType.LIST) {
              {
                org.apache.thrift.protocol.TList _list666 = iprot.readListBegin();
                struct.members = new java.util.ArrayList<SquareMember>(_list666.size);
                @org.apache.thrift.annotation.Nullable SquareMember _elem667;
                for (int _i668 = 0; _i668 < _list666.size; ++_i668)
                {
                  _elem667 = new SquareMember();
                  _elem667.read(iprot);
                  struct.members.add(_elem667);
                }
                iprot.readListEnd();
              }
              struct.setMembersIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          case 2: // REVISION
            if (schemeField.type == org.apache.thrift.protocol.TType.I64) {
              struct.revision = iprot.readI64();
              struct.setRevisionIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          case 3: // CONTINUATION_TOKEN
            if (schemeField.type == org.apache.thrift.protocol.TType.STRING) {
              struct.continuationToken = iprot.readString();
              struct.setContinuationTokenIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          case 4: // TOTAL_COUNT
            if (schemeField.type == org.apache.thrift.protocol.TType.I32) {
              struct.totalCount = iprot.readI32();
              struct.setTotalCountIsSet(true);
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

    public void write(org.apache.thrift.protocol.TProtocol oprot, SearchSquareMembersResponse struct) throws org.apache.thrift.TException {
      struct.validate();

      oprot.writeStructBegin(STRUCT_DESC);
      if (struct.members != null) {
        oprot.writeFieldBegin(MEMBERS_FIELD_DESC);
        {
          oprot.writeListBegin(new org.apache.thrift.protocol.TList(org.apache.thrift.protocol.TType.STRUCT, struct.members.size()));
          for (SquareMember _iter669 : struct.members)
          {
            _iter669.write(oprot);
          }
          oprot.writeListEnd();
        }
        oprot.writeFieldEnd();
      }
      oprot.writeFieldBegin(REVISION_FIELD_DESC);
      oprot.writeI64(struct.revision);
      oprot.writeFieldEnd();
      if (struct.continuationToken != null) {
        oprot.writeFieldBegin(CONTINUATION_TOKEN_FIELD_DESC);
        oprot.writeString(struct.continuationToken);
        oprot.writeFieldEnd();
      }
      oprot.writeFieldBegin(TOTAL_COUNT_FIELD_DESC);
      oprot.writeI32(struct.totalCount);
      oprot.writeFieldEnd();
      oprot.writeFieldStop();
      oprot.writeStructEnd();
    }

  }

  private static class SearchSquareMembersResponseTupleSchemeFactory implements org.apache.thrift.scheme.SchemeFactory {
    public SearchSquareMembersResponseTupleScheme getScheme() {
      return new SearchSquareMembersResponseTupleScheme();
    }
  }

  private static class SearchSquareMembersResponseTupleScheme extends org.apache.thrift.scheme.TupleScheme<SearchSquareMembersResponse> {

    @Override
    public void write(org.apache.thrift.protocol.TProtocol prot, SearchSquareMembersResponse struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TTupleProtocol oprot = (org.apache.thrift.protocol.TTupleProtocol) prot;
      java.util.BitSet optionals = new java.util.BitSet();
      if (struct.isSetMembers()) {
        optionals.set(0);
      }
      if (struct.isSetRevision()) {
        optionals.set(1);
      }
      if (struct.isSetContinuationToken()) {
        optionals.set(2);
      }
      if (struct.isSetTotalCount()) {
        optionals.set(3);
      }
      oprot.writeBitSet(optionals, 4);
      if (struct.isSetMembers()) {
        {
          oprot.writeI32(struct.members.size());
          for (SquareMember _iter670 : struct.members)
          {
            _iter670.write(oprot);
          }
        }
      }
      if (struct.isSetRevision()) {
        oprot.writeI64(struct.revision);
      }
      if (struct.isSetContinuationToken()) {
        oprot.writeString(struct.continuationToken);
      }
      if (struct.isSetTotalCount()) {
        oprot.writeI32(struct.totalCount);
      }
    }

    @Override
    public void read(org.apache.thrift.protocol.TProtocol prot, SearchSquareMembersResponse struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TTupleProtocol iprot = (org.apache.thrift.protocol.TTupleProtocol) prot;
      java.util.BitSet incoming = iprot.readBitSet(4);
      if (incoming.get(0)) {
        {
          org.apache.thrift.protocol.TList _list671 = new org.apache.thrift.protocol.TList(org.apache.thrift.protocol.TType.STRUCT, iprot.readI32());
          struct.members = new java.util.ArrayList<SquareMember>(_list671.size);
          @org.apache.thrift.annotation.Nullable SquareMember _elem672;
          for (int _i673 = 0; _i673 < _list671.size; ++_i673)
          {
            _elem672 = new SquareMember();
            _elem672.read(iprot);
            struct.members.add(_elem672);
          }
        }
        struct.setMembersIsSet(true);
      }
      if (incoming.get(1)) {
        struct.revision = iprot.readI64();
        struct.setRevisionIsSet(true);
      }
      if (incoming.get(2)) {
        struct.continuationToken = iprot.readString();
        struct.setContinuationTokenIsSet(true);
      }
      if (incoming.get(3)) {
        struct.totalCount = iprot.readI32();
        struct.setTotalCountIsSet(true);
      }
    }
  }

  private static <S extends org.apache.thrift.scheme.IScheme> S scheme(org.apache.thrift.protocol.TProtocol proto) {
    return (org.apache.thrift.scheme.StandardScheme.class.equals(proto.getScheme()) ? STANDARD_SCHEME_FACTORY : TUPLE_SCHEME_FACTORY).getScheme();
  }
}

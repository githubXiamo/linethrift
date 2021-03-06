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

public class ChatRoomAnnouncement implements TBase {
  private static final TStruct STRUCT_DESC = new TStruct("ChatRoomAnnouncement");

  private static final TField ANNOUNCEMENT_SEQ_FIELD_DESC = new TField("announcementSeq", TType.I64, (short)1);
  private static final TField TYPE_FIELD_DESC = new TField("type", TType.I32, (short)2);
  private static final TField CONTENTS_FIELD_DESC = new TField("contents", TType.STRUCT, (short)3);
  private static final TField CREATOR_MID_FIELD_DESC = new TField("creatorMid", TType.STRING, (short)4);
  private static final TField CREATED_TIME_FIELD_DESC = new TField("createdTime", TType.I64, (short)5);

  private long announcementSeq;
  private ChatRoomAnnouncementType type;
  private ChatRoomAnnouncementContents contents;
  private String creatorMid;
  private long createdTime;

  // isset id assignments
  private static final int __ANNOUNCEMENTSEQ_ISSET_ID = 0;
  private static final int __CREATEDTIME_ISSET_ID = 1;
  private boolean[] __isset_vector = new boolean[2];

  public ChatRoomAnnouncement() {
  }

  public ChatRoomAnnouncement(
    long announcementSeq,
    ChatRoomAnnouncementType type,
    ChatRoomAnnouncementContents contents,
    String creatorMid,
    long createdTime)
  {
    this();
    this.announcementSeq = announcementSeq;
    setAnnouncementSeqIsSet(true);
    this.type = type;
    this.contents = contents;
    this.creatorMid = creatorMid;
    this.createdTime = createdTime;
    setCreatedTimeIsSet(true);
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public ChatRoomAnnouncement(ChatRoomAnnouncement other) {
    System.arraycopy(other.__isset_vector, 0, __isset_vector, 0, other.__isset_vector.length);
    this.announcementSeq = other.announcementSeq;
    if (other.isSetType()) {
      this.type = other.type;
    }
    if (other.isSetContents()) {
      this.contents = new ChatRoomAnnouncementContents(other.contents);
    }
    if (other.isSetCreatorMid()) {
      this.creatorMid = other.creatorMid;
    }
    this.createdTime = other.createdTime;
  }

  public ChatRoomAnnouncement deepCopy() {
    return new ChatRoomAnnouncement(this);
  }

  public void clear() {
    setAnnouncementSeqIsSet(false);
    this.announcementSeq = 0;
    this.type = null;
    this.contents = null;
    this.creatorMid = null;
    setCreatedTimeIsSet(false);
    this.createdTime = 0;
  }

  public long getAnnouncementSeq() {
    return this.announcementSeq;
  }

  public void setAnnouncementSeq(long announcementSeq) {
    this.announcementSeq = announcementSeq;
    setAnnouncementSeqIsSet(true);
  }

  public void unsetAnnouncementSeq() {
    __isset_vector[__ANNOUNCEMENTSEQ_ISSET_ID] = false;
  }

  /** Returns true if field announcementSeq is set (has been assigned a value) and false otherwise */
  public boolean isSetAnnouncementSeq() {
    return __isset_vector[__ANNOUNCEMENTSEQ_ISSET_ID];
  }

  public void setAnnouncementSeqIsSet(boolean value) {
    __isset_vector[__ANNOUNCEMENTSEQ_ISSET_ID] = value;
  }

  /**
   * 
   * @see ChatRoomAnnouncementType
   */
  public ChatRoomAnnouncementType getType() {
    return this.type;
  }

  /**
   * 
   * @see ChatRoomAnnouncementType
   */
  public void setType(ChatRoomAnnouncementType type) {
    this.type = type;
  }

  public void unsetType() {
    this.type = null;
  }

  /** Returns true if field type is set (has been assigned a value) and false otherwise */
  public boolean isSetType() {
    return this.type != null;
  }

  public void setTypeIsSet(boolean value) {
    if (!value) {
      this.type = null;
    }
  }

  public ChatRoomAnnouncementContents getContents() {
    return this.contents;
  }

  public void setContents(ChatRoomAnnouncementContents contents) {
    this.contents = contents;
  }

  public void unsetContents() {
    this.contents = null;
  }

  /** Returns true if field contents is set (has been assigned a value) and false otherwise */
  public boolean isSetContents() {
    return this.contents != null;
  }

  public void setContentsIsSet(boolean value) {
    if (!value) {
      this.contents = null;
    }
  }

  public String getCreatorMid() {
    return this.creatorMid;
  }

  public void setCreatorMid(String creatorMid) {
    this.creatorMid = creatorMid;
  }

  public void unsetCreatorMid() {
    this.creatorMid = null;
  }

  /** Returns true if field creatorMid is set (has been assigned a value) and false otherwise */
  public boolean isSetCreatorMid() {
    return this.creatorMid != null;
  }

  public void setCreatorMidIsSet(boolean value) {
    if (!value) {
      this.creatorMid = null;
    }
  }

  public long getCreatedTime() {
    return this.createdTime;
  }

  public void setCreatedTime(long createdTime) {
    this.createdTime = createdTime;
    setCreatedTimeIsSet(true);
  }

  public void unsetCreatedTime() {
    __isset_vector[__CREATEDTIME_ISSET_ID] = false;
  }

  /** Returns true if field createdTime is set (has been assigned a value) and false otherwise */
  public boolean isSetCreatedTime() {
    return __isset_vector[__CREATEDTIME_ISSET_ID];
  }

  public void setCreatedTimeIsSet(boolean value) {
    __isset_vector[__CREATEDTIME_ISSET_ID] = value;
  }

  public boolean equals(Object that) {
    if (that == null)
      return false;
    if (that instanceof ChatRoomAnnouncement)
      return this.equals((ChatRoomAnnouncement)that);
    return false;
  }

  public boolean equals(ChatRoomAnnouncement that) {
    if (that == null)
      return false;
    if (this == that)
      return true;

    boolean this_present_announcementSeq = true;
    boolean that_present_announcementSeq = true;
    if (this_present_announcementSeq || that_present_announcementSeq) {
      if (!(this_present_announcementSeq && that_present_announcementSeq))
        return false;
      if (this.announcementSeq != that.announcementSeq)
        return false;
    }

    boolean this_present_type = true && this.isSetType();
    boolean that_present_type = true && that.isSetType();
    if (this_present_type || that_present_type) {
      if (!(this_present_type && that_present_type))
        return false;
      if (!this.type.equals(that.type))
        return false;
    }

    boolean this_present_contents = true && this.isSetContents();
    boolean that_present_contents = true && that.isSetContents();
    if (this_present_contents || that_present_contents) {
      if (!(this_present_contents && that_present_contents))
        return false;
      if (!this.contents.equals(that.contents))
        return false;
    }

    boolean this_present_creatorMid = true && this.isSetCreatorMid();
    boolean that_present_creatorMid = true && that.isSetCreatorMid();
    if (this_present_creatorMid || that_present_creatorMid) {
      if (!(this_present_creatorMid && that_present_creatorMid))
        return false;
      if (!this.creatorMid.equals(that.creatorMid))
        return false;
    }

    boolean this_present_createdTime = true;
    boolean that_present_createdTime = true;
    if (this_present_createdTime || that_present_createdTime) {
      if (!(this_present_createdTime && that_present_createdTime))
        return false;
      if (this.createdTime != that.createdTime)
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

    ChatRoomAnnouncement other = (ChatRoomAnnouncement)otherObject;    int lastComparison = 0;

    lastComparison = TBaseHelper.compareTo(isSetAnnouncementSeq(), other.isSetAnnouncementSeq());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetAnnouncementSeq()) {
      lastComparison = TBaseHelper.compareTo(this.announcementSeq, other.announcementSeq);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetType(), other.isSetType());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetType()) {
      lastComparison = TBaseHelper.compareTo(this.type, other.type);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetContents(), other.isSetContents());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetContents()) {
      lastComparison = this.contents.compareTo(other.contents);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetCreatorMid(), other.isSetCreatorMid());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetCreatorMid()) {
      lastComparison = TBaseHelper.compareTo(this.creatorMid, other.creatorMid);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetCreatedTime(), other.isSetCreatedTime());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetCreatedTime()) {
      lastComparison = TBaseHelper.compareTo(this.createdTime, other.createdTime);
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
        case 1: // ANNOUNCEMENT_SEQ
          if (field.type == TType.I64) {
            this.announcementSeq = iprot.readI64();
            setAnnouncementSeqIsSet(true);
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 2: // TYPE
          if (field.type == TType.I32) {
            this.type = ChatRoomAnnouncementType.findByValue(iprot.readI32());
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 3: // CONTENTS
          if (field.type == TType.STRUCT) {
            this.contents = new ChatRoomAnnouncementContents();
            this.contents.read(iprot);
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 4: // CREATOR_MID
          if (field.type == TType.STRING) {
            this.creatorMid = iprot.readString();
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 5: // CREATED_TIME
          if (field.type == TType.I64) {
            this.createdTime = iprot.readI64();
            setCreatedTimeIsSet(true);
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
    oprot.writeFieldBegin(ANNOUNCEMENT_SEQ_FIELD_DESC);
    oprot.writeI64(this.announcementSeq);
    oprot.writeFieldEnd();
    if (this.type != null) {
      oprot.writeFieldBegin(TYPE_FIELD_DESC);
      oprot.writeI32(this.type.getValue());
      oprot.writeFieldEnd();
    }
    if (this.contents != null) {
      oprot.writeFieldBegin(CONTENTS_FIELD_DESC);
      this.contents.write(oprot);
      oprot.writeFieldEnd();
    }
    if (this.creatorMid != null) {
      oprot.writeFieldBegin(CREATOR_MID_FIELD_DESC);
      oprot.writeString(this.creatorMid);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldBegin(CREATED_TIME_FIELD_DESC);
    oprot.writeI64(this.createdTime);
    oprot.writeFieldEnd();
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  public String toString() {
    StringBuffer sb = new StringBuffer("ChatRoomAnnouncement(");
    boolean first = true;

    sb.append("announcementSeq:");
    sb.append(this.announcementSeq);
    first = false;
    if (!first) sb.append(", ");
    sb.append("type:");
    if (this.type == null) {
      sb.append("null");
    } else {
      sb.append(this.type);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("contents:");
    if (this.contents == null) {
      sb.append("null");
    } else {
      sb.append(this.contents);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("creatorMid:");
    if (this.creatorMid == null) {
      sb.append("null");
    } else {
      sb.append(this.creatorMid);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("createdTime:");
    sb.append(this.createdTime);
    first = false;
    sb.append(")");
    return sb.toString();
  }

  public void validate() throws TException {
    // check for required fields
  }

}


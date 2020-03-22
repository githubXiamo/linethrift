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

public class GetJoinedSquareChatsResponse implements TBase {
  private static final TStruct STRUCT_DESC = new TStruct("GetJoinedSquareChatsResponse");

  private static final TField CHATS_FIELD_DESC = new TField("chats", TType.LIST, (short)1);
  private static final TField CHAT_MEMBERS_FIELD_DESC = new TField("chatMembers", TType.MAP, (short)2);
  private static final TField STATUSES_FIELD_DESC = new TField("statuses", TType.MAP, (short)3);
  private static final TField CONTINUATION_TOKEN_FIELD_DESC = new TField("continuationToken", TType.STRING, (short)4);

  private Vector chats;
  private Hashtable chatMembers;
  private Hashtable statuses;
  private String continuationToken;

  // isset id assignments

  public GetJoinedSquareChatsResponse() {
  }

  public GetJoinedSquareChatsResponse(
    Vector chats,
    Hashtable chatMembers,
    Hashtable statuses,
    String continuationToken)
  {
    this();
    this.chats = chats;
    this.chatMembers = chatMembers;
    this.statuses = statuses;
    this.continuationToken = continuationToken;
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public GetJoinedSquareChatsResponse(GetJoinedSquareChatsResponse other) {
    if (other.isSetChats()) {
      Vector __this__chats = new Vector();
      for (Enumeration other_enum = other.chats.elements(); other_enum.hasMoreElements(); ) {
        SquareChat other_element = (SquareChat)other_enum.nextElement();
        __this__chats.addElement(new SquareChat(other_element));
      }
      this.chats = __this__chats;
    }
    if (other.isSetChatMembers()) {
      Hashtable __this__chatMembers = new Hashtable();
      for (Enumeration other_enum = other.chatMembers.keys(); other_enum.hasMoreElements(); ) {

        String other_element_key = (String)other_enum.nextElement();
        SquareChatMember other_element_value = (SquareChatMember)other.chatMembers.get(other_element_key);

        String __this__chatMembers_copy_key = other_element_key;

        SquareChatMember __this__chatMembers_copy_value = new SquareChatMember(other_element_value);

        __this__chatMembers.put(__this__chatMembers_copy_key, __this__chatMembers_copy_value);
      }
      this.chatMembers = __this__chatMembers;
    }
    if (other.isSetStatuses()) {
      Hashtable __this__statuses = new Hashtable();
      for (Enumeration other_enum = other.statuses.keys(); other_enum.hasMoreElements(); ) {

        String other_element_key = (String)other_enum.nextElement();
        SquareChatStatus other_element_value = (SquareChatStatus)other.statuses.get(other_element_key);

        String __this__statuses_copy_key = other_element_key;

        SquareChatStatus __this__statuses_copy_value = new SquareChatStatus(other_element_value);

        __this__statuses.put(__this__statuses_copy_key, __this__statuses_copy_value);
      }
      this.statuses = __this__statuses;
    }
    if (other.isSetContinuationToken()) {
      this.continuationToken = other.continuationToken;
    }
  }

  public GetJoinedSquareChatsResponse deepCopy() {
    return new GetJoinedSquareChatsResponse(this);
  }

  public void clear() {
    this.chats = null;
    this.chatMembers = null;
    this.statuses = null;
    this.continuationToken = null;
  }

  public int getChatsSize() {
    return (this.chats == null) ? 0 : this.chats.size();
  }

  public Enumeration getChatsEnumeration() {
    return (this.chats == null) ? null : this.chats.elements();
  }

  public void addToChats(SquareChat elem) {
    if (this.chats == null) {
      this.chats = new Vector();
    }
    this.chats.addElement(elem);
  }

  public Vector getChats() {
    return this.chats;
  }

  public void setChats(Vector chats) {
    this.chats = chats;
  }

  public void unsetChats() {
    this.chats = null;
  }

  /** Returns true if field chats is set (has been assigned a value) and false otherwise */
  public boolean isSetChats() {
    return this.chats != null;
  }

  public void setChatsIsSet(boolean value) {
    if (!value) {
      this.chats = null;
    }
  }

  public int getChatMembersSize() {
    return (this.chatMembers == null) ? 0 : this.chatMembers.size();
  }

  public void putToChatMembers(String key, SquareChatMember val) {
    if (this.chatMembers == null) {
      this.chatMembers = new Hashtable();
    }
    this.chatMembers.put(key, val);
  }

  public Hashtable getChatMembers() {
    return this.chatMembers;
  }

  public void setChatMembers(Hashtable chatMembers) {
    this.chatMembers = chatMembers;
  }

  public void unsetChatMembers() {
    this.chatMembers = null;
  }

  /** Returns true if field chatMembers is set (has been assigned a value) and false otherwise */
  public boolean isSetChatMembers() {
    return this.chatMembers != null;
  }

  public void setChatMembersIsSet(boolean value) {
    if (!value) {
      this.chatMembers = null;
    }
  }

  public int getStatusesSize() {
    return (this.statuses == null) ? 0 : this.statuses.size();
  }

  public void putToStatuses(String key, SquareChatStatus val) {
    if (this.statuses == null) {
      this.statuses = new Hashtable();
    }
    this.statuses.put(key, val);
  }

  public Hashtable getStatuses() {
    return this.statuses;
  }

  public void setStatuses(Hashtable statuses) {
    this.statuses = statuses;
  }

  public void unsetStatuses() {
    this.statuses = null;
  }

  /** Returns true if field statuses is set (has been assigned a value) and false otherwise */
  public boolean isSetStatuses() {
    return this.statuses != null;
  }

  public void setStatusesIsSet(boolean value) {
    if (!value) {
      this.statuses = null;
    }
  }

  public String getContinuationToken() {
    return this.continuationToken;
  }

  public void setContinuationToken(String continuationToken) {
    this.continuationToken = continuationToken;
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

  public boolean equals(Object that) {
    if (that == null)
      return false;
    if (that instanceof GetJoinedSquareChatsResponse)
      return this.equals((GetJoinedSquareChatsResponse)that);
    return false;
  }

  public boolean equals(GetJoinedSquareChatsResponse that) {
    if (that == null)
      return false;
    if (this == that)
      return true;

    boolean this_present_chats = true && this.isSetChats();
    boolean that_present_chats = true && that.isSetChats();
    if (this_present_chats || that_present_chats) {
      if (!(this_present_chats && that_present_chats))
        return false;
      if (!this.chats.equals(that.chats))
        return false;
    }

    boolean this_present_chatMembers = true && this.isSetChatMembers();
    boolean that_present_chatMembers = true && that.isSetChatMembers();
    if (this_present_chatMembers || that_present_chatMembers) {
      if (!(this_present_chatMembers && that_present_chatMembers))
        return false;
      if (!this.chatMembers.equals(that.chatMembers))
        return false;
    }

    boolean this_present_statuses = true && this.isSetStatuses();
    boolean that_present_statuses = true && that.isSetStatuses();
    if (this_present_statuses || that_present_statuses) {
      if (!(this_present_statuses && that_present_statuses))
        return false;
      if (!this.statuses.equals(that.statuses))
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

    return true;
  }

  public int hashCode() {
    return 0;
  }

  public int compareTo(Object otherObject) {
    if (!getClass().equals(otherObject.getClass())) {
      return getClass().getName().compareTo(otherObject.getClass().getName());
    }

    GetJoinedSquareChatsResponse other = (GetJoinedSquareChatsResponse)otherObject;    int lastComparison = 0;

    lastComparison = TBaseHelper.compareTo(isSetChats(), other.isSetChats());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetChats()) {
      lastComparison = TBaseHelper.compareTo(this.chats, other.chats);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetChatMembers(), other.isSetChatMembers());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetChatMembers()) {
      lastComparison = TBaseHelper.compareTo(this.chatMembers, other.chatMembers);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetStatuses(), other.isSetStatuses());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetStatuses()) {
      lastComparison = TBaseHelper.compareTo(this.statuses, other.statuses);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetContinuationToken(), other.isSetContinuationToken());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetContinuationToken()) {
      lastComparison = TBaseHelper.compareTo(this.continuationToken, other.continuationToken);
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
        case 1: // CHATS
          if (field.type == TType.LIST) {
            {
              TList _list503 = iprot.readListBegin();
              this.chats = new Vector(_list503.size);
              for (int _i504 = 0; _i504 < _list503.size; ++_i504)
              {
                SquareChat _elem505;
                _elem505 = new SquareChat();
                _elem505.read(iprot);
                this.chats.addElement(_elem505);
              }
              iprot.readListEnd();
            }
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 2: // CHAT_MEMBERS
          if (field.type == TType.MAP) {
            {
              TMap _map506 = iprot.readMapBegin();
              this.chatMembers = new Hashtable(2*_map506.size);
              for (int _i507 = 0; _i507 < _map506.size; ++_i507)
              {
                String _key508;
                SquareChatMember _val509;
                _key508 = iprot.readString();
                _val509 = new SquareChatMember();
                _val509.read(iprot);
                this.chatMembers.put(_key508, _val509);
              }
              iprot.readMapEnd();
            }
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 3: // STATUSES
          if (field.type == TType.MAP) {
            {
              TMap _map510 = iprot.readMapBegin();
              this.statuses = new Hashtable(2*_map510.size);
              for (int _i511 = 0; _i511 < _map510.size; ++_i511)
              {
                String _key512;
                SquareChatStatus _val513;
                _key512 = iprot.readString();
                _val513 = new SquareChatStatus();
                _val513.read(iprot);
                this.statuses.put(_key512, _val513);
              }
              iprot.readMapEnd();
            }
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 4: // CONTINUATION_TOKEN
          if (field.type == TType.STRING) {
            this.continuationToken = iprot.readString();
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
    if (this.chats != null) {
      oprot.writeFieldBegin(CHATS_FIELD_DESC);
      {
        oprot.writeListBegin(new TList(TType.STRUCT, this.chats.size()));
        for (Enumeration _iter514_enum = this.chats.elements(); _iter514_enum.hasMoreElements(); )         {
          SquareChat _iter514 = (SquareChat)_iter514_enum.nextElement();
          _iter514.write(oprot);
        }
        oprot.writeListEnd();
      }
      oprot.writeFieldEnd();
    }
    if (this.chatMembers != null) {
      oprot.writeFieldBegin(CHAT_MEMBERS_FIELD_DESC);
      {
        oprot.writeMapBegin(new TMap(TType.STRING, TType.STRUCT, this.chatMembers.size()));
        for (Enumeration _iter515_enum = this.chatMembers.keys(); _iter515_enum.hasMoreElements(); )         {
          String _iter515 = (String)_iter515_enum.nextElement();
          oprot.writeString(_iter515);
          ((SquareChatMember)this.chatMembers.get(_iter515)).write(oprot);
        }
        oprot.writeMapEnd();
      }
      oprot.writeFieldEnd();
    }
    if (this.statuses != null) {
      oprot.writeFieldBegin(STATUSES_FIELD_DESC);
      {
        oprot.writeMapBegin(new TMap(TType.STRING, TType.STRUCT, this.statuses.size()));
        for (Enumeration _iter516_enum = this.statuses.keys(); _iter516_enum.hasMoreElements(); )         {
          String _iter516 = (String)_iter516_enum.nextElement();
          oprot.writeString(_iter516);
          ((SquareChatStatus)this.statuses.get(_iter516)).write(oprot);
        }
        oprot.writeMapEnd();
      }
      oprot.writeFieldEnd();
    }
    if (this.continuationToken != null) {
      oprot.writeFieldBegin(CONTINUATION_TOKEN_FIELD_DESC);
      oprot.writeString(this.continuationToken);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  public String toString() {
    StringBuffer sb = new StringBuffer("GetJoinedSquareChatsResponse(");
    boolean first = true;

    sb.append("chats:");
    if (this.chats == null) {
      sb.append("null");
    } else {
      sb.append(this.chats);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("chatMembers:");
    if (this.chatMembers == null) {
      sb.append("null");
    } else {
      sb.append(this.chatMembers);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("statuses:");
    if (this.statuses == null) {
      sb.append("null");
    } else {
      sb.append(this.statuses);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("continuationToken:");
    if (this.continuationToken == null) {
      sb.append("null");
    } else {
      sb.append(this.continuationToken);
    }
    first = false;
    sb.append(")");
    return sb.toString();
  }

  public void validate() throws TException {
    // check for required fields
  }

}

/**
 * Autogenerated by Thrift Compiler (0.11.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
using System.IO;
using Thrift;
using Thrift.Collections;
using System.Runtime.Serialization;
using Thrift.Protocol;
using Thrift.Transport;


#if !SILVERLIGHT
[Serializable]
#endif
public partial class SquareAuthority : TBase
{
  private string _squareMid;
  private SquareMemberRole _updateSquareProfile;
  private SquareMemberRole _inviteNewMember;
  private SquareMemberRole _approveJoinRequest;
  private SquareMemberRole _createPost;
  private SquareMemberRole _createOpenSquareChat;
  private SquareMemberRole _deleteSquareChatOrPost;
  private SquareMemberRole _removeSquareMember;
  private SquareMemberRole _grantRole;
  private SquareMemberRole _enableInvitationTicket;
  private long _revision;

  public string SquareMid
  {
    get
    {
      return _squareMid;
    }
    set
    {
      __isset.squareMid = true;
      this._squareMid = value;
    }
  }

  /// <summary>
  /// 
  /// <seealso cref="SquareMemberRole"/>
  /// </summary>
  public SquareMemberRole UpdateSquareProfile
  {
    get
    {
      return _updateSquareProfile;
    }
    set
    {
      __isset.updateSquareProfile = true;
      this._updateSquareProfile = value;
    }
  }

  /// <summary>
  /// 
  /// <seealso cref="SquareMemberRole"/>
  /// </summary>
  public SquareMemberRole InviteNewMember
  {
    get
    {
      return _inviteNewMember;
    }
    set
    {
      __isset.inviteNewMember = true;
      this._inviteNewMember = value;
    }
  }

  /// <summary>
  /// 
  /// <seealso cref="SquareMemberRole"/>
  /// </summary>
  public SquareMemberRole ApproveJoinRequest
  {
    get
    {
      return _approveJoinRequest;
    }
    set
    {
      __isset.approveJoinRequest = true;
      this._approveJoinRequest = value;
    }
  }

  /// <summary>
  /// 
  /// <seealso cref="SquareMemberRole"/>
  /// </summary>
  public SquareMemberRole CreatePost
  {
    get
    {
      return _createPost;
    }
    set
    {
      __isset.createPost = true;
      this._createPost = value;
    }
  }

  /// <summary>
  /// 
  /// <seealso cref="SquareMemberRole"/>
  /// </summary>
  public SquareMemberRole CreateOpenSquareChat
  {
    get
    {
      return _createOpenSquareChat;
    }
    set
    {
      __isset.createOpenSquareChat = true;
      this._createOpenSquareChat = value;
    }
  }

  /// <summary>
  /// 
  /// <seealso cref="SquareMemberRole"/>
  /// </summary>
  public SquareMemberRole DeleteSquareChatOrPost
  {
    get
    {
      return _deleteSquareChatOrPost;
    }
    set
    {
      __isset.deleteSquareChatOrPost = true;
      this._deleteSquareChatOrPost = value;
    }
  }

  /// <summary>
  /// 
  /// <seealso cref="SquareMemberRole"/>
  /// </summary>
  public SquareMemberRole RemoveSquareMember
  {
    get
    {
      return _removeSquareMember;
    }
    set
    {
      __isset.removeSquareMember = true;
      this._removeSquareMember = value;
    }
  }

  /// <summary>
  /// 
  /// <seealso cref="SquareMemberRole"/>
  /// </summary>
  public SquareMemberRole GrantRole
  {
    get
    {
      return _grantRole;
    }
    set
    {
      __isset.grantRole = true;
      this._grantRole = value;
    }
  }

  /// <summary>
  /// 
  /// <seealso cref="SquareMemberRole"/>
  /// </summary>
  public SquareMemberRole EnableInvitationTicket
  {
    get
    {
      return _enableInvitationTicket;
    }
    set
    {
      __isset.enableInvitationTicket = true;
      this._enableInvitationTicket = value;
    }
  }

  public long Revision
  {
    get
    {
      return _revision;
    }
    set
    {
      __isset.revision = true;
      this._revision = value;
    }
  }


  public Isset __isset;
  #if !SILVERLIGHT
  [Serializable]
  #endif
  public struct Isset {
    public bool squareMid;
    public bool updateSquareProfile;
    public bool inviteNewMember;
    public bool approveJoinRequest;
    public bool createPost;
    public bool createOpenSquareChat;
    public bool deleteSquareChatOrPost;
    public bool removeSquareMember;
    public bool grantRole;
    public bool enableInvitationTicket;
    public bool revision;
  }

  public SquareAuthority() {
  }

  public void Read (TProtocol iprot)
  {
    iprot.IncrementRecursionDepth();
    try
    {
      TField field;
      iprot.ReadStructBegin();
      while (true)
      {
        field = iprot.ReadFieldBegin();
        if (field.Type == TType.Stop) { 
          break;
        }
        switch (field.ID)
        {
          case 1:
            if (field.Type == TType.String) {
              SquareMid = iprot.ReadString();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 2:
            if (field.Type == TType.I32) {
              UpdateSquareProfile = (SquareMemberRole)iprot.ReadI32();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 3:
            if (field.Type == TType.I32) {
              InviteNewMember = (SquareMemberRole)iprot.ReadI32();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 4:
            if (field.Type == TType.I32) {
              ApproveJoinRequest = (SquareMemberRole)iprot.ReadI32();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 5:
            if (field.Type == TType.I32) {
              CreatePost = (SquareMemberRole)iprot.ReadI32();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 6:
            if (field.Type == TType.I32) {
              CreateOpenSquareChat = (SquareMemberRole)iprot.ReadI32();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 7:
            if (field.Type == TType.I32) {
              DeleteSquareChatOrPost = (SquareMemberRole)iprot.ReadI32();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 8:
            if (field.Type == TType.I32) {
              RemoveSquareMember = (SquareMemberRole)iprot.ReadI32();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 9:
            if (field.Type == TType.I32) {
              GrantRole = (SquareMemberRole)iprot.ReadI32();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 10:
            if (field.Type == TType.I32) {
              EnableInvitationTicket = (SquareMemberRole)iprot.ReadI32();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 11:
            if (field.Type == TType.I64) {
              Revision = iprot.ReadI64();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          default: 
            TProtocolUtil.Skip(iprot, field.Type);
            break;
        }
        iprot.ReadFieldEnd();
      }
      iprot.ReadStructEnd();
    }
    finally
    {
      iprot.DecrementRecursionDepth();
    }
  }

  public void Write(TProtocol oprot) {
    oprot.IncrementRecursionDepth();
    try
    {
      TStruct struc = new TStruct("SquareAuthority");
      oprot.WriteStructBegin(struc);
      TField field = new TField();
      if (SquareMid != null && __isset.squareMid) {
        field.Name = "squareMid";
        field.Type = TType.String;
        field.ID = 1;
        oprot.WriteFieldBegin(field);
        oprot.WriteString(SquareMid);
        oprot.WriteFieldEnd();
      }
      if (__isset.updateSquareProfile) {
        field.Name = "updateSquareProfile";
        field.Type = TType.I32;
        field.ID = 2;
        oprot.WriteFieldBegin(field);
        oprot.WriteI32((int)UpdateSquareProfile);
        oprot.WriteFieldEnd();
      }
      if (__isset.inviteNewMember) {
        field.Name = "inviteNewMember";
        field.Type = TType.I32;
        field.ID = 3;
        oprot.WriteFieldBegin(field);
        oprot.WriteI32((int)InviteNewMember);
        oprot.WriteFieldEnd();
      }
      if (__isset.approveJoinRequest) {
        field.Name = "approveJoinRequest";
        field.Type = TType.I32;
        field.ID = 4;
        oprot.WriteFieldBegin(field);
        oprot.WriteI32((int)ApproveJoinRequest);
        oprot.WriteFieldEnd();
      }
      if (__isset.createPost) {
        field.Name = "createPost";
        field.Type = TType.I32;
        field.ID = 5;
        oprot.WriteFieldBegin(field);
        oprot.WriteI32((int)CreatePost);
        oprot.WriteFieldEnd();
      }
      if (__isset.createOpenSquareChat) {
        field.Name = "createOpenSquareChat";
        field.Type = TType.I32;
        field.ID = 6;
        oprot.WriteFieldBegin(field);
        oprot.WriteI32((int)CreateOpenSquareChat);
        oprot.WriteFieldEnd();
      }
      if (__isset.deleteSquareChatOrPost) {
        field.Name = "deleteSquareChatOrPost";
        field.Type = TType.I32;
        field.ID = 7;
        oprot.WriteFieldBegin(field);
        oprot.WriteI32((int)DeleteSquareChatOrPost);
        oprot.WriteFieldEnd();
      }
      if (__isset.removeSquareMember) {
        field.Name = "removeSquareMember";
        field.Type = TType.I32;
        field.ID = 8;
        oprot.WriteFieldBegin(field);
        oprot.WriteI32((int)RemoveSquareMember);
        oprot.WriteFieldEnd();
      }
      if (__isset.grantRole) {
        field.Name = "grantRole";
        field.Type = TType.I32;
        field.ID = 9;
        oprot.WriteFieldBegin(field);
        oprot.WriteI32((int)GrantRole);
        oprot.WriteFieldEnd();
      }
      if (__isset.enableInvitationTicket) {
        field.Name = "enableInvitationTicket";
        field.Type = TType.I32;
        field.ID = 10;
        oprot.WriteFieldBegin(field);
        oprot.WriteI32((int)EnableInvitationTicket);
        oprot.WriteFieldEnd();
      }
      if (__isset.revision) {
        field.Name = "revision";
        field.Type = TType.I64;
        field.ID = 11;
        oprot.WriteFieldBegin(field);
        oprot.WriteI64(Revision);
        oprot.WriteFieldEnd();
      }
      oprot.WriteFieldStop();
      oprot.WriteStructEnd();
    }
    finally
    {
      oprot.DecrementRecursionDepth();
    }
  }

  public override string ToString() {
    StringBuilder __sb = new StringBuilder("SquareAuthority(");
    bool __first = true;
    if (SquareMid != null && __isset.squareMid) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("SquareMid: ");
      __sb.Append(SquareMid);
    }
    if (__isset.updateSquareProfile) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("UpdateSquareProfile: ");
      __sb.Append(UpdateSquareProfile);
    }
    if (__isset.inviteNewMember) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("InviteNewMember: ");
      __sb.Append(InviteNewMember);
    }
    if (__isset.approveJoinRequest) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("ApproveJoinRequest: ");
      __sb.Append(ApproveJoinRequest);
    }
    if (__isset.createPost) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("CreatePost: ");
      __sb.Append(CreatePost);
    }
    if (__isset.createOpenSquareChat) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("CreateOpenSquareChat: ");
      __sb.Append(CreateOpenSquareChat);
    }
    if (__isset.deleteSquareChatOrPost) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("DeleteSquareChatOrPost: ");
      __sb.Append(DeleteSquareChatOrPost);
    }
    if (__isset.removeSquareMember) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("RemoveSquareMember: ");
      __sb.Append(RemoveSquareMember);
    }
    if (__isset.grantRole) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("GrantRole: ");
      __sb.Append(GrantRole);
    }
    if (__isset.enableInvitationTicket) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("EnableInvitationTicket: ");
      __sb.Append(EnableInvitationTicket);
    }
    if (__isset.revision) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("Revision: ");
      __sb.Append(Revision);
    }
    __sb.Append(")");
    return __sb.ToString();
  }

}

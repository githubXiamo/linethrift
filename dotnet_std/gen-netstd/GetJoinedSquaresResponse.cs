/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
using System.IO;
using System.Threading;
using System.Threading.Tasks;
using Thrift;
using Thrift.Collections;

using Thrift.Protocol;
using Thrift.Protocol.Entities;
using Thrift.Protocol.Utilities;
using Thrift.Transport;
using Thrift.Transport.Client;
using Thrift.Transport.Server;
using Thrift.Processor;



public partial class GetJoinedSquaresResponse : TBase
{
  private List<Square> _squares;
  private Dictionary<string, SquareMember> _members;
  private Dictionary<string, SquareAuthority> _authorities;
  private Dictionary<string, SquareStatus> _statuses;
  private string _continuationToken;
  private Dictionary<string, NoteStatus> _noteStatuses;

  public List<Square> Squares
  {
    get
    {
      return _squares;
    }
    set
    {
      __isset.squares = true;
      this._squares = value;
    }
  }

  public Dictionary<string, SquareMember> Members
  {
    get
    {
      return _members;
    }
    set
    {
      __isset.members = true;
      this._members = value;
    }
  }

  public Dictionary<string, SquareAuthority> Authorities
  {
    get
    {
      return _authorities;
    }
    set
    {
      __isset.authorities = true;
      this._authorities = value;
    }
  }

  public Dictionary<string, SquareStatus> Statuses
  {
    get
    {
      return _statuses;
    }
    set
    {
      __isset.statuses = true;
      this._statuses = value;
    }
  }

  public string ContinuationToken
  {
    get
    {
      return _continuationToken;
    }
    set
    {
      __isset.continuationToken = true;
      this._continuationToken = value;
    }
  }

  public Dictionary<string, NoteStatus> NoteStatuses
  {
    get
    {
      return _noteStatuses;
    }
    set
    {
      __isset.noteStatuses = true;
      this._noteStatuses = value;
    }
  }


  public Isset __isset;
  public struct Isset
  {
    public bool squares;
    public bool members;
    public bool authorities;
    public bool statuses;
    public bool continuationToken;
    public bool noteStatuses;
  }

  public GetJoinedSquaresResponse()
  {
  }

  public async Task ReadAsync(TProtocol iprot, CancellationToken cancellationToken)
  {
    iprot.IncrementRecursionDepth();
    try
    {
      TField field;
      await iprot.ReadStructBeginAsync(cancellationToken);
      while (true)
      {
        field = await iprot.ReadFieldBeginAsync(cancellationToken);
        if (field.Type == TType.Stop)
        {
          break;
        }

        switch (field.ID)
        {
          case 1:
            if (field.Type == TType.List)
            {
              {
                TList _list296 = await iprot.ReadListBeginAsync(cancellationToken);
                Squares = new List<Square>(_list296.Count);
                for(int _i297 = 0; _i297 < _list296.Count; ++_i297)
                {
                  Square _elem298;
                  _elem298 = new Square();
                  await _elem298.ReadAsync(iprot, cancellationToken);
                  Squares.Add(_elem298);
                }
                await iprot.ReadListEndAsync(cancellationToken);
              }
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 2:
            if (field.Type == TType.Map)
            {
              {
                TMap _map299 = await iprot.ReadMapBeginAsync(cancellationToken);
                Members = new Dictionary<string, SquareMember>(_map299.Count);
                for(int _i300 = 0; _i300 < _map299.Count; ++_i300)
                {
                  string _key301;
                  SquareMember _val302;
                  _key301 = await iprot.ReadStringAsync(cancellationToken);
                  _val302 = new SquareMember();
                  await _val302.ReadAsync(iprot, cancellationToken);
                  Members[_key301] = _val302;
                }
                await iprot.ReadMapEndAsync(cancellationToken);
              }
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 3:
            if (field.Type == TType.Map)
            {
              {
                TMap _map303 = await iprot.ReadMapBeginAsync(cancellationToken);
                Authorities = new Dictionary<string, SquareAuthority>(_map303.Count);
                for(int _i304 = 0; _i304 < _map303.Count; ++_i304)
                {
                  string _key305;
                  SquareAuthority _val306;
                  _key305 = await iprot.ReadStringAsync(cancellationToken);
                  _val306 = new SquareAuthority();
                  await _val306.ReadAsync(iprot, cancellationToken);
                  Authorities[_key305] = _val306;
                }
                await iprot.ReadMapEndAsync(cancellationToken);
              }
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 4:
            if (field.Type == TType.Map)
            {
              {
                TMap _map307 = await iprot.ReadMapBeginAsync(cancellationToken);
                Statuses = new Dictionary<string, SquareStatus>(_map307.Count);
                for(int _i308 = 0; _i308 < _map307.Count; ++_i308)
                {
                  string _key309;
                  SquareStatus _val310;
                  _key309 = await iprot.ReadStringAsync(cancellationToken);
                  _val310 = new SquareStatus();
                  await _val310.ReadAsync(iprot, cancellationToken);
                  Statuses[_key309] = _val310;
                }
                await iprot.ReadMapEndAsync(cancellationToken);
              }
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 5:
            if (field.Type == TType.String)
            {
              ContinuationToken = await iprot.ReadStringAsync(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 6:
            if (field.Type == TType.Map)
            {
              {
                TMap _map311 = await iprot.ReadMapBeginAsync(cancellationToken);
                NoteStatuses = new Dictionary<string, NoteStatus>(_map311.Count);
                for(int _i312 = 0; _i312 < _map311.Count; ++_i312)
                {
                  string _key313;
                  NoteStatus _val314;
                  _key313 = await iprot.ReadStringAsync(cancellationToken);
                  _val314 = new NoteStatus();
                  await _val314.ReadAsync(iprot, cancellationToken);
                  NoteStatuses[_key313] = _val314;
                }
                await iprot.ReadMapEndAsync(cancellationToken);
              }
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          default: 
            await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            break;
        }

        await iprot.ReadFieldEndAsync(cancellationToken);
      }

      await iprot.ReadStructEndAsync(cancellationToken);
    }
    finally
    {
      iprot.DecrementRecursionDepth();
    }
  }

  public async Task WriteAsync(TProtocol oprot, CancellationToken cancellationToken)
  {
    oprot.IncrementRecursionDepth();
    try
    {
      var struc = new TStruct("GetJoinedSquaresResponse");
      await oprot.WriteStructBeginAsync(struc, cancellationToken);
      var field = new TField();
      if (Squares != null && __isset.squares)
      {
        field.Name = "squares";
        field.Type = TType.List;
        field.ID = 1;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        {
          await oprot.WriteListBeginAsync(new TList(TType.Struct, Squares.Count), cancellationToken);
          foreach (Square _iter315 in Squares)
          {
            await _iter315.WriteAsync(oprot, cancellationToken);
          }
          await oprot.WriteListEndAsync(cancellationToken);
        }
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (Members != null && __isset.members)
      {
        field.Name = "members";
        field.Type = TType.Map;
        field.ID = 2;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        {
          await oprot.WriteMapBeginAsync(new TMap(TType.String, TType.Struct, Members.Count), cancellationToken);
          foreach (string _iter316 in Members.Keys)
          {
            await oprot.WriteStringAsync(_iter316, cancellationToken);
            await Members[_iter316].WriteAsync(oprot, cancellationToken);
          }
          await oprot.WriteMapEndAsync(cancellationToken);
        }
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (Authorities != null && __isset.authorities)
      {
        field.Name = "authorities";
        field.Type = TType.Map;
        field.ID = 3;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        {
          await oprot.WriteMapBeginAsync(new TMap(TType.String, TType.Struct, Authorities.Count), cancellationToken);
          foreach (string _iter317 in Authorities.Keys)
          {
            await oprot.WriteStringAsync(_iter317, cancellationToken);
            await Authorities[_iter317].WriteAsync(oprot, cancellationToken);
          }
          await oprot.WriteMapEndAsync(cancellationToken);
        }
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (Statuses != null && __isset.statuses)
      {
        field.Name = "statuses";
        field.Type = TType.Map;
        field.ID = 4;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        {
          await oprot.WriteMapBeginAsync(new TMap(TType.String, TType.Struct, Statuses.Count), cancellationToken);
          foreach (string _iter318 in Statuses.Keys)
          {
            await oprot.WriteStringAsync(_iter318, cancellationToken);
            await Statuses[_iter318].WriteAsync(oprot, cancellationToken);
          }
          await oprot.WriteMapEndAsync(cancellationToken);
        }
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (ContinuationToken != null && __isset.continuationToken)
      {
        field.Name = "continuationToken";
        field.Type = TType.String;
        field.ID = 5;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(ContinuationToken, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (NoteStatuses != null && __isset.noteStatuses)
      {
        field.Name = "noteStatuses";
        field.Type = TType.Map;
        field.ID = 6;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        {
          await oprot.WriteMapBeginAsync(new TMap(TType.String, TType.Struct, NoteStatuses.Count), cancellationToken);
          foreach (string _iter319 in NoteStatuses.Keys)
          {
            await oprot.WriteStringAsync(_iter319, cancellationToken);
            await NoteStatuses[_iter319].WriteAsync(oprot, cancellationToken);
          }
          await oprot.WriteMapEndAsync(cancellationToken);
        }
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      await oprot.WriteFieldStopAsync(cancellationToken);
      await oprot.WriteStructEndAsync(cancellationToken);
    }
    finally
    {
      oprot.DecrementRecursionDepth();
    }
  }

  public override bool Equals(object that)
  {
    var other = that as GetJoinedSquaresResponse;
    if (other == null) return false;
    if (ReferenceEquals(this, other)) return true;
    return ((__isset.squares == other.__isset.squares) && ((!__isset.squares) || (TCollections.Equals(Squares, other.Squares))))
      && ((__isset.members == other.__isset.members) && ((!__isset.members) || (TCollections.Equals(Members, other.Members))))
      && ((__isset.authorities == other.__isset.authorities) && ((!__isset.authorities) || (TCollections.Equals(Authorities, other.Authorities))))
      && ((__isset.statuses == other.__isset.statuses) && ((!__isset.statuses) || (TCollections.Equals(Statuses, other.Statuses))))
      && ((__isset.continuationToken == other.__isset.continuationToken) && ((!__isset.continuationToken) || (System.Object.Equals(ContinuationToken, other.ContinuationToken))))
      && ((__isset.noteStatuses == other.__isset.noteStatuses) && ((!__isset.noteStatuses) || (TCollections.Equals(NoteStatuses, other.NoteStatuses))));
  }

  public override int GetHashCode() {
    int hashcode = 157;
    unchecked {
      if(__isset.squares)
        hashcode = (hashcode * 397) + TCollections.GetHashCode(Squares);
      if(__isset.members)
        hashcode = (hashcode * 397) + TCollections.GetHashCode(Members);
      if(__isset.authorities)
        hashcode = (hashcode * 397) + TCollections.GetHashCode(Authorities);
      if(__isset.statuses)
        hashcode = (hashcode * 397) + TCollections.GetHashCode(Statuses);
      if(__isset.continuationToken)
        hashcode = (hashcode * 397) + ContinuationToken.GetHashCode();
      if(__isset.noteStatuses)
        hashcode = (hashcode * 397) + TCollections.GetHashCode(NoteStatuses);
    }
    return hashcode;
  }

  public override string ToString()
  {
    var sb = new StringBuilder("GetJoinedSquaresResponse(");
    bool __first = true;
    if (Squares != null && __isset.squares)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("Squares: ");
      Squares.ToString(sb);
    }
    if (Members != null && __isset.members)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("Members: ");
      Members.ToString(sb);
    }
    if (Authorities != null && __isset.authorities)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("Authorities: ");
      Authorities.ToString(sb);
    }
    if (Statuses != null && __isset.statuses)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("Statuses: ");
      Statuses.ToString(sb);
    }
    if (ContinuationToken != null && __isset.continuationToken)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("ContinuationToken: ");
      ContinuationToken.ToString(sb);
    }
    if (NoteStatuses != null && __isset.noteStatuses)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("NoteStatuses: ");
      NoteStatuses.ToString(sb);
    }
    sb.Append(")");
    return sb.ToString();
  }
}

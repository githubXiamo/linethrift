/**
 * Autogenerated by Thrift Compiler (0.13.0)
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



public partial class PaidCallUserRate : TBase
{
  private string _countryCode;
  private int _rate;
  private string _rateDivision;
  private string _rateName;

  public string CountryCode
  {
    get
    {
      return _countryCode;
    }
    set
    {
      __isset.countryCode = true;
      this._countryCode = value;
    }
  }

  public int Rate
  {
    get
    {
      return _rate;
    }
    set
    {
      __isset.rate = true;
      this._rate = value;
    }
  }

  public string RateDivision
  {
    get
    {
      return _rateDivision;
    }
    set
    {
      __isset.rateDivision = true;
      this._rateDivision = value;
    }
  }

  public string RateName
  {
    get
    {
      return _rateName;
    }
    set
    {
      __isset.rateName = true;
      this._rateName = value;
    }
  }


  public Isset __isset;
  public struct Isset
  {
    public bool countryCode;
    public bool rate;
    public bool rateDivision;
    public bool rateName;
  }

  public PaidCallUserRate()
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
            if (field.Type == TType.String)
            {
              CountryCode = await iprot.ReadStringAsync(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 2:
            if (field.Type == TType.I32)
            {
              Rate = await iprot.ReadI32Async(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 3:
            if (field.Type == TType.String)
            {
              RateDivision = await iprot.ReadStringAsync(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 4:
            if (field.Type == TType.String)
            {
              RateName = await iprot.ReadStringAsync(cancellationToken);
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
      var struc = new TStruct("PaidCallUserRate");
      await oprot.WriteStructBeginAsync(struc, cancellationToken);
      var field = new TField();
      if (CountryCode != null && __isset.countryCode)
      {
        field.Name = "countryCode";
        field.Type = TType.String;
        field.ID = 1;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(CountryCode, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (__isset.rate)
      {
        field.Name = "rate";
        field.Type = TType.I32;
        field.ID = 2;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteI32Async(Rate, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (RateDivision != null && __isset.rateDivision)
      {
        field.Name = "rateDivision";
        field.Type = TType.String;
        field.ID = 3;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(RateDivision, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (RateName != null && __isset.rateName)
      {
        field.Name = "rateName";
        field.Type = TType.String;
        field.ID = 4;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(RateName, cancellationToken);
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
    var other = that as PaidCallUserRate;
    if (other == null) return false;
    if (ReferenceEquals(this, other)) return true;
    return ((__isset.countryCode == other.__isset.countryCode) && ((!__isset.countryCode) || (System.Object.Equals(CountryCode, other.CountryCode))))
      && ((__isset.rate == other.__isset.rate) && ((!__isset.rate) || (System.Object.Equals(Rate, other.Rate))))
      && ((__isset.rateDivision == other.__isset.rateDivision) && ((!__isset.rateDivision) || (System.Object.Equals(RateDivision, other.RateDivision))))
      && ((__isset.rateName == other.__isset.rateName) && ((!__isset.rateName) || (System.Object.Equals(RateName, other.RateName))));
  }

  public override int GetHashCode() {
    int hashcode = 157;
    unchecked {
      if(__isset.countryCode)
        hashcode = (hashcode * 397) + CountryCode.GetHashCode();
      if(__isset.rate)
        hashcode = (hashcode * 397) + Rate.GetHashCode();
      if(__isset.rateDivision)
        hashcode = (hashcode * 397) + RateDivision.GetHashCode();
      if(__isset.rateName)
        hashcode = (hashcode * 397) + RateName.GetHashCode();
    }
    return hashcode;
  }

  public override string ToString()
  {
    var sb = new StringBuilder("PaidCallUserRate(");
    bool __first = true;
    if (CountryCode != null && __isset.countryCode)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("CountryCode: ");
      sb.Append(CountryCode);
    }
    if (__isset.rate)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("Rate: ");
      sb.Append(Rate);
    }
    if (RateDivision != null && __isset.rateDivision)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("RateDivision: ");
      sb.Append(RateDivision);
    }
    if (RateName != null && __isset.rateName)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("RateName: ");
      sb.Append(RateName);
    }
    sb.Append(")");
    return sb.ToString();
  }
}

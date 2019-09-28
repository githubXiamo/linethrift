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



public partial class GetSquareCategoriesResponse : TBase
{
  private List<Category> _categoryList;

  public List<Category> CategoryList
  {
    get
    {
      return _categoryList;
    }
    set
    {
      __isset.categoryList = true;
      this._categoryList = value;
    }
  }


  public Isset __isset;
  public struct Isset
  {
    public bool categoryList;
  }

  public GetSquareCategoriesResponse()
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
                TList _list378 = await iprot.ReadListBeginAsync(cancellationToken);
                CategoryList = new List<Category>(_list378.Count);
                for(int _i379 = 0; _i379 < _list378.Count; ++_i379)
                {
                  Category _elem380;
                  _elem380 = new Category();
                  await _elem380.ReadAsync(iprot, cancellationToken);
                  CategoryList.Add(_elem380);
                }
                await iprot.ReadListEndAsync(cancellationToken);
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
      var struc = new TStruct("GetSquareCategoriesResponse");
      await oprot.WriteStructBeginAsync(struc, cancellationToken);
      var field = new TField();
      if (CategoryList != null && __isset.categoryList)
      {
        field.Name = "categoryList";
        field.Type = TType.List;
        field.ID = 1;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        {
          await oprot.WriteListBeginAsync(new TList(TType.Struct, CategoryList.Count), cancellationToken);
          foreach (Category _iter381 in CategoryList)
          {
            await _iter381.WriteAsync(oprot, cancellationToken);
          }
          await oprot.WriteListEndAsync(cancellationToken);
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
    var other = that as GetSquareCategoriesResponse;
    if (other == null) return false;
    if (ReferenceEquals(this, other)) return true;
    return ((__isset.categoryList == other.__isset.categoryList) && ((!__isset.categoryList) || (TCollections.Equals(CategoryList, other.CategoryList))));
  }

  public override int GetHashCode() {
    int hashcode = 157;
    unchecked {
      if(__isset.categoryList)
        hashcode = (hashcode * 397) + TCollections.GetHashCode(CategoryList);
    }
    return hashcode;
  }

  public override string ToString()
  {
    var sb = new StringBuilder("GetSquareCategoriesResponse(");
    bool __first = true;
    if (CategoryList != null && __isset.categoryList)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("CategoryList: ");
      sb.Append(CategoryList);
    }
    sb.Append(")");
    return sb.ToString();
  }
}

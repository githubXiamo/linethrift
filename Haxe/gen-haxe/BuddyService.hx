/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
package;

import org.apache.thrift.helper.*;
import haxe.io.Bytes;
import haxe.ds.IntMap;
import haxe.ds.StringMap;
import haxe.ds.ObjectMap;

#if flash
import flash.errors.ArgumentError;
#end

import org.apache.thrift.*;
import org.apache.thrift.meta_data.*;
import org.apache.thrift.protocol.*;


interface BuddyService {

  function findBuddyContactsByQuery(language : String, country : String, query : String, fromIndex : haxe.Int32, count : haxe.Int32, requestSource : Int) : List< BuddySearchResult>;

  function getBuddyContacts(language : String, country : String, classification : String, fromIndex : haxe.Int32, count : haxe.Int32) : List< Contact>;

  function getBuddyDetail(buddyMid : String) : BuddyDetail;

  function getBuddyOnAir(buddyMid : String) : BuddyOnAir;

  function getCountriesHavingBuddy() : List< String>;

  function getNewlyReleasedBuddyIds(country : String) : StringMap< haxe.Int64>;

  function getPopularBuddyBanner(language : String, country : String, applicationType : Int, resourceSpecification : String) : BuddyBanner;

  function getPopularBuddyLists(language : String, country : String) : List< BuddyList>;

  function getPromotedBuddyContacts(language : String, country : String) : List< Contact>;

}

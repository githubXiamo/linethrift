/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
package;

import org.apache.thrift.helper.*;

class SyncCategory {
  public static inline var PROFILE : Int = 0;
  public static inline var SETTINGS : Int = 1;
  public static inline var OPS : Int = 2;
  public static inline var CONTACT : Int = 3;
  public static inline var RECOMMEND : Int = 4;
  public static inline var BLOCK : Int = 5;
  public static inline var GROUP : Int = 6;
  public static inline var ROOM : Int = 7;
  public static inline var NOTIFICATION : Int = 8;
  public static inline var ADDRESS_BOOK : Int = 9;

  public static var VALID_VALUES = { new IntSet( [PROFILE, SETTINGS, OPS, CONTACT, RECOMMEND, BLOCK, GROUP, ROOM, NOTIFICATION, ADDRESS_BOOK]); };
  public static var VALUES_TO_NAMES = { [
    PROFILE => "PROFILE",
    SETTINGS => "SETTINGS",
    OPS => "OPS",
    CONTACT => "CONTACT",
    RECOMMEND => "RECOMMEND",
    BLOCK => "BLOCK",
    GROUP => "GROUP",
    ROOM => "ROOM",
    NOTIFICATION => "NOTIFICATION",
    ADDRESS_BOOK => "ADDRESS_BOOK"
  ]; };
}

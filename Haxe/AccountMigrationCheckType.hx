/**
 * Autogenerated by Thrift Compiler (0.11.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
package;

import org.apache.thrift.helper.*;

class AccountMigrationCheckType {
  public static inline var SKIP : Int = 0;
  public static inline var PINCODE : Int = 1;
  public static inline var SECURITY_CENTER : Int = 2;

  public static var VALID_VALUES = { new IntSet( [SKIP, PINCODE, SECURITY_CENTER]); };
  public static var VALUES_TO_NAMES = { [
    SKIP => "SKIP",
    PINCODE => "PINCODE",
    SECURITY_CENTER => "SECURITY_CENTER"
  ]; };
}
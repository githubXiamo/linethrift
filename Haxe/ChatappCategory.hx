/**
 * Autogenerated by Thrift Compiler (0.11.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
package;

import org.apache.thrift.helper.*;

class ChatappCategory {
  public static inline var PRIORITY : Int = 2;
  public static inline var REGULAR : Int = 1;
  public static inline var MORE : Int = 3;

  public static var VALID_VALUES = { new IntSet( [PRIORITY, REGULAR, MORE]); };
  public static var VALUES_TO_NAMES = { [
    PRIORITY => "PRIORITY",
    REGULAR => "REGULAR",
    MORE => "MORE"
  ]; };
}
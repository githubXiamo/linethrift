/**
 * Autogenerated by Thrift Compiler (0.11.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
package;

import org.apache.thrift.helper.*;

class SquareChatMembershipState {
  public static inline var JOINED : Int = 1;
  public static inline var LEFT : Int = 2;

  public static var VALID_VALUES = { new IntSet( [JOINED, LEFT]); };
  public static var VALUES_TO_NAMES = { [
    JOINED => "JOINED",
    LEFT => "LEFT"
  ]; };
}
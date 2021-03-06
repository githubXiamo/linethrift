/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
public class MIDType implements org.apache.thrift.TEnum {

  public static final MIDType USER = new MIDType(0);
  public static final MIDType ROOM = new MIDType(1);
  public static final MIDType GROUP = new MIDType(2);
  public static final MIDType SQUARE = new MIDType(3);
  public static final MIDType SQUARE_CHAT = new MIDType(4);
  public static final MIDType SQUARE_MEMBER = new MIDType(5);
  public static final MIDType BOT = new MIDType(6);

  private final int value;

  private MIDType(int value) {
    this.value = value;
  }

  /**
   * Get the integer value of this enum value, as defined in the Thrift IDL.
   */
  public int getValue() {
    return value;
  }

  /**
   * Find a the enum type by its integer value, as defined in the Thrift IDL.
   * @return null if the value is not found.
   */
  public static MIDType findByValue(int value) { 
    switch (value) {
      case 0:
        return USER;
      case 1:
        return ROOM;
      case 2:
        return GROUP;
      case 3:
        return SQUARE;
      case 4:
        return SQUARE_CHAT;
      case 5:
        return SQUARE_MEMBER;
      case 6:
        return BOT;
      default:
        return null;
    }
  }
}

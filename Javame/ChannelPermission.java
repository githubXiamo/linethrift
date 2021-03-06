/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
public class ChannelPermission implements org.apache.thrift.TEnum {

  public static final ChannelPermission PROFILE = new ChannelPermission(0);
  public static final ChannelPermission FRIENDS = new ChannelPermission(1);
  public static final ChannelPermission GROUP = new ChannelPermission(2);

  private final int value;

  private ChannelPermission(int value) {
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
  public static ChannelPermission findByValue(int value) { 
    switch (value) {
      case 0:
        return PROFILE;
      case 1:
        return FRIENDS;
      case 2:
        return GROUP;
      default:
        return null;
    }
  }
}

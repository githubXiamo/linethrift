/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library line.src.channel_permission;

class ChannelPermission {
  static const int PROFILE = 0;
  static const int FRIENDS = 1;
  static const int GROUP = 2;

  static final Set<int> VALID_VALUES = new Set.from([
    PROFILE
    , FRIENDS
    , GROUP
  ]);
  static final Map<int, String> VALUES_TO_NAMES = {
    PROFILE: 'PROFILE'
    , FRIENDS: 'FRIENDS'
    , GROUP: 'GROUP'
  };
}
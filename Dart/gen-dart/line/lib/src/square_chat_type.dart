/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library line.src.square_chat_type;

class SquareChatType {
  static const int OPEN = 1;
  static const int SECRET = 2;
  static const int ONE_ON_ONE = 3;
  static const int SQUARE_DEFAULT = 4;

  static final Set<int> VALID_VALUES = new Set.from([
    OPEN
    , SECRET
    , ONE_ON_ONE
    , SQUARE_DEFAULT
  ]);
  static final Map<int, String> VALUES_TO_NAMES = {
    OPEN: 'OPEN'
    , SECRET: 'SECRET'
    , ONE_ON_ONE: 'ONE_ON_ONE'
    , SQUARE_DEFAULT: 'SQUARE_DEFAULT'
  };
}
/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library line.src.notification_item_fetch_mode;

class NotificationItemFetchMode {
  static const int ALL = 0;
  static const int APPEND = 1;

  static final Set<int> VALID_VALUES = new Set.from([
    ALL
    , APPEND
  ]);
  static final Map<int, String> VALUES_TO_NAMES = {
    ALL: 'ALL'
    , APPEND: 'APPEND'
  };
}

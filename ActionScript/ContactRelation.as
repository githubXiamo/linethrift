/**
 * Autogenerated by Thrift Compiler (0.13.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
package 
{
import org.apache.thrift.Set;
import flash.utils.Dictionary;
  public class ContactRelation   {
    public static const ONEWAY:int = 0;
    public static const BOTH:int = 1;
    public static const NOT_REGISTERED:int = 2;

    public static const VALID_VALUES:Set = new Set(ONEWAY, BOTH, NOT_REGISTERED);
    public static const VALUES_TO_NAMES:Dictionary = new Dictionary();
    {
      VALUES_TO_NAMES[ONEWAY] = "ONEWAY";
      VALUES_TO_NAMES[BOTH] = "BOTH";
      VALUES_TO_NAMES[NOT_REGISTERED] = "NOT_REGISTERED";

    }
  }
}
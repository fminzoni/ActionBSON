package org.serialization.bson
{
	import flash.utils.ByteArray;

	public class Utils
	{
		
		/**
		 * @brief Represents the bytes in a ByteArray as hexadecimal values for printing
		 * @param bytearray The ByteArray to be translated into hexadecimal (bytearray.position is left unchanged)
		 * @return A String containing the hexadecimal representation of the parameter 
		 */
		public static function byteArrayToHex( bytearray : ByteArray ) : String {
			var str : String = new String;
			for( var i : int = 0; i < bytearray.length; ++i ) {
				var tmp : String = bytearray[i].toString(16);
				if ( tmp.length < 2 ) {
					tmp = "0" + tmp;
				}
				str += "\\x" + tmp;
			}
			return str;
		}
		
		/**
		 * @brief Produce a string representation for an object
		 * @param object The object to be represented in the string
		 * @return A string showing key-values pairs
		 */
		public static function objectToString( object : Object ) : String {
			var str : String = "";
			for( var key : String in object) {
				if( key is ObjectID ) {
					str += key + ": " + ( object[key] as ObjectID ).toString() + "\n";
				} else if( key is Int64 ) {
					str += key + ": " + ( object[key] as Int64 ).toString() + "\n";
				} else {
					str += key + ": " + object[key] + "\n";
				}
			}
			return str;
		}
		
	}
}
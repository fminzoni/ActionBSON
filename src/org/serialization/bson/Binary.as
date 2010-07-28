package org.serialization.bson
{
	import flash.utils.ByteArray;

	public class Binary
	{
		
		public static var BINARY_GENERIC : int = 0x00;
		public static var FUNCTION : int = 0x01;
		public static var BINARY_OLD : int = 0x02;
		public static var UUID : int = 0x03;
		public static var MD5 : int = 0x05;
		public static var USER_DEFINED : int = 0x80;
		
		internal var subtype : int;
		internal var data : ByteArray;
		
		public function Binary( subtype : int, data : ByteArray ) {
			this.subtype = subtype;
			this.data = data;
		}
	}
}
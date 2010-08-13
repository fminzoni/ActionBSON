package org.serialization.bson
{
	import flash.utils.ByteArray;
	import flash.utils.Endian;

	public class ObjectID {
		
		// BSON is little-endian
		private var rep : ByteArray;
		
		/**
		 * @brief Create a new ObjectID
		 * @param bytearray A little-endian, 12-byte ByteArray containing the ID
		 */
		public function ObjectID ( bytearray : ByteArray ) : void {
			setFromBytes( bytearray );
		}
		
		
		
		/**
		 * @brief Set the value of this ObjectID
		 * @param bytearray A little-endian, 12-byte ByteArray containing the ID
		 */
		public function setFromBytes( bytearray : ByteArray ) : void {
			rep = new ByteArray();
			for ( var i : int = 0; i < 12; ++i ) {
				rep[i] = bytearray.readByte();
			}
		}

		
		
		/**
		 * @brief Get the value of this ObjectID
		 * @return A little-endian, 12-byte ByteArray containing the ID
		 */
		public function getAsBytes() : ByteArray {
			return rep;
		}
		
		public function toString() : String {
			var str : String = "";
			for ( var i : int = 0; i < 12; ++i ) {
				str += rep[i].toString( 16 );
			}
			return str;
		}
	}
}
package org.db.mongo
{
	public class Document
	{		
		private var keys:Array = [];
		private var values:Array = [];
		
		public function put(key:String, value:*):void
		{
			const nextIndex:Number = keys.length;
			keys[nextIndex] = key;
			values[nextIndex] = value;
		}
		
		public function get FieldsCount():uint
		{
			return keys.length;
		}
		
		public function getKeyAt(index:uint):*
		{
			return keys[index];
		}
		
		public function getValueAt(index:uint):*
		{
			return values[index];
		}
	}
}

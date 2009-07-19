package com.sharpplus.utils
{
import flash.display.BitmapData;
import flash.display.DisplayObject;
import flash.utils.ByteArray;

	public class ViewUtils extends Object
	{
		public function ViewUtils()
		{
			super();
		}
		
		public static function saveControlImage(control:DisplayObject):ByteArray{
		    var bd:BitmapData = new BitmapData(control.width,control.height);
		    bd.draw(control);
		    
		    var ba:ByteArray = PNGEnc.encode(bd);
		    return ba;
		}		
		
	}
}
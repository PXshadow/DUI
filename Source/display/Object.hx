package display;

import openfl.geom.Matrix;
import openfl.display.BitmapData;
import openfl.display.Bitmap;
import openfl.display.Sprite;
import openfl.display.Shape;
import openfl.Assets;
import openfl.display.Graphics;
import openfl.display.DisplayObjectContainer;
class Object extends Sprite
{
    public var bitmapMatrix:Matrix;
    @:isVar public var bitmapData(get,set):BitmapData;
    function set_bitmapData(value:BitmapData):BitmapData
    {
        return bitmapData = value;
    }
    function get_bitmapData():BitmapData
    {
        return bitmapData;
    }
    public function new()
    {
        super();
        bitmapMatrix = new Matrix();
    }
    public function setBitmapData(bitmap:BitmapData)
    {

    }
    public function setSVG(data:String)
    {

    }
}
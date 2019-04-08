package dui.display;

import lime.app.Future;
import openfl.geom.Rectangle;
import format.SVG;
import openfl.geom.Matrix;
import openfl.display.BitmapData;
import openfl.display.Bitmap;
import openfl.display.Sprite;
import openfl.display.Shape;
import openfl.Assets;
import openfl.display.Graphics;
import openfl.display.DisplayObjectContainer;
import UInt;
class Object extends Sprite
{
    public var bitmapRect:Rectangle;
    public var graphicRect:Rectangle;
    public var bool:Bool = false;
    @:isVar public var bitmapData(get,set):BitmapData;
    function set_bitmapData(value:BitmapData):BitmapData
    {
        if(value == null) return null;
        bitmapData = value;
        cacheAsBitmap = true;
        var mat = new Matrix();
        var sx:Float = 1;
	    var sy:Float = 1;
	    if(bitmapRect.width > 0) sx = 1 / bitmapData.width * bitmapRect.width;
	    if(bitmapRect.height > 0) sy = 1 / bitmapData.height * bitmapRect.height;
        mat.scale(sx,sy);
        mat.translate(bitmapRect.x,bitmapRect.y);
        graphics.beginBitmapFill(bitmapData,mat,true,true);
        graphics.drawRect(bitmapRect.x,bitmapRect.y,sx * bitmapData.width,sy * bitmapData.height);
        return bitmapData;
    }
    function get_bitmapData():BitmapData
    {
        return bitmapData;
    }
    public function new()
    {
        super();
        mouseEnabled = false;
        clear();
    }
    public function fill(color:UInt=0xFFFFFF,alpha:Float=1)
    {
        graphics.beginFill(color,alpha);
        graphics.drawRect(0,0,width,height);
    }
    public function clear()
    {
        graphics.clear();
        bitmapData = null;
        graphicRect = new Rectangle();
        bitmapRect = new Rectangle();
    }
    public function setSvg(data:String)
    {
        graphics.endFill();
         new SVG(data).render(graphics,graphicRect.x,graphicRect.y,graphicRect.width > 0 ? Std.int(graphicRect.width) : -1,graphicRect.height > 0 ? Std.int(graphicRect.height) : -1);
    }
}
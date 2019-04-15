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
    public var graphicRect:Rectangle;
    public var bool:Bool = false;
    public var shape:Shape;
    public var bitmap:Bitmap;
    public function new()
    {
        super();
        mouseEnabled = false;
        bitmap = new Bitmap();
        addChild(bitmap);
        shape = new Shape();
        shape.cacheAsBitmap = true;
        addChild(shape);
        clear();
    }
    public function fill(color:UInt=0xFFFFFF,alpha:Float=1)
    {
        graphics.beginFill(color,alpha);
        graphics.drawRect(0,0,width,height);
    }
    public function clear()
    {
        shape.graphics.clear();
        bitmap.bitmapData = null;
        graphicRect = new Rectangle();
    }
    public function setSvg(data:String)
    {
        shape.graphics.endFill();
        new SVG(data).render(shape.graphics,graphicRect.x,graphicRect.y,graphicRect.width > 0 ? Std.int(graphicRect.width) : -1,graphicRect.height > 0 ? Std.int(graphicRect.height) : -1);
    }
}
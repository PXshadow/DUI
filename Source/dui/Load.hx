package dui;
import openfl.display.BitmapData;
import dui.display.Object;
import openfl.utils.Assets;
import dui.text.Text;
class Load
{
    public static function loadBitmapData(id:String,object:Object)
    {
        Assets.loadBitmapData(id,true).onComplete(function(data:BitmapData)
        {
            object.bitmapData = data;
        });
    }
    public static function loadSvg(id:String,object:Object)
    {
        Assets.loadText(id).onComplete(function(text:String)
        {
            object.setSvg(text);
        });
    }
    public static function loadFont(id:String,text:Text)
    {

    }
}
import openfl.display.BitmapData;
import display.Object;
import openfl.utils.Assets
import text.Text;
class Load
{
    public static function loadBitmapData(id:String,object:Object)
    {
        Assets.loadBitmapData(id,true).onComplete(function(data:BitmapData))
        {
            
        }
    }
    public static function loadFont(id:String,text:Text)
    {

    }
}
package dui.text;

import openfl.text.TextFormatAlign;
import openfl.text.TextFormat;
import openfl.text.TextField;

class Text extends TextField
{
    public function new(string:String,size:Int = 24,color:UInt=0xFFFFFF,fieldWidth:Int=0,align:TextFormatAlign=LEFT,verticalSpacing:Null<Int>=null)
    {
        super();
        text = string;
        defaultTextFormat = new TextFormat("_sans",size,color,null,null,null,null,null,align,null,null,null,verticalSpacing);
        if(fieldWidth > 0) width = fieldWidth;
        //default set
        mouseEnabled = false;
        selectable = false;
        mouseWheelEnabled = false;
        embedFonts = true;
        cacheAsBitmap = true;
        @:privateAccess __removeAllListeners();
    }
}
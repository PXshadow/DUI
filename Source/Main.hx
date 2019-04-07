package;

import haxe.Timer;
import openfl.display.Sprite;

class Main extends Sprite
{
	public function new()
	{
		super();
		//testing
		var obj = new display.Object();
		var tim = new Timer(1000);
		tim.run = function()
		{
			obj.scaleX += 0.1;
			obj.scaleY += 0.1;
		}
		Load.loadBitmapData("assets/openfl.png",obj);
		Load.loadSvg("assets/alpha.svg",obj);
		addChild(obj);

		var button = new display.Button();
		button.y = 300;
		button.Click = function(_)
		{
			trace("click");
		}
		button.graphics.beginFill();
		button.graphics.drawRect(0,0,100,100);
		addChild(button);
	}
}

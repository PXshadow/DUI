package;

import openfl.display.Sprite;

class Main extends Sprite
{
	public function new()
	{
		super();
		//testing
		var obj = new display.Object();
		Load.loadBitmapData("assets/openfl.png",obj);
		Load.loadSvg("assets/alpha.svg",obj);
		addChild(obj);
	}
}

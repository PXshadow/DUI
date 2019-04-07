package display;

import openfl.events.MouseEvent;
import openfl.display.InteractiveObject;
import openfl.display.Graphics;
import openfl.events.Event;

class Button extends Object
{
    public var Click:MouseEvent->Void;
    public var Down:MouseEvent->Void;
    public var Up:MouseEvent->Void;
    public var Over:MouseEvent->Void;
    public var Out:MouseEvent->Void;
    public var Move:MouseEvent->Void;
    public function new()
    {
        super();
        mouseEnabled = true;
        buttonMode = true;
        //events
        addEventListener(Event.REMOVED_FROM_STAGE, removeFromStage);
	    addEventListener(Event.ADDED_TO_STAGE, addToStage);
    }
    private function addToStage(_)
    {
        removeEventListener(Event.ADDED, addToStage);

        if(Down != null)addEventListener(MouseEvent.MOUSE_DOWN,Down);
		if(Up != null)addEventListener(MouseEvent.MOUSE_UP, Up);
		if(Click != null)addEventListener(MouseEvent.CLICK, Click);
		if(Over != null)addEventListener(MouseEvent.MOUSE_OVER, Over);
        if (Move != null)addEventListener(MouseEvent.MOUSE_MOVE,Move);
    }
    private function removeFromStage(_)
    {
        removeEventListener(Event.REMOVED_FROM_STAGE, removeFromStage);

        if(Down != null)removeEventListener(MouseEvent.MOUSE_DOWN,Down);
		if(Up != null)removeEventListener(MouseEvent.MOUSE_UP, Up);
		if(Click != null)removeEventListener(MouseEvent.CLICK, Click);
		if(Over != null)removeEventListener(MouseEvent.MOUSE_OVER, Over);
        if (Move != null)removeEventListener(MouseEvent.MOUSE_MOVE,Move);
    }
}
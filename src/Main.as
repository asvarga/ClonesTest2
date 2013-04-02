package 
{
	import flare.basic.Scene3D;
	import flare.basic.Viewer3D;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.geom.Rectangle;
	
	/**
	 * ...
	 * @author avarga
	 */
	public class Main extends Sprite 
	{
		
		private var sceneA:Viewer3D;
		private var sceneB:Viewer3D;
		
		public function Main():void 
		{
			sceneA = new Viewer3D(this);
			sceneA.clearColor.setTo(0.3, 0.5, 0.3);
			sceneA.setViewport(0, 0, 400, 600);
			sceneA.camera.setPosition(0, 0, 5);
			sceneA.camera.lookAt(0, 0, 0);
			sceneA.addChild(new LilyPad());
			
			sceneB = new Viewer3D(this);
			sceneB.clearColor.setTo(0.5, 0.3, 0.3);
			sceneB.setViewport(400, 0, 400, 600);
			sceneB.camera.setPosition(0, 0, 5);
			sceneB.camera.lookAt(0, 0, 0);
			
			// uncomment the following to see the problem:
			//sceneB.addChild(new LilyPad());
			
			addEventListener(Event.ENTER_FRAME, enterFrame);
		}
		
		public function enterFrame(e:Event):void {
			sceneA.render();
			sceneB.render();
		}
		
	}
	
}
package 
{
	import net.flashpunk.Engine;
	import net.flashpunk.FP;
	
	/**
	$(CBI)* ...
	$(CBI)* @author ozan
	$(CBI)*/
	public class Main extends Engine
	{		
		public function Main():void 
		{
			super(800, 600, 60, false);
			
			FP.world = new MyWorld;
		}
		
		override public function init():void { 
			trace("FlashPunk has started successfully!"); 
		}
	}	
}
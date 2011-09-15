package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	/**
	$(CBI)* ...
	$(CBI)* @author ozan
	$(CBI)*/
	public class Bullet extends Entity
	{
		
		public function Bullet() 
		{
			setHitbox(10, 10);
			type = "bullet";
		}
		
		public function destroy():void
		{
			FP.world.remove(this);
		}
		
	}

}
package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Spritemap;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	/**
	$(CBI)* ...
	$(CBI)* @author ozan
	$(CBI)*/
	public class Player extends Entity
	{
		[Embed(source = '../assets/swordguy.png')]
		private const SWORDGUY:Class;
		
		public var sprSwordguy:Spritemap = new Spritemap(SWORDGUY, 48, 32);
		
		public function Player() 
		{
			setHitbox(50, 50);
			
			sprSwordguy.add("stand", [0, 1, 2, 3, 4, 5], 20, true);
			sprSwordguy.add("run", [6, 7, 8, 9, 10, 11], 20, true);
			graphic = sprSwordguy;
			
			sprSwordguy.play("run");
		}
	
		override public function update():void
		{
			if (Input.check(Key.LEFT)) { x -= 5; }
			if (Input.check(Key.RIGHT)) { x += 5; }
			if (Input.check(Key.UP)) { y -= 5; }
			if (Input.check(Key.DOWN)) { y += 5; }
			
			var b:Bullet = collide("bullet", x, y) as Bullet;
			if (b)
				b.destroy();
		}
		
	}

}
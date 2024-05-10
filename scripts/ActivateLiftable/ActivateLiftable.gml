function ActivateLiftable(id){
	///@arg id
	
	if (global.iLifted == noone){
		
		PlayerActOutAnimation(sPlayerLift);
		global.iLifted = id;
		
		with (global.iLifted){
			lifted = true;
			persistent = true;
			entityCollision = false;
		}
	}
}
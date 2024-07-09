function PlayerStateAct(){
	
	//Mise à jour du Sprite
	PlayerAnimateSprite();
	
	if (animationEnd){
		
		state = PlayerStateFree;
		animationEnd = false;
		if (animationEndScript != -1){
			script_execute(animationEndScript);
			animationEndScript = -1;
		}
	}
	
}
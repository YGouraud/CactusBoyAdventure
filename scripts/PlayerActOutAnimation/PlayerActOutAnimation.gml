function PlayerActOutAnimation(sprite, endScript = -1){
	/// @desc PlayerActOutAnimation(Sprite, EndScript)
	/// @arg Sprite
	/// @arg EndScript
	
	// Lance une animation et possiblement un script à la fin de l'animation
	
	state = PlayerStateAct;
	sprite_index = sprite;
	animationEndScript = endScript;
	localFrame = 0;
	image_index = 0;
	PlayerAnimateSprite();
}
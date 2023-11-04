/// @description Réalise une transition de salle

if (instance_exists(oPlayer) && position_meeting(oPlayer.x,oPlayer.y,id)){
	
	if (!instance_exists(oTransition)) {
		
		global.targetRoom = targetRoom;
		global.targetX = targetX;
		global.targetY = targetY;
		global.targetDirection = oPlayer.direction;
		
		with (oPlayer) state = PlayerStateTransition;
		RoomTransition(transitionType, targetRoom);
	
		instance_destroy();
	
	}
	
}
/// @description Avance la transition

if (type != TRANS_TYPE.NONE) {
	with (oPlayer) state = PlayerStateTransition;

	if (leading == OUT){
	
		percent = min(1, percent + TRANSITION_SPEED);
	
		if (percent >= 1){
			//Si l'écran est entièrement obscurcie
			room_goto(targetRoom);
			leading = IN;
		}
	
	} else { //leading == IN
		percent = max(0, percent - TRANSITION_SPEED);
		if (percent <= 0) {
			//Si l'écran est entièrement découvert
			with (oPlayer) state = PlayerStateFree;
			instance_destroy();
		}
	}
} else {
	
	room_goto(targetRoom);
	with (oPlayer) state = PlayerStateFree;
	instance_destroy();
}
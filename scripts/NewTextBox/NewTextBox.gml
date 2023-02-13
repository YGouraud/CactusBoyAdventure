function NewTextBox(){
	var _obj;
	if (instance_exists(oText)) _obj = oTextQueue; else _obj = oText;
	with (instance_create_layer(0,0,"Instances", _obj)){
		message = argument[0];
		//if it's called by a specific object, we get its ID
		if (instance_exists(other)) originInstance = other.id; else originInstance = noone;
		if (argument_count > 1) background = argument[1];  else background = 1;
	}
	
	with (oPlayer){
		//lock the player in place when text appear
		if (state != PlayerStateLocked){
			lastState = state;
			state = PlayerStateLocked;
		}
	}
}
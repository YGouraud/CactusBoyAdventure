function NewTextBox(_message, _background, _responses){
///@arg Message
///@arg Background
///@arg [Responses]


	var _obj;
	if (instance_exists(oText)) _obj = oTextQueue; else _obj = oText;
	with (instance_create_layer(0,0,"Instances", _obj)){
		message = _message;
		//if it's called by a specific object, we get its ID
		if (instance_exists(other)) originInstance = other.id; else originInstance = noone;
		if (!is_undefined(_background)) background = _background;  else background = 1;
		if (!is_undefined(_responses)){
			//trim markers from responses
			var _array = _responses;
			for (var i = 0; i < array_length(_array); i++){
				responses[i] = _array[i];
				var _markerPosition = string_pos(">", responses[i]);
				responseScript[i] = string_copy(responses[i],1,_markerPosition-1);
				responseScript[i] = real(responseScript[i]);
				responses[i] = string_delete(responses[i],1,_markerPosition);
				breakpoint = 10;
			}
		}
		else{
			responses = [-1];
			responseScript = [-1];
		}
	}
	
	with (oPlayer){
		//lock the player in place when text appear
		if (state != PlayerStateLocked){
			lastState = state;
			state = PlayerStateLocked;
		}
	}
}
function EntityCollisionHorizontal(_entityList, _wBboxSize, _hSpeed, x, y){
	//@arg entityList
	//@arg bboxSize
	//@arg hSpeed
	//@arg x
	//@arg y
	
	
	var _range = [y, y - _wBboxSize];
	var _entityCount = 0;
	
	if (sign(_hSpeed) == 1){ //Vers la droite
		for (var i = 0; i < array_length(_range); i++) {
			_entityCount += instance_position_list(x + _hSpeed + _wBboxSize, _range[i], pEntity, _entityList, false);
			//if (ds_list_size(_entityList) != 0) show_debug_message(ds_list_size(_entityList));
		}
	}
	else if(sign(_hSpeed) == -1) { //Vers la gauche
		for (var j = 0; j < array_length(_range); j++) {
			_entityCount += instance_position_list(x + _hSpeed - _wBboxSize,  _range[j], pEntity, _entityList, false);
			//if (ds_list_size(_entityList) != 0) show_debug_message(ds_list_size(_entityList));
		}
	}
	
	return _entityCount;
}
function EntityCollisionVertical(_entityList, _wBboxSize, _vSpeed, x, y){
	//@arg entityList
	//@arg bboxSize
	//@arg vSpeed
	//@arg x
	//@arg y
	
	var _range = [x - _wBboxSize, x, x + _wBboxSize];
	var _entityCount = 0;
	
	if (sign(_vSpeed) == 1){ //Vers le bas
		for (var i = 0; i < array_length(_range); i++) {
			_entityCount += instance_position_list(_range[i], y + _vSpeed, pEntity, _entityList, false);
		}
	}
	else if(sign(_vSpeed) == -1) { //Vers le haut
		for (var j = 0; j < array_length(_range); j++) {
			_entityCount += instance_position_list(_range[j], y + _vSpeed - _wBboxSize, pEntity, _entityList, false);
		}
	}
	
	return _entityCount;
}
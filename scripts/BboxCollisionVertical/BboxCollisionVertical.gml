function BboxCollisionVertical(_collisionMap, _wBboxSize, _vSpeed, x, y){
	//@arg collisionMap
	//@arg bboxSize
	//@arg vSpeed
	//@arg x
	//@arg y
	
	
	var _range = [x - _wBboxSize, x, x + _wBboxSize];
	
	if (sign(_vSpeed) == 1){ //Vers le bas
		for (var i = 0; i < array_length(_range); i++) {
			if (tilemap_get_at_pixel(_collisionMap, _range[i], y + _vSpeed)) return 1;
		}
	}
	else if(sign(_vSpeed) == -1) { //Vers le haut
		for (var i = 0; i < array_length(_range); i++) {
			if (tilemap_get_at_pixel(_collisionMap, _range[i], y - _wBboxSize + _vSpeed)) return 1;
		}
	}
	
	return -1;
}
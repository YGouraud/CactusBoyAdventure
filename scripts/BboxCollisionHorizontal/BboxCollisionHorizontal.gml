function BboxCollisionHorizontal(_collisionMap, _wBboxSize, _hSpeed, x, y){
	//@arg collisionMap
	//@arg bboxSize
	//@arg hSpeed
	//@arg x
	//@arg y
	
	
	var _range = [y, y - _wBboxSize];
	
	
	if (sign(_hSpeed) == 1){ //Vers la droite
		for (var i = 0; i < array_length(_range); i++) {
			if (tilemap_get_at_pixel(_collisionMap, x + _wBboxSize + _hSpeed, _range[i])) return 1;
		}
	}
	else if(sign(_hSpeed) == -1) { //Vers la gauche
		for (var i = 0; i < array_length(_range); i++) {
		 if (tilemap_get_at_pixel(_collisionMap, x - _wBboxSize + _hSpeed,  _range[i])) return 1;
		}
	}
	
	return -1;
}
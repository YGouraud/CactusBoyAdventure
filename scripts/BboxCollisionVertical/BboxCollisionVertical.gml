// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function BboxCollisionVertical(_collisionMap, _hBboxSize, _wBboxSize, _vSpeed, x, y){
	//@arg collisionMap
	//@arg bboxSize
	
	
	var _range = [x - floor(_wBboxSize*0.5), x, x + floor(_wBboxSize*0.5)];
	
	
	if (sign(_vSpeed) == 1){ //Arrive du bas
		for (var i = 0; i < array_length(_range); i++) {
			if (tilemap_get_at_pixel(_collisionMap, _range[i], y + _vSpeed)) return 1;
		}
	}
	else if(sign(_vSpeed) == -1) { //Arrive du haut
		for (var i = 0; i < array_length(_range); i++) {
		 if (tilemap_get_at_pixel(_collisionMap, _range[i], y - _hBboxSize + _vSpeed)) return 1;
		}
	}
	
	return -1;
}
// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function BboxCollisionHorizontal(_collisionMap, _hBboxSize, _wBboxSize, _hSpeed, x, y){
	//@arg collisionMap
	//@arg bboxSize
	
	
	var _range = [y, y -  floor(_wBboxSize*0.5)];
	
	
	if (sign(_hSpeed) == 1){ //Arrive de Droite
		for (var i = 0; i < array_length(_range); i++) {
			if (tilemap_get_at_pixel(_collisionMap, x + _wBboxSize + _hSpeed, _range[i])) return 1;
		}
	}
	else if(sign(_hSpeed) != 1) { //Arrive de gauche
		for (var i = 0; i < array_length(_range); i++) {
		 if (tilemap_get_at_pixel(_collisionMap, x - _wBboxSize + _hSpeed,  _range[i])) return 1;
		}
	}
	
	return -1;
}
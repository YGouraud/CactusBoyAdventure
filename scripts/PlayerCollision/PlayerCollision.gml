function PlayerCollision(){
	var _collision = false;
	var _entityList = ds_list_create();
	
	var _wPlayerBbox = floor((sprite_get_bbox_right(sprite_index) - sprite_get_bbox_left(sprite_index) + 1) * 0.5); //centré
	
	//Horizontal Tiles
	//Vers la droite
	if (sign(hSpeed) == 1 && BboxCollisionHorizontal(collisionMap, _wPlayerBbox, hSpeed, x, y))
	{
		x -= x mod TILE_SIZE;
		x += TILE_SIZE - 1 - _wPlayerBbox;
		hSpeed = 0;
		_collision = true;
	}
	//Vers la gauche
	if (sign(hSpeed) == -1 && BboxCollisionHorizontal(collisionMap, _wPlayerBbox, hSpeed, x, y))
	{
		x -= x mod TILE_SIZE;
		x += _wPlayerBbox;
		hSpeed = 0;
		_collision = true;
	}
	
	//Horizontal Entities
	
	var _entityCount = EntityCollisionHorizontal(_entityList, _wPlayerBbox, hSpeed, x, y);
	var _snapX;
	
	while(_entityCount > 0) {
		var _entityCheck = _entityList[| 0];
		if (_entityCheck.entityCollision == true) {
			
			//Move as close as we can
			if(sign(hSpeed) == -1) _snapX = _entityCheck.bbox_right + 1 + _wPlayerBbox;
			else _snapX = _entityCheck.bbox_left - 1 - _wPlayerBbox;
			x = _snapX;
			hSpeed = 0;
			_collision = true;
			_entityCount = 0;
		}
		ds_list_delete(_entityList,0);
		_entityCount--;
	}
	
	//Horizontal Move Commit
	x += hSpeed;
	
	//Clear list between axis
	ds_list_clear(_entityList);
	
	//Vertical Tiles
	//Vers le bas
	if (sign(vSpeed) == 1 && BboxCollisionVertical(collisionMap, _wPlayerBbox, vSpeed, x, y))
	{
		y -= y mod TILE_SIZE;
		y += TILE_SIZE - 1;
		vSpeed = 0;
		_collision = true;
	}
	
	
	//Vers le haut
	if (sign(vSpeed) == -1 &&  BboxCollisionVertical(collisionMap, _wPlayerBbox, vSpeed, x, y))
	{
		y -= y mod TILE_SIZE;
		y +=_wPlayerBbox;
		vSpeed = 0;
		_collision = true;
	}
	
	//Vertical Entities
	
	_entityCount = EntityCollisionVertical(_entityList, _wPlayerBbox, vSpeed, x, y);
	var _snapY;
	
	while(_entityCount > 0) {
		var _entityCheck = _entityList[| 0];
		if (_entityCheck.entityCollision == true) {
			//Move as close as we can, taking into account the collisionBox of the player
			if(sign(vSpeed) == -1) _snapY = _entityCheck.bbox_bottom +_wPlayerBbox + 1;
			else _snapY = _entityCheck.bbox_top-1;
			y = _snapY;
			vSpeed = 0;
			_collision = true;
			_entityCount = 0;
		}
		ds_list_delete(_entityList,0);
		_entityCount--;
	}
	
	//Vertical Move Commit
	y += vSpeed;
	
	
	ds_list_destroy(_entityList);
	
	return _collision;
}
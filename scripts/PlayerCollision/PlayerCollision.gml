
function PlayerCollision(){
	var _collision = false;
	var _entityList = ds_list_create();
	var _hPlayerBbox = sprite_get_bbox_bottom(sprite_index) - sprite_get_bbox_top(sprite_index); //pas centré
	var _wPlayerBbox = floor((sprite_get_bbox_right(sprite_index) - sprite_get_bbox_left(sprite_index)) * 0.5); //centré
	
	//Horizontal Tiles
	//De droite
	if (sign(hSpeed) == 1 && BboxCollisionHorizontal(collisionMap, _hPlayerBbox, _wPlayerBbox, hSpeed, x, y))
	{
		x -= x mod TILE_SIZE;
		x += TILE_SIZE - 1 -_wPlayerBbox;
		hSpeed = 0;
		_collision = true;
	}
	//De gauche
	if (sign(hSpeed) == -1 && BboxCollisionHorizontal(collisionMap, _hPlayerBbox, _wPlayerBbox, hSpeed, x, y))
	{
		x -= x mod TILE_SIZE;
		hSpeed = 0;
		x +=_wPlayerBbox;
		_collision = true;
	}
	
	//Horizontal Entities
	var _entityCount = instance_position_list(x + hSpeed, y, pEntity, _entityList, false);
	var _snapX;
	
	while(_entityCount > 0) {
		var _entityCheck = _entityList[| 0];
		if (_entityCheck.entityCollision == true) {
			
			//Move as close as we can
			if(sign(hSpeed) == -1) _snapX = _entityCheck.bbox_right+1;
			else _snapX = _entityCheck.bbox_left-1;
			x =_snapX;
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
	//Du bas
	if (sign(vSpeed) == 1 && BboxCollisionVertical(collisionMap, _hPlayerBbox, _wPlayerBbox, vSpeed, x, y))
	{
		y -= y mod TILE_SIZE;
		y += TILE_SIZE - 1;
		vSpeed = 0;
		_collision = true;
	}
	
	
	//Du haut
	if (sign(vSpeed) == -1 &&  BboxCollisionVertical(collisionMap, _hPlayerBbox, _wPlayerBbox, vSpeed, x, y))
	{
		y -= y mod TILE_SIZE;
		y +=_hPlayerBbox;
		vSpeed = 0;
		_collision = true;
	}
	
	//Vertical Entities
	var _entityCount;
	
	if(sign(vSpeed) == -1) _entityCount = instance_position_list(x, y - _hPlayerBbox, pEntity, _entityList, false);
	else _entityCount = instance_position_list(x, y, pEntity, _entityList, false);
	var _snapY;
	
	while(_entityCount > 0) {
		var _entityCheck = _entityList[| 0];
		if (_entityCheck.entityCollision == true) {
			
			//Move as close as we can, taking into account the collisionBox of the player
			if(sign(vSpeed) == -1) _snapY = _entityCheck.bbox_bottom + sprite_get_bbox_top(sprite_index);
			else _snapY = _entityCheck.bbox_top-1;
			y =_snapY;
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
/// @description Entity Loop

if (!global.gamePaused){
	
	depth = -bbox_bottom;
	if (lifted && instance_exists(oPlayer)) {
		
		if (oPlayer.sprite_index != sPlayerLift) {
			x = oPlayer.x;
			y = oPlayer.y;
			z = CARRY_HEIGHT;
			depth = oPlayer.depth - 1;
		}
	}
	
	if(!lifted)
	{
		if(thrown)
		{	
			throwDistanceTravelled = min(throwDistanceTravelled+3,throwDistance);
			x = xstart + lengthdir_x(throwDistanceTravelled, direction);
			y = ystart + lengthdir_y(throwDistanceTravelled, direction);
			if(tilemap_get_at_pixel(collisionMap, x, y) > 0)
			{
				thrown = false;
				grav = 0.1;
				//Break on collision ???
				if (entityCollisionOriginal) resetCollision = true; //lors de l'arrêt du lancer, la collision PEUT être réactivée
			}
			
			throwPercent = throwStartPercent + lerp(0, 1 - throwStartPercent, throwDistanceTravelled / throwDistance);
			z = throwPeakHeight * sin(throwPercent * pi);
			if (throwDistance == throwDistanceTravelled)
			{
				thrown = false;
				if (entityThrowBreak) instance_destroy();
				else if (entityCollisionOriginal) resetCollision = true;
			}
		}
		else
		{
			//Fall back to ground if z > 0
			if  (z > 0)
			{
				z = max(z - grav, 0);
				grav += 0.1;
				if (z == 0) && (entityThrowBreak) instance_destroy();
			}
			else
			{
				grav = 0.1;	
			}
		}
	}
	
	//Si après le lancer, le joueur et l'objet se touche : ne pas réactiver la colission tout de suite
	if(resetCollision && !place_meeting(x,y,oPlayer))
	{
		resetCollision = false;
		entityCollision = true;
	}
}

flash = max(flash-0.04, 0);
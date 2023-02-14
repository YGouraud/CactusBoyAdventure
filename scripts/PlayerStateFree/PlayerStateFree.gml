function PlayerStateFree(){
	//Movements

	hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
	vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);

	PlayerCollision();

	//Update Sprite Index
	var _oldSprite = sprite_index;
	if (inputMagnitude != 0)
	{
		direction = inputDirection;
		sprite_index = spriteRun;
	} else sprite_index = spriteIdle;

	if (_oldSprite != sprite_index) localFrame = 0;

	//Update Sprite Index
	PlayerAnimateSprite();
	
	//Activate key logic
	if(keyActivate)
	{
		// 1. Check for an entity to activate
		// 2. If there is nothing or something with no script : Roll !
		// 3. Otherwise, activate the script
		// 4. If it's an NPC, make it face forward
		
		var _activateX = lengthdir_x(8, direction);
		var _activateY = lengthdir_y(8, direction);
		activate = instance_position(x+_activateX, y-8+_activateY, pEntity);
		
		if (activate == noone || activate.entityActivateScript == -1)
		{
			state = PlayerStateRoll;
			moveDistanceRemaining = distanceRoll;
		}
		else
		{
			//Activate the entity
			ScriptExecuteArray(activate.entityActivateScript, activate.entityActivateArgs);
			
			//Make an NPC face the player
			if (activate.entityNPC)
			{
				with (activate)
				{
					direction = point_direction(x,y,other.x,other.y);
					image_index = CARDINAL_DIR;
				}
			}
		}
	}
}
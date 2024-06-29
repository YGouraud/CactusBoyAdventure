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
	
	
	//Attack key logic
	if(keyAttack)
	{
		state = PlayerStateAttack;
		stateAttack = AttackSlash;
	}
	
	//Activate key logic
	if(keyActivate)
	{
		// 1. Check for an entity to activate
		// 2. If there is nothing or something with no script
			//2a. If you are holding something, throw it
			//2b. Otherwise, roll
		// 3. Otherwise, activate the script
		// 4. If it's an NPC, make it face forward
		
		var _activateX = x + lengthdir_x(12, direction);
		var _activateY = y + lengthdir_y(12, direction);
		var _activateSize = 4;
		var _activateList = ds_list_create();
		activate = noone;
		var _entitiesFound = collision_rectangle_list(
			_activateX - _activateSize,
			_activateY - _activateSize*2,
			_activateX + _activateSize,
			_activateY + _activateSize,
			pEntity,
			false,
			true,
			_activateList,
			true
		);
		
		//if the first instance we find is either our lifted entity or has no script : try the next one
		while (_entitiesFound > 0)
		{	
			var _check = _activateList[| --_entitiesFound];
			if (_check != global.iLifted) && (_check.entityActivateScript != -1)
			{
				activate = _check;
				break;
			}
		}
		ds_list_destroy(_activateList);
		
		if (activate == noone)
		{
			//Throw if something held, else roll
			if(global.iLifted != noone)
			{
				PlayerThrow();
			}
			else 
			{
				state = PlayerStateRoll;
				moveDistanceRemaining = distanceRoll;
			}
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
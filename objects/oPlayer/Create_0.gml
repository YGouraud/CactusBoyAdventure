state = PlayerStateFree;
stateAttack = AttackSlash; //For different types of attack
hitByAttack = -1;
lastState = state;
collisionMap = layer_tilemap_get_id(layer_get_id("Col"));

image_speed = 0;
hSpeed = 0;
vSpeed = 0;
speedWalk = 2.0;
speedRoll = 3.0;
distanceRoll = 72;
distanceBonk = 40;
distanceBonkHeight = 12;
speedBonk = 1.5;
z = 0;

animationEndScript = -1;

spriteRoll = sPlayerRoll;
spriteRun = sPlayerRun;
spriteIdle = sPlayer;
localFrame = 0;

if (global.targetX != -1) {

	x = global.targetX;
	y = global.targetY;
	direction = global.targetDirection;
}
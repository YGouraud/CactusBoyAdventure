event_inherited();

//Intrinsic variables
state = ENNEMYSTATE.IDLE;
hSpeed = 0;
vSpeed = 0;
xTo = xstart;
yTo = ystart;
dir = 0;
aggroCheck = 0;
aggroCheckDuration = 5;

timePassed = 0;
waitDuration = 60;
wait = 0;

//Enemy sprite
sprMove = sSlime;

//Enemy Scripts
enemyScript[ENNEMYSTATE.IDLE] = -1;
enemyScript[ENNEMYSTATE.ATTACK] = -1;
enemyScript[ENNEMYSTATE.CHASE] = -1;
enemyScript[ENNEMYSTATE.WANDER] = -1;
enemyScript[ENNEMYSTATE.HURT] = -1;
enemyScript[ENNEMYSTATE.DIE] = -1;
enemyScript[ENNEMYSTATE.WAIT] = -1;
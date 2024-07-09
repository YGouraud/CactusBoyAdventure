// Inherit the parent event
event_inherited();

state = ENNEMYSTATE.WANDER;

//Enemy Sprites
sprMove = sSlime;

//Enemy Scripts
enemyScript[ENNEMYSTATE.WANDER] = SlimeWander;
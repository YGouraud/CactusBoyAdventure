/// @description Préparation essentiel d'entité

z = 0 ;
flash = 0;
lifted = 0;
thrown = false;
uFlash = shader_get_uniform(shWhiteFlash, "flash");

entityCollisionOriginal = entityCollision; //Store original value of entityCollision so you know whether or not to reset it
resetCollision = false;

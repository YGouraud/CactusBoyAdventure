/// @description Insérez la description ici
bounce = 0;
deteriorate = 0;
z = 0;
spd = 0;
fric = 0;
image_speed = 0;
image_index = irandom(image_number-1);
collisionMap = layer_tilemap_get_id(layer_get_id("Col"));

image_xscale = choose(1,-1);
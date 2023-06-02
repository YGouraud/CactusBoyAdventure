/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

if (entityShadow) draw_sprite(sShadow,0,floor(x),floor(y));

//Fonction shader_set demande beaucoup de ressource donc mieux vaut ne pas l'appeler
//à chaque frame si c'est pas utile
if(flash != 0){
	shader_set(shWhiteFlash);
	shader_set_uniform_f(uFlash, flash);
}
draw_sprite_ext(
	sprite_index,
	image_index,
	floor(x),
	floor(y-z),
	image_xscale,
	image_yscale,
	image_angle,
	image_blend,
	image_alpha
);

if(shader_current() != -1) shader_reset();
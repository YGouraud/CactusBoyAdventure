if (type == TRANS_TYPE.SLIDE){
	
	draw_set_color(c_black);
	draw_rectangle(0,0,width,heightHalf*percent, false);
	draw_rectangle(0,height,width,height-(percent*heightHalf),false);
	
}

if (type == TRANS_TYPE.FADE) {
	
	draw_set_color(c_black);
	draw_set_alpha(percent*1.1);
	draw_rectangle(0,0,width,height,false);
	draw_set_alpha(1);
	
}

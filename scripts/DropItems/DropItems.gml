function DropItems(argument0, argument1, argument2){
	// @desc DropItems(x,y,[items])
	// @arg x
	// @arg y
	// @arg [items] array of items to drop

	var _items = array_length(argument2);
	var _angle = random(360);
	
	if (_items > 1){
		var _anglePerItem = 360/_items;
		for (var i = 0; i < _items; i++){
			
			with (instance_create_layer(argument0, argument1, "Instances", argument2[i])){
				direction = _angle + random_range(-5,5);
				spd = 0.75 + (_items * 0.1) + random(0.1);
			}
			_angle += _anglePerItem;
		}
	} else with (instance_create_layer(argument0, argument1, "Instances", argument2[0])) {
		direction = _angle;
		spd = 0.75 + random(0.1);
	}
	
	
}
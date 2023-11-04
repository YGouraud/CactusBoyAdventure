function RoomTransition() {
	/// @desc Choisie le type de transition et la "room" à atteindre
	/// @arg Type
	/// @arg TargetRoom
	
	if(!instance_exists(oTransition)) {
		with (instance_create_depth(0,0,-9999,oTransition)){
			type = argument0;
			targetRoom = argument1;
		}
	} else show_debug_message("Essaye de transitionner lors du déroulement d'une transition.s")
}
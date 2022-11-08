//Get Player Input
keyLeft = keyboard_check(vk_left) or keyboard_check(ord("Q"));
keyRight = keyboard_check(vk_right) or keyboard_check(ord("D"));
keyUp = keyboard_check(vk_up) or keyboard_check(ord("Z"));
keyDown = keyboard_check(vk_down) or keyboard_check(ord("S"));
keyActivate = keyboard_check_pressed(vk_space);
keyAttack = keyboard_check_pressed(vk_shift);
keyItem = keyboard_check_pressed(vk_control);

inputDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp); //Angle de direction
inputMagnitude = (keyRight-keyLeft != 0) || (keyDown-keyUp != 0);

script_execute(state);
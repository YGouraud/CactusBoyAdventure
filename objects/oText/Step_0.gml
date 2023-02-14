/// @description Insérez la description ici

lerpProgress += (1-lerpProgress) / 50;
textProgress += global.textSpeed;

x1 = lerp(x1,x1Target,lerpProgress);
x2 = lerp(x2,x2Target,lerpProgress);

//Cycle through responses
keyUp = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("Z"));
keyDown = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"))
responseSelected += (keyDown - keyUp);

var _max = array_length(responses)-1;
var _min = 0;
if (responseSelected > _max) responseSelected = _min;
if (responseSelected < _min) responseSelected = _max;

if (keyboard_check_pressed(vk_space))
{
	var _messageLength = string_length(message);
	if (textProgress >= _messageLength)
	{
		//destroy the text box and advance the queued text box
		instance_destroy();
		if (instance_exists(oTextQueue))
		{
			with (oTextQueue) ticket--;
		}
		else
		{
		// if all textbox are done, make the player able to move again
			with (oPlayer) state = lastState;
		}	
	}
	else
	{
		if (textProgress > 2)
		{
			textProgress = _messageLength;
		}
	}
}
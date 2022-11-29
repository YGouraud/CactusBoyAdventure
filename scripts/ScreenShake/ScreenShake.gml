/// @desc ScreenShake(magnitude,frame)
/// @param {real} Magnitude sets the strength of the shake (distance range)
/// @param {real} Frames sets the length of the shake in the frame (60 = 1sec)
function ScreenShake(){
	with (global.iCamera)
	{
		if (Magnitude > shakeRemain)
		{
			shakeMagnitude = Magnitude;
			shakeRemain = shakeMagnitude;
			shakeLength = Frames;
		}
	}	
}
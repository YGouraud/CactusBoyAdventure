function DialogueResponses(){
///@arg Response

	//First NPC dialog
	switch(argument0){
		case 0: break;
		case 1: NewTextBox("Have a nice day !", 1); break;
		case 2: NewTextBox("You think being an asshole is funny ?", 1, ["0>No, I'm sorry.","3>Get fucked !"]); break;
		case 3: NewTextBox("I will remember this...", 0) break;
		default: break;
	}
}
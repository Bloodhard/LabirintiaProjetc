textSpeed = 0.5;
started = false;

dialogue = -1
messageIndex = 0;
characters = 0;

start = function (_dialogueArray) {
	dialogue = _dialogueArray;
	started = true;
}

next_message = function() {
	messageIndex ++;
	characters= 0;
}
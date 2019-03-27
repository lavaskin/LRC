var activePlayers = 0;
var lastActive = 0;


// Find players that are out
for (i = 0; i < (numPlayers + numAI); i++) {
	// Players that have chips
	if (playerArray[i].chips != 0) {
		activePlayers++;
		lastActive = i;
	}	
}

// Game won by 1 player
if (activePlayers == 1) {
	show_message(playerArray[lastActive].name + " has won the game and " + string(pot) + " chips!");
	game_restart();
}
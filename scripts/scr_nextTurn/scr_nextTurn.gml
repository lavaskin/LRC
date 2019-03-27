scr_updateBuffers();

// Move to the next player that has chips
do {
	turnIndex = (turnIndex + 1) % (numPlayers + numAI);
} until (playerArray[turnIndex].chips > 0)

// Next player is an AI
if (playerArray[turnIndex].ai == true) {
	instance_deactivate_object(o_btn_rollDice);
	aiTurn = true;
} else {
	instance_activate_object(o_btn_rollDice);
}

// Deactivate till next player rolls
instance_deactivate_object(o_btn_nextTurn);

// Set all dice to blank
for (i = 0; i < 3; i++)
	dice[i].value = 0;
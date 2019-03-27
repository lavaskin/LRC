// Get players
do {
	numPlayers = get_integer("How many players? [1 -> 10]", 3);
} until (numPlayers > 0 and numPlayers < 11)

// Find min AI amount given players (Min players = 3)
var aiMin = 3 - numPlayers;
if (aiMin < 0) aiMin = 0;

// Get AI players
if (numPlayers < 10) {
	do {
		numAI = get_integer("How many AI players? [" + string(aiMin) + " -> " + string(10 - numPlayers) + "]", aiMin);
	} until (numAI >= aiMin and numAI < 11 - numPlayers)
} else if (numPlayers == 10) {
	numAI = 0;
}

// Get players names
for (i = 0; i < numPlayers; i++) {
	playerArray[i] = instance_create_depth(0, 0, 0, o_player);
	
	do {
		playerArray[i].name = get_string("What's player " + string(i + 1) + "'s name?", "");
	} until (playerArray[i].name != "" && string_pos("AI ", playerArray[i].name) == 0)
}

// Fill in data for AI's
if (numAI > 0) {
	for (i = numPlayers; i < (numPlayers + numAI); i++) {
		playerArray[i] = instance_create_depth(0, 0, 0, o_player); // Fill AI's
		playerArray[i].name = "AI " + string(i - numPlayers + 1);
		playerArray[i].ai = true;
	}
}
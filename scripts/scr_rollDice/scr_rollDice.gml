var diceAmnt = playerArray[turnIndex].chips;
if (diceAmnt > 3) diceAmnt = 3;

// Setup next/prev players
var player     = playerArray[turnIndex];
var nextPlayer = (turnIndex + 1) % (numPlayers + numAI);
var prevPlayer = turnIndex - 1;
if (prevPlayer < 0) prevPlayer = (numPlayers + numAI) - 1;

var diceToRoll = player.chips;
if (diceToRoll > 3) diceToRoll = 3;


// Roll Dice and update player chips accordingly
for (i = 0; i < diceToRoll; i++) {
	dice[i].value = irandom_range(1, 7);
	
	switch (dice[i].value) {
		case 2:
			playerArray[prevPlayer].chipBuffer += 1; // L
			break;
		case 3:
			playerArray[nextPlayer].chipBuffer += 1; // R
			break;
		case 4:
			pot++; // C
			break;
	}
	
	// If dice is either L, R or C, subtract a chip
	if (dice[i].value > 1 && dice[i].value < 5)
		player.chipBuffer--;
		
	// If the dice is over 5, then it's a dot
	if (dice[i].value > 4)
		dice[i].value = 1;
}
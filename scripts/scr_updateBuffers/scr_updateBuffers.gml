// Update chips from buffer
var nextPlayer = (turnIndex + 1) % (numPlayers + numAI);
var prevPlayer = turnIndex - 1;
if (prevPlayer < 0) prevPlayer = (numPlayers + numAI) - 1;

playerArray[prevPlayer].chips += playerArray[prevPlayer].chipBuffer;
playerArray[prevPlayer].chipBuffer = 0;

playerArray[turnIndex].chips += playerArray[turnIndex].chipBuffer;
playerArray[turnIndex].chipBuffer = 0;

playerArray[nextPlayer].chips += playerArray[nextPlayer].chipBuffer;
playerArray[nextPlayer].chipBuffer = 0;

scr_testGameEnd();
scr_setupPlayers();

// Setup buttons
rollBtn = instance_create_depth((room_width - 100), 20, 0, o_btn_rollDice);
rollBtn.text = "Roll Dice";

nextBtn = instance_create_depth((room_width - 100), 80, 0, o_btn_nextTurn);
nextBtn.text = "Next Turn";
instance_deactivate_object(nextBtn); // Not on until someone makes a move

// Setup Dice
dice[0] = instance_create_depth(room_width - 100 + 000, 180, 0, o_dice);
dice[1] = instance_create_depth(room_width - 140, 240, 0, o_dice);
dice[2] = instance_create_depth(room_width - 060, 240, 0, o_dice);
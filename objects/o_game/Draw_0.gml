var margins = 20;

// Current players turn
draw_set_font(f_calibri_40);
draw_set_color(c_white);
draw_text(margins, margins, string(playerArray[turnIndex].name) + "'s turn");

draw_set_font(f_calibri_15);
for (i = 0; i < numPlayers + numAI; i++) {
	// Test what font to use
	if (i == turnIndex)
		draw_set_color(c_yellow);
	else if (playerArray[i].chips == 0)
		draw_set_color(c_gray);
	else
		draw_set_color(c_white);
	
	var oText = playerArray[i].name + "   [Chips: " + string(playerArray[i].chips) + "]";
	
	// Test if the chip buffer should be drawn
	if (playerArray[i].chipBuffer > 0)
		oText += " (+" + string(playerArray[i].chipBuffer) + ")";
	else if (playerArray[i].chipBuffer < 0)
		oText += " (" + string(playerArray[i].chipBuffer) + ")";
	
	draw_text(margins, ((i * 25) + margins + 80), oText);
}

// Draw Pot
if (pot > 0) {
	draw_set_color(c_white);
	draw_text(room_width - 70, room_height - 35, "Pot: " + string(pot));
}
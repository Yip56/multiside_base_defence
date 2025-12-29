var w = 420;
var h = 360;

// UI background box
draw_set_alpha(0.3);
draw_set_colour(c_white);
draw_rectangle(cx-w/2, cy-h/2, cx+w/2, cy+h/2, false);

// PLAY BUTTON
draw_set_alpha(1);
draw_set_colour(c_green);
draw_rectangle(
    play_x - btn_w/2,
    play_y - btn_h/2,
    play_x + btn_w/2,
    play_y + btn_h/2,
    true
);
draw_set_colour(c_black);
draw_text(play_x, play_y, "PLAY");

// CLOSE BUTTON
draw_set_colour(c_green);
draw_rectangle(
    close_x - btn_w/2,
    close_y - btn_h/2,
    close_x + btn_w/2,
    close_y + btn_h/2,
    true
);
draw_set_colour(c_black);
draw_text(close_x, close_y, "CLOSE");


// UI Texts
draw_set_alpha(1);
draw_set_colour(c_black);
draw_text(cx, cy - 160, data.name);
draw_text(cx, cy - 120, "Difficulty: " + data.difficulty);
draw_text(cx, cy - 80, "Enemies:");

for (var i = 0; i < array_length(data.enemies); i++)
{
    draw_text(cx, cy - 60 + i *20, "- " + data.enemies[i]);
}

draw_text(cx, cy + 0, "Reward: " + data.reward);

draw_text(50, 50, string(mouse_x) + ", " + string(mouse_y));

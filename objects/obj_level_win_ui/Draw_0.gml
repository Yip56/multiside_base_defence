draw_set_alpha(0.1);
draw_set_colour(c_yellow);
draw_rectangle(cx-250, cy-200, cx+250, cy+200, true);


draw_text(cx, cy-120, "LEVEL COMPLETE!");

draw_text(cx, cy-40, "Enemies defeated: " + string(obj_level_manager.current_kills));

// Buttons
draw_rectangle(cx-btn_w/2, cy+40-btn_h/2, cx+btn_w/2, cy+40+btn_h/2, true);
draw_set_colour(c_yellow);
draw_text(cx, cy+40, "NEXT LEVEL");

draw_rectangle(cx-btn_w/2, cy+120-btn_h/2, cx+btn_w/2, cy+120+btn_h/2, true);
draw_set_colour(c_yellow);
draw_text(cx, cy+120, "LEVEL SELECT");

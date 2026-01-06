var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);


// NEXT LEVEL
if (point_in_rectangle(mx, my,
    cx-btn_w/2, cy+40-btn_h/2,
    cx+btn_w/2, cy+40+btn_h/2))
{
    if (mouse_check_button_pressed(mb_left))
    {
        global.current_level++;
        room_goto(rm_game);
    }
}

// LEVEL SELECT
if (point_in_rectangle(mx, my,
    cx-btn_w/2, cy+120-btn_h/2,
    cx+btn_w/2, cy+120+btn_h/2))
{
    if (mouse_check_button_pressed(mb_left))
    {
        room_goto(rm_level_select);
    }
}

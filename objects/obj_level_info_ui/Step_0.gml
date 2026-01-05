// Mouse position
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);


// --------------------
// PLAY BUTTON CLICK
// --------------------
if (
    point_in_rectangle(
        mx, my,
        play_x - btn_w/2,
        play_y - btn_h/2,
        play_x + btn_w/2,
        play_y + btn_h/2
    )
)
{
    if (mouse_check_button_pressed(mb_left))
    {
        global.current_level = level_id;
		obj_level_node.clicked = false;
        room_goto(rm_game);
    }
}

// --------------------
// CLOSE BUTTON CLICK
// --------------------
if (
    point_in_rectangle(
        mx, my,
        close_x - btn_w/2,
        close_y - btn_h/2,
        close_x + btn_w/2,
        close_y + btn_h/2
    )
)
{
    if (mouse_check_button_pressed(mb_left))
    {
		obj_level_node.clicked = false;
        instance_destroy();
    }
}

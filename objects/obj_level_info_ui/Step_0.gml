// Mouse position
var mx = mouse_x;
var my = mouse_y;

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
        instance_destroy();
    }
}

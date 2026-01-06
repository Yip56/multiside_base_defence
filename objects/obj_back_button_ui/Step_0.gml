var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);


if (point_in_rectangle(mx, my, 30, 30, 150, 80))
{
    if (mouse_check_button_pressed(mb_left))
    {
        room_goto(rm_menu);
    }
}

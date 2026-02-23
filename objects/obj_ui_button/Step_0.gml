var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

hovered =
    mx > x - sprite_width/2 &&
    mx < x + sprite_width/2 &&
    my > y - sprite_height/2 &&
    my < y + sprite_height/2;

if (hovered && mouse_check_button_pressed(mb_left))
{
    event_user(0);
}
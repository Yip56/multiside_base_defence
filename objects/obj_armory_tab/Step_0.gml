hovered =
    mouse_x > x - width/2 &&
    mouse_x < x + width/2 &&
    mouse_y > y - height/2 &&
    mouse_y < y + height/2;

if (hovered && mouse_check_button_pressed(mb_left))
{
    var ctrl = instance_find(obj_armory_controller, 0);
    if (ctrl != noone)
    {
        ctrl.current_tab = tab_type;
        ctrl.selected_item = noone;
    }
}

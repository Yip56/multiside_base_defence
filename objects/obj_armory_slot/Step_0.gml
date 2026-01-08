hovered = point_distance(x, y, mouse_x, mouse_y) < radius;

if (hovered && mouse_check_button_pressed(mb_left))
{
    var ctrl = instance_find(obj_armory_controller, 0);
    if (ctrl != noone && ctrl.selected_item != noone)
    {
        equip_item(ctrl.selected_item);
    }
}

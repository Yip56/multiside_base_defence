var map = instance_find(obj_level_map, 0);
if (!instance_exists(map)) exit;

// Convert normalized map position → screen position
screen_x = map_x * camera_get_view_width(view_camera[0]);
screen_y = (map_y * map.map_h) - map.scroll_y;

// Do nothing if this level is locked
if (level_id > global.unlocked_levels || clicked == true)
{
    exit;
}

// Hover
hover = point_distance(mouse_x, mouse_y, screen_x, screen_y) <= radius;

if (hover && mouse_check_button_pressed(mb_left))
{
    global.selected_level = level_id;
	clicked = true;
    instance_create_layer(0, 0, "UI", obj_level_info_ui);
}

var map = instance_find(obj_level_map, 0);
if (!instance_exists(map)) exit;

// Convert normalized map position to screen position
screen_x = map_x * map.map_w - map.draw_x;
screen_y = (map_y * map.map_h) - map.scroll_y;

// Hover check
hover = point_distance(mouse_x, mouse_y, screen_x, screen_y) < radius;

if (hover && mouse_check_button_pressed(mb_left))
{
    global.selected_level = level_id;
    instance_create_layer(0, 0, "UI", obj_level_info_ui);
}

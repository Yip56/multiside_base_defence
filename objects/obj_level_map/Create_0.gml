map_sprite = spr_world_map_1;

map_w = sprite_get_width(map_sprite);
map_h = sprite_get_height(map_sprite);



scroll_y = 0;
scroll_speed = 100;

view_w = camera_get_view_width(view_camera[0]);
view_h = camera_get_view_height(view_camera[0]);

draw_x = (map_w - view_w) / 2;
draw_y = (map_h - view_h) / 2;

map_h = sprite_get_height(map_sprite);

// Clamp limits
scroll_min = 0;
scroll_max = map_h - view_h;


level_id = global.selected_level;
data = get_level_data(level_id);

// Button sizes
btn_w = 200;
btn_h = 50;

cx = camera_get_view_width(view_camera[0]) / 2;
cy = camera_get_view_height(view_camera[0]) / 2;

play_x = cx;
play_y = cy + 60;

close_x = cx;
close_y = cy + 120;
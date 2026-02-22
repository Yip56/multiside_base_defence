var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

hovered = point_in_rectangle(
    mx, my,
    x - sprite_width/2,
    y - sprite_height/2,
    x + sprite_width/2,
    y + sprite_height/2
);
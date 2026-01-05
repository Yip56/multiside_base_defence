if (mouse_wheel_up())
{
    scroll_y -= scroll_speed;
}
if (mouse_wheel_down())
{
    scroll_y += scroll_speed;
}

scroll_y = clamp(scroll_y, 0, map_h - view_h);

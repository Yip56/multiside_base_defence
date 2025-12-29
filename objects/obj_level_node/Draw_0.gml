if (level_id > global.unlocked_levels)
{
    draw_set_color(c_dkgray);
}
else if (hover)
{
    draw_set_color(c_lime);
}
else
{
    draw_set_color(c_white);
}

draw_circle(screen_x, screen_y, radius, false);
draw_text(screen_x, screen_y - 40, "Lv " + string(level_id));
draw_set_color(c_white);

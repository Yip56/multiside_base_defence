draw_self();

if (is_locked)
{
    draw_set_color(c_yellow);
    draw_set_alpha(0.6);

    draw_circle(x, y, sprite_width * 0.6, false);

    draw_set_alpha(1);
    draw_set_color(c_white);
}

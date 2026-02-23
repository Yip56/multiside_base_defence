draw_sprite(sprite_index, 0, x, y);

if (hovered)
{
    draw_set_alpha(0.2);
    draw_set_color(c_white);
    draw_rectangle(
        x - sprite_width/2,
        y - sprite_height/2,
        x + sprite_width/2,
        y + sprite_height/2,
        false
    );
    draw_set_alpha(1);
}
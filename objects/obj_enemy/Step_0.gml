// Move ONLY toward assigned target
direction = point_direction(x, y, target_x, target_y);

is_locked = false;

with (obj_player)
{
    if (locked_target == other)
    {
        other.is_locked = true;
    }
}

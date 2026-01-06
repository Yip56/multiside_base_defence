if (instance_exists(obj_pause_ui) && obj_pause_ui.is_paused) {
    speed = 0;
    exit;
}

if (is_killed_by_click) {
    reset_timing_offset();
    instance_destroy();
}

if (hp <= 0) {

    // Notify level manager
    with (obj_level_manager) {
        current_kills++;
    }

    instance_destroy();
    exit;
}

// Move toward assigned target
speed = move_speed;
direction = point_direction(x, y, target_x, target_y);

// Lock indicator
is_locked = false;

with (obj_player) {
    if (locked_target == other) {
        other.is_locked = true;
    }
}

// Damage player ONCE
if (!has_damaged) {
    if (point_distance(x, y, target_x, target_y) < 20) {
        obj_player.hp -= damage;
        has_damaged = true;
        instance_destroy();
    }
}

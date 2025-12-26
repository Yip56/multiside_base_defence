// Draw player
draw_self();

// --------------------
// 1️⃣ Draw line to locked target
// --------------------
if (locked_target != noone && instance_exists(locked_target)) {
    draw_set_alpha(0.8);
    draw_set_color(c_red);

    draw_line_width(
        x,
        y - 10,
        locked_target.x,
        locked_target.y,
        2
    );

    draw_set_alpha(1);
    draw_set_color(c_white);
}

// --------------------
// 2️⃣ Draw TWO timing lines along the lock line
// --------------------
if (locked_target != noone && instance_exists(locked_target)) {
    
    // Direction vector from player to enemy
    var dx = locked_target.x - x;
    var dy = locked_target.y - y;
    var len = point_distance(x, y, locked_target.x, locked_target.y);

    var nx = dx / len;
    var ny = dy / len;

    // Perpendicular vector
    var px = -ny;
    var py = nx;

    // Offset from center (timing_offset shrinks toward 0)
    var off = timing_offset;

    // Line start/end (player → enemy)
    var sx = x;
    var sy = y;
    var ex = locked_target.x;
    var ey = locked_target.y;

    draw_set_color(c_lime);
    draw_set_alpha(0.8);

    // LEFT timing line
    draw_line_width(
        sx + px,
        sy + py,
        ex + px * off,
        ey + py * off,
        2
    );

    // RIGHT timing line
    draw_line_width(
        sx - px,
        sy - py,
        ex - px * off,
        ey - py * off,
        2
    );

    draw_set_alpha(1);
    draw_set_color(c_white);
}

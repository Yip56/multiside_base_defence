if (keyboard_check_pressed(ord("1"))) current_side = 0;
if (keyboard_check_pressed(ord("2"))) current_side = 1;

zx = zones[current_side].x;
zy = zones[current_side].y;

// Move camera
camera_set_view_pos(cam, zx, zy);

// Move player to bottom center
var p = instance_find(obj_player, 0);
if (p != noone)
{
    p.x = zx + cam_w / 2;
    p.y = zy + cam_h - 80;

    // Save target position for this side
    player_targets[current_side].x = p.x;
    player_targets[current_side].y = p.y;
}



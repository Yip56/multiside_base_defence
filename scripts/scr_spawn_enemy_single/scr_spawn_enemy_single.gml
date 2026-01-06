/// @func scr_spawn_enemy_single(_side, _x, _y)
/// @desc Spawns ONE enemy at exact position for a given side

function scr_spawn_enemy_single(_side, _x, _y)
{
    var cam_ctrl = instance_find(obj_camera_controller, 0);
    if (!instance_exists(cam_ctrl)) exit;

    var e = instance_create_layer(_x, _y, "Instances", obj_enemy_slow);

    // Lock enemy to side
    e.side_id = _side;

    // Assign fixed target (VERY IMPORTANT)
    e.target_x = cam_ctrl.player_targets[_side].x;
    e.target_y = cam_ctrl.player_targets[_side].y;

    return e;
}

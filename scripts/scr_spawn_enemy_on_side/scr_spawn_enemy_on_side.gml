/// @func scr_spawn_enemy_on_side(_side, _random = true, _x = 0, _y = 0)

function scr_spawn_enemy_on_side(_side, _random = true, _x = 0, _y = 0)
{
    var cam_ctrl = instance_find(obj_camera_controller, 0);
    if (!instance_exists(cam_ctrl)) exit;

    var zone = cam_ctrl.zones[_side];

    var spawn_x;
    var spawn_y;

    if (_random)
    {
        spawn_x = zone.x + irandom_range(32, cam_ctrl.cam_w - 32);
        spawn_y = zone.y - 32;
    }
    else
    {
        spawn_x = _x;
        spawn_y = _y;
    }

    return scr_spawn_enemy_single(_side, spawn_x, spawn_y);
}

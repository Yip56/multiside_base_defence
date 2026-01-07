function spawn_enemy(_enemy_object)
{
	
    var cam_ctrl = instance_find(obj_camera_controller, 0);
    if (cam_ctrl == noone) exit;

    var side = cam_ctrl.current_side;
    var sx   = cam_ctrl.side_x(side);

    var spawn_x = sx + irandom_range(32, cam_ctrl.cam_w - 32);
    var spawn_y = -32;

    var e = instance_create_layer(spawn_x, spawn_y, "Instances", _enemy_object);
    e.side = side;
	
}

//function spawn_enemy(_enemy_object = obj_enemy)
//{
//    var cam_ctrl = instance_find(obj_camera_controller, 0);
//    if (cam_ctrl == noone) exit;
//
//    var side = cam_ctrl.current_side;
//
//    // World X offset for this side
//    var sx = cam_ctrl.side_x(side);
//
//    // Spawn within this side's area
//    var spawn_x = sx + irandom_range(32, cam_ctrl.cam_w - 32);
//    var spawn_y = -32; // spawn just above screen
//
//    // Create enemy
//    var e = instance_create_layer(spawn_x, spawn_y, "Instances", _enemy_object);
//
//    // Lock enemy to side
//    e.side = side;
//}



function spawn_enemy(_enemy_object = obj_enemy)
{
    var cam_ctrl = instance_find(obj_camera_controller, 0);
    if (cam_ctrl == noone) exit;

    var side = cam_ctrl.current_side;
    var zone = cam_ctrl.zones[side];

    // Spawn at top of that zone
    var spawn_x = zone.x + irandom_range(32, cam_ctrl.cam_w - 32);
    var spawn_y = zone.y - 32;

    // Create enemy (USE PARAMETER)
    var e = instance_create_layer(spawn_x, spawn_y, "Instances", _enemy_object);

    // Lock enemy to side
    e.side_id = side;

    // Assign fixed target
    e.target_x = cam_ctrl.player_targets[side].x;
    e.target_y = cam_ctrl.player_targets[side].y;
}



//function spawn_enemy(){
//	
//	var cam_ctrl = instance_find(obj_camera_controller, 0);
//	if (cam_ctrl == noone) exit;
//	
//	var side = cam_ctrl.current_side;
//	var zone = cam_ctrl.zones[side];
//	
//	// Spawn at top of that zone
//	var spawn_x = zone.x + irandom_range(32, cam_ctrl.cam_w - 32);
//	var spawn_y = zone.y - 32;
//	
//	// Create enemy
//	var e = instance_create_layer(spawn_x, spawn_y, "Instances", obj_enemy);
//	
//	// Lock enemy to side
//	e.side_id = side;
//	
//	// Assign fixed target
//	e.target_x = cam_ctrl.player_targets[side].x;
//	e.target_y = cam_ctrl.player_targets[side].y;
//
//}
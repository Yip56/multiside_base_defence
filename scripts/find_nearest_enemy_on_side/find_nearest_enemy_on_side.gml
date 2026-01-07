function find_nearest_enemy_on_side(timing_offset)
{
    var cam_ctrl = instance_find(obj_camera_controller, 0);
    if (cam_ctrl == noone) return noone;

    var side = cam_ctrl.current_side;

    // Reset nearest data
    nearest_enemy = noone;
    nearest_dist = infinity;

    // Get current level config
    var lvl_cfg = get_level_config(global.current_level);
    if (!variable_instance_exists(lvl_cfg, "enemies")) return noone;

    // Loop through all enemy types in level config
    var enemies_array = lvl_cfg.enemies;
    for (var i = 0; i < array_length(enemies_array); i++)
    {
        var enemy_type = enemies_array[i].type;

        // Loop through all instances of this enemy type
        with (enemy_type)
        {
            if (side == side)
            {
                var d = point_distance(x, y, other.x, other.y);

                if (d < other.nearest_dist && d < other.attack_range)
                {
                    other.nearest_dist = d;
                    other.nearest_enemy = id;
                }
            }
        }
    }

    return nearest_enemy;
}


//function find_nearest_enemy_on_side(timing_offset)
//{
//    var cam_ctrl = instance_find(obj_camera_controller, 0);
//    if (cam_ctrl == noone) return noone;
//
//    // Store search data on caller (player)
//    search_side   = cam_ctrl.current_side;
//    nearest_enemy = noone;
//    nearest_dist  = infinity;
//
//    with (obj_enemy_parent)
//    {
//        if (side == other.search_side)
//        {
//            var d = point_distance(x, y, other.x, other.y);
//
//            if (d < other.nearest_dist && d <= attack_range)
//            {
//                other.nearest_dist  = d;
//                other.nearest_enemy = id;
//            }
//        }
//    }
//
//    return nearest_enemy;
//}



//function find_nearest_enemy_on_side(timing_offset){
//	
//	var cam_ctrl = instance_find(obj_camera_controller, 0);
//	if (cam_ctrl == noone)
//	{
//		
//		return noone;
//
//	}
//	var side = cam_ctrl.current_side;
//	
//	var nearest = noone;
//	var nearest_dist = room_width + room_height;
//	
//	
//	// Loop through enemies
//	with (obj_enemy_parent)
//	{
//		
//	   // Only enemies on current side
//	   if (side_id == side)
//	   {
//	      var d = point_distance(x, y, other.x, other.y);
//			
//	      if (d < nearest_dist && d <= other.attack_range)
//	      {
//			  
//	          nearest_dist = d;
//		      nearest = id;
//	     }
//	  }
//	}
//	
//	return nearest;
//
//}
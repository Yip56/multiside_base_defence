function find_nearest_enemy_on_side(timing_offset){
	
	var cam_ctrl = instance_find(obj_camera_controller, 0);
	if (cam_ctrl == noone)
	{
		
		return noone;

	}
	var side = cam_ctrl.current_side;
	
	var nearest = noone;
	var nearest_dist = room_width + room_height;
	
	
	// Loop through enemies
	with (obj_enemy_parent)
	{
		
	   // Only enemies on current side
	   if (side_id == side)
	   {
	      var d = point_distance(x, y, other.x, other.y);
			
	      if (d < nearest_dist && d <= other.attack_range)
	      {
			  
	          nearest_dist = d;
		      nearest = id;
	     }
	  }
	}
	
	return nearest;

}
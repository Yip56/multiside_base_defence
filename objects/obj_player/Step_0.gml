// Stop everything while paused
if (instance_exists(obj_pause_ui) && obj_pause_ui.is_paused) {
    exit;
}

// Ignore input for 1 frame after unpausing
if (input_locked) {
    input_locked = false;
    exit;
}

// --------------------
// 1️⃣ Cooldown
// --------------------
if (cooldown_timer > 0) {
    cooldown_timer--;
}

              // random jitter

// Clamp to avoid negative
timing_offset = max(timing_offset, 0);

// --------------------
// 3️⃣ LOCKED TARGET
// --------------------
locked_target = find_nearest_enemy_on_side(timing_offset);

// --------------------
// 2️⃣ TIMING MOVEMENT (dual lines toward center)
// --------------------
if(locked_target)
{
	timing_offset -= timing_speed;                         // move inward
	timing_offset += sin(current_time * (timing_wave / 100)) * timing_wave;      // wave shake
	timing_offset += random_range(-timing_jitter, timing_jitter);   
}
// Safety check: remove invalid target
if (locked_target != noone && !instance_exists(locked_target)) {
    locked_target = noone;
}

// --------------------
// 4️⃣ ATTACK INPUT
// --------------------
if ((mouse_check_button_pressed(mb_left) || mouse_check_button(mb_left)) && cooldown_timer <= 0) {
    
    if (locked_target != noone) {
        
        // Damage based on timing_offset
		
        var max_offset = max_timing_offset;                             // max starting offset
        var accuracy = 1 - (timing_offset / max_offset);  // 0 → 1
        accuracy = clamp(accuracy, 0 , 1);
		var dmg = 0;
		
		if(accuracy > 0.9){
			dmg = (max_damage);
		}
        else if(accuracy <= 0.9 && accuracy >= 0.5){
			dmg = (max_damage * accuracy);
		}
		else{
			dmg = min_damage	
		}
		
		
		
		if (dmg == max_damage){
			var b = instance_create_layer(x, y - 10, "Instances", obj_bullet);
			//distance between target and player
			var dx = locked_target.x - x;
			var dy = locked_target.y - y;
			
			var dist = point_distance(x, y, locked_target.x, locked_target.y);
			
			if(dist != 0){
				
				b.dir_x = dx / dist;
				b.dir_y = dy / dist;
			}

		}
		

        with (locked_target) {
            hp -= dmg;
			
            // Floating damage numbers
            var txt = instance_create_layer(x, y, "Instances", obj_damage_text);
            txt.damage = dmg;
			
			
			if (hp <= 0) {
				is_killed_by_click = true;
				//reset_timing_offset();
				
                
            }
        }

        // Reset timing lines after attack
		if(timing_offset <= max_timing_offset){
			timing_offset += 20;
		}
		
        cooldown_timer = attack_cooldown;
    }
}

// Damage receive

var enemy = instance_place(x, y, obj_enemy_parent);


if(hp <= 0 && is_dead == false){
	is_dead = true;	
	
	room_goto(rm_death);
}





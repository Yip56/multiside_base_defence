// --------------------
// 1️⃣ Cooldown
// --------------------
if (cooldown_timer > 0) {
    cooldown_timer--;
}

// --------------------
// 2️⃣ TIMING MOVEMENT (dual lines toward center)
// --------------------
timing_offset -= timing_speed;                         // move inward
timing_offset += sin(current_time * 0.02) * 4;      // wave shake
timing_offset += random_range(-4, 4);                 // random jitter

// Clamp to avoid negative
timing_offset = max(timing_offset, 0);

// --------------------
// 3️⃣ LOCKED TARGET
// --------------------
locked_target = find_nearest_enemy_on_side();

// Safety check: remove invalid target
if (locked_target != noone && !instance_exists(locked_target)) {
    locked_target = noone;
}

// --------------------
// 4️⃣ ATTACK INPUT
// --------------------
if (mouse_check_button_pressed(mb_left) && cooldown_timer <= 0) {
    
    if (locked_target != noone) {
        
        // Damage based on timing_offset
        var max_offset = 120;                             // max starting offset
        var accuracy = 1 - (timing_offset / max_offset);  // 0 → 1
        accuracy = clamp(accuracy, 0, 1);
        var dmg = round(10 * accuracy);
		
		
		if (dmg == 10){
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
                instance_destroy();
            }
        }

        // Reset timing lines after attack
        timing_offset = max_offset;
        cooldown_timer = attack_cooldown;
    }
}

/*
// --------------------
// Cooldown
// --------------------
if (cooldown_timer > 0)
{
    cooldown_timer--;
}

// --------------------
// TIMING MOVEMENT (dual lines)
// --------------------
timing_progress += timing_speed;
timing_progress += sin(current_time * 0.01) * 0.002;   // wave motion
timing_progress += random_range(-0.003, 0.003);       // jitter

timing_progress = clamp(timing_progress, 0, 1);

// --------------------
// ATTACK INPUT
// --------------------
if (mouse_check_button_pressed(mb_left) && cooldown_timer <= 0)
{
    var target = find_nearest_enemy_on_side();

    if (target != noone)
    {
        // Damage from timing
        var dmg = round(10 * timing_progress);
        dmg = clamp(dmg, 0, 10);

        with (target)
        {
            hp -= dmg;

            var txt = instance_create_layer(x, y, "Instances", obj_damage_text);
            txt.damage = dmg;

            if (hp <= 0)
            {
                instance_destroy();
            }
        }

        // Reset timing after shot
        timing_progress = 0;
        cooldown_timer = attack_cooldown;
    }
}

locked_target = find_nearest_enemy_on_side();

// Safety check
if (locked_target != noone && !instance_exists(locked_target))
{
    locked_target = noone;
}





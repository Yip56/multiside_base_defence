function level_win()
{
    global.level_completed = true;
	global.unlocked_levels = max(global.unlocked_levels, global.current_level + 1);
	scr_save_game();
	instance_destroy(obj_enemy_parent);
	instance_destroy(obj_enemy_spawner);
    instance_create_layer(0, 0, "UI", obj_level_win_ui);
}
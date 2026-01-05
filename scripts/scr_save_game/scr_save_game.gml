function scr_save_game()
{
    var save = ds_map_create();
    save[? "unlocked_levels"] = global.unlocked_levels;
    save[? "current_level"] = global.current_level;

    var json = json_encode(save);
	//show_debug_message(json);

    var buffer = buffer_create(string_byte_length(json) + 1, buffer_fixed, 1);
	buffer_write(buffer, buffer_string, json);
	buffer_save(buffer, "save.sav");
	buffer_delete(buffer);

    ds_map_destroy(save);
}
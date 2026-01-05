function scr_load_game()
{
    if (!file_exists("save.sav")) exit;

    var buffer = buffer_load("save.sav");
    var json   = buffer_read(buffer, buffer_string);
    buffer_delete(buffer);

    var save = json_decode(json);

    global.unlocked_levels = save[? "unlocked_levels"];
    global.current_level   = save[? "current_level"];

    ds_map_destroy(save);
}


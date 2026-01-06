level_id = global.current_level;

level = global.current_level;

// Load config
config = get_level_config(level);

// Spawn control
spawn_index = 0;
spawn_timer = 0;

// Build a flat spawn queue
spawn_queue = [];

for (var i = 0; i < array_length(config.enemies); i++)
{
    var entry = config.enemies[i];
    for (var j = 0; j < entry.count; j++)
    {
        array_push(spawn_queue, entry.type);
    }
}


// Defaults
win_type = "";
target_kills = 0;
current_kills = 0;
boss_alive = false;

switch (level_id)
{
    // --------------------
    // KILL COUNT LEVEL
    // --------------------
    case 1:
        win_type = "kill_count";
        target_kills = array_length(spawn_queue);
        break;
    case 2:
        win_type = "kill_count";
        target_kills = 20;
        break;
    case 3:
        win_type = "kill_count";
        target_kills = 30;
        break;
    case 4:
        win_type = "kill_count";
        target_kills = 40;
        break;
	
	

    // --------------------
    // BOSS LEVEL
    // --------------------
    case 5:
        win_type = "boss";
        boss_alive = true;
        break;
}

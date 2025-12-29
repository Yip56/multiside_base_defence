level_id = global.current_level;

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
        target_kills = 10;
        break;

    // --------------------
    // BOSS LEVEL
    // --------------------
    case 5:
        win_type = "boss";
        boss_alive = true;
        break;
}

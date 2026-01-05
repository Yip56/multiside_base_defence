// 1. Default values
global.unlocked_levels = 1;
global.selected_level  = 1;
global.current_level   = 1;
global.max_levels      = 20;

// 2. Load save (overwrite defaults if exists)
scr_load_game();
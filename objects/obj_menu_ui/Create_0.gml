/// obj_menu_ui : Create Event

// --------------------------------------------------
// 1️⃣ DEFAULT VALUES (SAFE FALLBACK)
// --------------------------------------------------
global.unlocked_levels = 1;
global.current_level   = 1;
global.selected_level  = 1;
global.max_levels      = 20;

has_save = false;

// --------------------------------------------------
// 2️⃣ LOAD SAVE IF EXISTS
// --------------------------------------------------
if (file_exists("save.sav"))
{
    scr_load_game();
    
    // Validate loaded data
    if (variable_global_exists("unlocked_levels") &&
        variable_global_exists("current_level"))
    {
        has_save = true;
        global.selected_level = global.current_level;
    }
}

// --------------------------------------------------
// 3️⃣ MENU ITEMS
// --------------------------------------------------
menu_items = [
    "Continue",
    "Start",
    "Levels",
    "Settings",
    "Exit"
];

menu_count = array_length(menu_items);
selected = -1;

// --------------------------------------------------
// 4️⃣ UI LAYOUT (MOBILE SAFE)
// --------------------------------------------------
button_w = 240;
button_h = 48;
button_spacing = 16;

ui_cx = camera_get_view_width(view_camera[0]) / 2;
ui_start_y = 260;


//global.selected_level = 1;
//
//
//menu_items = [
//    "Continue",
//    "Start",
//    "Levels",
//    "Settings",
//    "Exit"
//];
//
//menu_count = array_length(menu_items);
//selected = -1;
//
//// UI layout
//button_w = 240;
//button_h = 48;
//button_spacing = 16;
//
//// Center of screen (mobile-safe)
//ui_cx = camera_get_view_width(view_camera[0]) / 2;
//ui_start_y = 260;
//
//// Example progress (replace later with save data)
//current_level = 1;
//has_save = false; // set true later when save system exists

global.selected_level = 1;

menu_items = [
    "Continue",
    "Start",
    "Levels",
    "Settings",
    "Exit"
];

menu_count = array_length(menu_items);
selected = -1;

// UI layout
button_w = 240;
button_h = 48;
button_spacing = 16;

// Center of screen (mobile-safe)
ui_cx = camera_get_view_width(view_camera[0]) / 2;
ui_start_y = 260;

// Example progress (replace later with save data)
current_level = 1;
has_save = false; // set true later when save system exists

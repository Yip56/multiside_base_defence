is_paused = false;
global.level_completed = false;
// Pause button (top-right)
pause_btn_w = 60;
pause_btn_h = 60;
pause_btn_x = display_get_gui_width() - pause_btn_w - 20;
pause_btn_y = 20;

// Pause menu buttons
menu_items = ["Continue", "Retry", "Settings", "Exit"];
menu_count = array_length(menu_items);
selected = -1;

button_w = 240;
button_h = 48;
button_spacing = 16;

ui_cx = display_get_gui_width() / 2;
ui_start_y = display_get_gui_height() / 2 - 60;

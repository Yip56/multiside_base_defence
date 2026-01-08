if (global.level_completed == true){
	instance_destroy();	
}

mx = device_mouse_x_to_gui(0);
my = device_mouse_y_to_gui(0);

// --------------------
// PAUSE BUTTON CLICK
// --------------------
if (!is_paused) {
    if (mx >= pause_btn_x && mx <= pause_btn_x + pause_btn_w &&
        my >= pause_btn_y && my <= pause_btn_y + pause_btn_h)
    {
        if (mouse_check_button_pressed(mb_left)) {
            is_paused = true;
			input_locked = false;
        }
    }
    exit;
}

// --------------------
// PAUSE MENU LOGIC
// --------------------
selected = -1;

for (var i = 0; i < menu_count; i++) {
    var bx = ui_cx - button_w / 2;
    var by = ui_start_y + i * (button_h + button_spacing);

    if (mx >= bx && mx <= bx + button_w &&
        my >= by && my <= by + button_h)
    {
        selected = i;
        break;
    }
}

if (mouse_check_button_pressed(mb_left) && selected != -1) {
    switch (menu_items[selected]) {
        case "Continue":
            is_paused = false;
			
			// Lock player input for 1 frame
			with (obj_player) {
			    input_locked = true;
			}
            break;

        case "Retry":
            room_restart();
            break;
			
        case "Settings":
            show_message("Settings coming soon");
            break;

        case "Exit":
            room_goto(rm_menu);
            break;
    }
}

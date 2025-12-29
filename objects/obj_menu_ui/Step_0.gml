// Get GUI mouse position
mx = device_mouse_x_to_gui(0);
my = device_mouse_y_to_gui(0);

// Reset selection every frame
selected = -1;

// Detect hover
for (var i = 0; i < menu_count; i++)
{
    var bx = ui_cx - button_w / 2;
    var by = ui_start_y + i * (button_h + button_spacing);

    if (mx >= bx && mx <= bx + button_w &&
        my >= by && my <= by + button_h)
    {
        selected = i;
        break;
    }
}

// Handle click
if (mouse_check_button_pressed(mb_left) && selected != -1)
{
    switch (menu_items[selected])
    {
        case "Continue":
            if (has_save) room_goto(rm_game);
            break;

        case "Start":
            current_level = 1;
            room_goto(rm_game);
            break;

        case "Levels":
            room_goto(rm_level_select);
            break;

        case "Settings":
            show_message("Settings coming soon");
            break;

        case "Exit":
            game_end();
            break;
    }
}

/// obj_menu_ui : Step Event

selected = -1;

var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);


for (var i = 0; i < menu_count; i++)
{
    var bx = ui_cx - button_w / 2;
    var by = ui_start_y + i * (button_h + button_spacing);

    if (point_in_rectangle(mx, my, bx, by, bx + button_w, by + button_h))
    {
        selected = i;

        if (mouse_check_button_pressed(mb_left))
        {
            var item = menu_items[i];

            switch (item)
            {
                case "Continue":
                    if (has_save)
                    {
                        global.current_level = global.unlocked_levels;
						global.selected_level = global.current_level;
                        room_goto(rm_game);
                    }
                    break;

                case "Start":
                    global.current_level  = 1;
                    global.selected_level = 1;
                    room_goto(rm_game);
                    break;

                case "Levels":
                    room_goto(rm_level_select);
                    break;
                case "Armory":
                    room_goto(rm_armory);
                    break;

                case "Settings":
					show_message("Settings coming soon");
                    break;

                case "Exit":
                    game_end();
                    break;
            }
        }
    }
}

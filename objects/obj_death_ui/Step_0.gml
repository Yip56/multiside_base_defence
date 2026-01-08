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
                case "Retry":
                    room_goto(rm_game);
                    
                    break;

                case "Menu":
                    room_goto(rm_menu);
                    break;


            }
        }
    }
}


//// Get GUI mouse position
//mx = device_mouse_x_to_gui(0);
//my = device_mouse_y_to_gui(0);
//
//// Reset selection every frame
//selected = -1;
//
//// Detect hover
//for (var i = 0; i < menu_count; i++)
//{
//    var bx = ui_cx - button_w / 2;
//    var by = ui_start_y + i * (button_h + button_spacing);
//
//    if (mx >= bx && mx <= bx + button_w &&
//        my >= by && my <= by + button_h)
//    {
//        selected = i;
//        break;
//    }
//}
//
//// Handle click
//if (mouse_check_button_pressed(mb_left) && selected != -1)
//{
//    switch (menu_items[selected])
//    {
//        case "Continue":
//			//current_level = global.current_level;
//            if (has_save) room_goto(rm_game);
//            break;
//
//        case "Start":
//            current_level = 1;
//            room_goto(rm_game);
//            break;
//
//        case "Levels":
//            room_goto(rm_level_select);
//            break;
//
//        case "Settings":
//            show_message("Settings coming soon");
//            break;
//
//        case "Exit":
//            game_end();
//            break;
//    }
//}
//
//if (!variable_instance_exists(id, "initialized"))
//{
//    initialized = true;
//
//    current_level = global.current_level;
//    has_save = (global.unlocked_levels > 1);
//}
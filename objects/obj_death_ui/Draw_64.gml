draw_set_font(-1);
draw_set_color(c_white);
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);


// Title
draw_text(ui_cx, 160, "Ultimately Death");

// Buttons
for (var i = 0; i < menu_count; i++)
{
    var bx = ui_cx - button_w / 2;
    var by = ui_start_y + i * (button_h + button_spacing);

    var hover =
        mx >= bx && mx <= bx + button_w &&
        my >= by && my <= by + button_h;

    draw_set_color(hover ? c_gray : c_dkgray);
    draw_rectangle(bx, by, bx + button_w, by + button_h, false);

    var label = menu_items[i];


    draw_set_color(c_white);
    draw_text(ui_cx, by + button_h / 2, label);
}

draw_set_color(c_white);


//draw_set_font(-1);
//draw_set_color(c_white);
//draw_set_alpha(1);
//draw_set_halign(fa_center);
//draw_set_valign(fa_middle);
//
//
//var gui_w = display_get_gui_width();
//var gui_h = display_get_gui_height();
//
//// Title
//draw_text(ui_cx, 160, "MY GAME");
//
//// Buttons
//for (var i = 0; i < menu_count; i++)
//{
//    var bx = ui_cx - button_w / 2;
//    var by = ui_start_y + i * (button_h + button_spacing);
//
//    // Hover detection
//    var hover =
//		mx >= bx && mx <= bx + button_w &&
//		my >= by && my <= by + button_h;
//
//    draw_set_color(hover ? c_gray : c_dkgray);
//    draw_rectangle(bx, by, bx + button_w, by + button_h, false);
//
//    var label = menu_items[i];
//
//    if (label == "Continue" && has_save)
//        label = "Continue (Level " + string(current_level) + ")";
//    else if (label == "Continue")
//        label = "Continue (No Save)";
//
//    draw_set_color(c_white);
//    draw_text(ui_cx, by + button_h / 2, label);
//}
//
//draw_set_color(c_white);

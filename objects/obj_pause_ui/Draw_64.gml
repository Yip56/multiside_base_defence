draw_set_font(-1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_alpha(1);

// --------------------
// PAUSE BUTTON
// --------------------
if (!is_paused) {
    draw_set_color(c_dkgray);
    draw_rectangle(
        pause_btn_x,
        pause_btn_y,
        pause_btn_x + pause_btn_w,
        pause_btn_y + pause_btn_h,
        false
    );

    draw_text(
        pause_btn_x + pause_btn_w / 2,
        pause_btn_y + pause_btn_h / 2,
        "II"
    );
    draw_set_color(c_white);
    exit;
}

// --------------------
// PAUSE OVERLAY
// --------------------
draw_set_alpha(0.6);
draw_set_color(c_black);
draw_rectangle(
    0, 0,
    display_get_gui_width(),
    display_get_gui_height(),
    false
);

draw_set_alpha(1);
draw_set_color(c_white);

// Title
draw_text(ui_cx, ui_start_y - 80, "PAUSED");

// Buttons
for (var i = 0; i < menu_count; i++) {
    var bx = ui_cx - button_w / 2;
    var by = ui_start_y + i * (button_h + button_spacing);

    draw_set_color(i == selected ? c_gray : c_dkgray);
    draw_rectangle(bx, by, bx + button_w, by + button_h, false);

    draw_set_color(c_white);
    draw_text(ui_cx, by + button_h / 2, menu_items[i]);
}

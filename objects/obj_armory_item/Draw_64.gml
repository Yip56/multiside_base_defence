var data = get_equipment_data(item_id);
if (data == noone) exit;

var ctrl = instance_find(obj_armory_controller, 0);
var selected = (ctrl != noone && ctrl.selected_item == item_id);

draw_set_color(selected ? c_lime : (hovered ? c_yellow : c_white));
draw_rectangle(
    x - width/2, y - height/2,
    x + width/2, y + height/2,
    true
);

draw_sprite(data.sprite, 0, x, y);
draw_text(x, y + 50, data.name);

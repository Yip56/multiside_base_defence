var ctrl = instance_find(obj_armory_controller, 0);
var active = (ctrl != noone && ctrl.current_tab == tab_type);

draw_set_color(active ? c_lime : (hovered ? c_yellow : c_white));
draw_rectangle(
    x - width/2, y - height/2,
    x + width/2, y + height/2,
    true
);

var label = "";

switch (tab_type)
{
    case EQUIP_TYPE.WEAPON:
        label = "WEAPON";
        break;

    case EQUIP_TYPE.ARMOR:
        label = "ARMOR";
        break;

    case EQUIP_TYPE.GADGET:
        label = "GADGET";
        break;
}

draw_text(x - 30, y - 8, label);

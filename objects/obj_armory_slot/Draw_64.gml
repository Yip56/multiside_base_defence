draw_set_color(hovered ? c_yellow : c_white);
draw_circle(x, y, radius, false);

// Draw equipped item
var item_id;

switch (slot_type)
{
    case EQUIP_TYPE.WEAPON: item_id = global.player_loadout.weapon; break;
    case EQUIP_TYPE.ARMOR:  item_id = global.player_loadout.armor;  break;
    case EQUIP_TYPE.GADGET: item_id = global.player_loadout.gadget; break;
    case EQUIP_TYPE.HELMET: item_id = global.player_loadout.helmet; break;
    case EQUIP_TYPE.BOOTS:  item_id = global.player_loadout.boots;  break;
}

if (item_id != noone)
{
    var data = get_equipment_data(item_id);
    draw_sprite(data.sprite, 0, x, y);
}

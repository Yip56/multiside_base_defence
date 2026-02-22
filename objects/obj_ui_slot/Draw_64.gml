// Draw slot background
if (sprite_index != -1)
{
    draw_sprite(sprite_index, 0, x, y);
}

// Get equipped item
var item_id = noone;

switch (slot_type)
{
    case EQUIP_TYPE.WEAPON: item_id = global.player_loadout.weapon; break;
    case EQUIP_TYPE.ARMOR:  item_id = global.player_loadout.armor;  break;
    case EQUIP_TYPE.GADGET: item_id = global.player_loadout.gadget; break;
    case EQUIP_TYPE.HELMET: item_id = global.player_loadout.helmet; break;
    case EQUIP_TYPE.BOOTS:  item_id = global.player_loadout.boots;  break;
}

// Draw equipped item sprite
if (item_id != noone)
{
    var data = get_equipment_data(item_id);
    draw_sprite(data.sprite, 0, x, y);
}

// Hover highlight
if (hovered)
{
    draw_set_alpha(0.25);
    draw_set_color(c_white);
    draw_rectangle(
        x - sprite_width/2,
        y - sprite_height/2,
        x + sprite_width/2,
        y + sprite_height/2,
        false
    );
    draw_set_alpha(1);
}
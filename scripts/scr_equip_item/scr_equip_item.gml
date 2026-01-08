function equip_item(_item_id)
{
    var data = get_equipment_data(_item_id);
    if (data == noone) return;

    switch (data.type)
    {
        case EQUIP_TYPE.WEAPON:
            global.player_loadout.weapon = _item_id;
            break;

        case EQUIP_TYPE.ARMOR:
            global.player_loadout.armor = _item_id;
            break;

        case EQUIP_TYPE.GADGET:
            global.player_loadout.gadget = _item_id;
            break;

        case EQUIP_TYPE.HELMET:
            global.player_loadout.helmet = _item_id;
            break;

        case EQUIP_TYPE.BOOTS:
            global.player_loadout.boots = _item_id;
            break;
    }
}

function get_equipment_data(_id)
{
    switch (_id)
    {
        case "pistol":
            return {
                id: "pistol",
                name: "Pistol",
                type: EQUIP_TYPE.WEAPON,
                damage: 10,
                fire_rate: 1.0,
                timing_window: 20,
                sprite: spr_weapon_pistol
            };

        case "rifle":
            return {
                id: "rifle",
                name: "Rifle",
                type: EQUIP_TYPE.WEAPON,
                damage: 6,
                fire_rate: 0.4,
                timing_window: 10,
                sprite: spr_weapon_rifle
            };

        case "light_armor":
            return {
                id: "light_armor",
                name: "Light Armor",
                type: EQUIP_TYPE.ARMOR,
                hp_bonus: 20,
                sprite: spr_armor_light
            };

        case "shield_gadget":
            return {
                id: "shield_gadget",
                name: "Shield Generator",
                type: EQUIP_TYPE.GADGET,
                cooldown: 300,
                sprite: spr_gadget_shield
            };
    }

    return noone;
}

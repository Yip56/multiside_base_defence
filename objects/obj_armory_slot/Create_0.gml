// ---------- REQUIRED DEFAULT ----------
slot_type = EQUIP_TYPE.WEAPON;

// ---------- VISUAL ----------
radius = 28;
hovered = false;

// ---------- GUI POSITION ----------
var gw = display_get_gui_width();
var cx = gw * 0.5;

// Default center near player preview
y = 240;

switch (slot_type)
{
    case EQUIP_TYPE.WEAPON:
        x = cx;
        y = 320;
        break;

    case EQUIP_TYPE.ARMOR:
        x = cx + 80;
        y = 240;
        break;

    case EQUIP_TYPE.GADGET:
        x = cx - 80;
        y = 240;
        break;

    case EQUIP_TYPE.HELMET:
        x = cx;
        y = 160;
        break;

    case EQUIP_TYPE.BOOTS:
        x = cx;
        y = 400;
        break;
}

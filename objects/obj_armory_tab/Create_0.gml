// ---------- REQUIRED DEFAULTS ----------
tab_type = EQUIP_TYPE.WEAPON; // default, will be overridden by creation code


// Size
width = 120;
height = 40;
hovered = false;

// GUI positioning
var gw = display_get_gui_width();
var cx = gw * 0.5;

// Default Y for tabs
y = 520;


// X based on tab type

switch (tab_type)
{
    case EQUIP_TYPE.WEAPON:
        x = cx - 120;
        break;

    case EQUIP_TYPE.ARMOR:
        x = cx;
        break;

    case EQUIP_TYPE.GADGET:
        x = cx + 120;
        break;
}

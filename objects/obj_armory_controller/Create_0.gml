// GUI dimensions
gui_w = display_get_gui_width();
gui_h = display_get_gui_height();

// Common anchors
gui_cx = gui_w * 0.5;
gui_top = 80;
gui_bottom = gui_h - 80;

// Item grid layout
grid_start_x = 80;
grid_start_y = gui_h * 0.65;
grid_spacing = 80;

current_tab = EQUIP_TYPE.WEAPON;

// Layout
item_start_x = 100;
item_start_y = display_get_gui_height() - 160;
item_spacing = 80;
items_per_page = 6;

// Pagination
page = 0;
filtered_items = [];

selected_item = noone;

tabs = [
    EQUIP_TYPE.WEAPON,
    EQUIP_TYPE.ARMOR,
    EQUIP_TYPE.GADGET
];

// Example inventory (later can be saved/loaded)
inventory = [
    "pistol",
    "rifle",
    "light_armor",
    "shield_gadget"
];

slot_positions = {
    weapon: { x: 0, y: 120 },
    armor:  { x: 60, y: 0 },
    helmet: { x: -60, y: 0 },
    gadget: { x: 0, y: -120 },
    boots:  { x: 0, y: 180 }
};

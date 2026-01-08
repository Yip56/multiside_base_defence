with (obj_armory_item) instance_destroy();

var idx = 0;

for (var i = 0; i < array_length(inventory); i++)
{
    var _id = inventory[i];
    var data = get_equipment_data(_id);
    if (data == noone) continue;
    if (data.type != current_tab) continue;

    var ix = grid_start_x + (idx mod 5) * grid_spacing;
    var iy = grid_start_y + (idx div 5) * grid_spacing;

    var it = instance_create_layer(ix, iy, "Instances", obj_armory_item);
    it.item_id = _id;

    idx++;
}

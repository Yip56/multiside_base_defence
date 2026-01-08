function rebuild_armory_items()
{
    filtered_items = [];

    for (var i = 0; i < array_length(global.inventory); i++)
    {
        var item_id = global.inventory[i];
        var data = get_equipment_data(item_id);

        if (data.type == current_tab)
        {
            array_push(filtered_items, item_id);
        }
    }

    page = 0;
}

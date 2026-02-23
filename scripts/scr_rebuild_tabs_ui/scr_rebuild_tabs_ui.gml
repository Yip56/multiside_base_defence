function rebuild_tabs()
{
    with (obj_ui_tab) instance_destroy();

    var tab_spacing = 140;

    for (var i = 0; i < array_length(tabs); i++)
    {
        var tx = gui_cx + (i - 1) * tab_spacing;
        var ty = gui_top;

        var tab = instance_create_layer(tx, ty, "Instances", obj_ui_tab);
        tab.tab_type = tabs[i];
    }
}
map_sprite = spr_world_map_1;

// Map Size
map_w = sprite_get_width(map_sprite);
map_h = sprite_get_height(map_sprite);

// Camera
cam = view_camera[0];
view_w = camera_get_view_width(cam);
view_h = camera_get_view_height(cam);

// Scroll
scroll_y = map_h - view_h; // start at bottom
scroll_speed = 50;
scroll_y = max(scroll_y, 0);

// ----- LEVEL NODE DATA -----
level_nodes = [
    { id: 1, x: 0.5, y: 0.90 },
    { id: 2, x: 0.4, y: 0.75 },
    { id: 3, x: 0.6, y: 0.60 },
    { id: 4, x: 0.5, y: 0.45 },
    { id: 5, x: 0.3, y: 0.30 }
];

// Spawn nodes
for (var i = 0; i < array_length(level_nodes); i++)
{
    var n = level_nodes[i];
    var node = instance_create_layer(0, 0, "UI", obj_level_node);
    node.level_id = n.id;
    node.map_x = n.x;
    node.map_y = n.y;
}

// MOBILE PORTRAIT RESOLUTION
cam_w = 540;
cam_h = 960;

cam = camera_create_view(0, 0, cam_w, cam_h, 0, noone, -1, -1, -1, -1);

view_enabled = true;
view_visible[0] = true;
view_camera[0] = cam;

// Define zones (2 sides)
zones = [
    { x: room_width/2 - cam_w/2, y: 0 },
    { x: room_width/2 - cam_w/2, y: cam_h }
];

current_side = 0;

// Player target positions per side
player_targets = [
    { x: 0, y: 0 }, // side 0
    { x: 0, y: 0 }  // side 1
];


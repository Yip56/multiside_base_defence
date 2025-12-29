if (instance_exists(obj_pause_ui) && obj_pause_ui.is_paused) {
    exit;
}

if(touch_count >= 3){
	instance_destroy();
}

// Move bullet
x += dir_x * bullet_speed;
y += dir_y * bullet_speed;

// Camera-based destroy
var cam = view_camera[0];
var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);

if (x < cam_x || x > cam_x + cam_w ||
    y < cam_y || y > cam_y + cam_h)
{
    instance_destroy();
}

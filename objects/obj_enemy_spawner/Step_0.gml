if (instance_exists(obj_pause_ui) && obj_pause_ui.is_paused) {
    exit;
}

spawn_timer++;

if (spawn_timer >= spawn_delay)
{
    spawn_timer = 0;
    spawn_enemy();
}

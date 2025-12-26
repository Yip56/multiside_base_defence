spawn_timer++;

if (spawn_timer >= spawn_delay)
{
    spawn_timer = 0;
    spawn_enemy();
}

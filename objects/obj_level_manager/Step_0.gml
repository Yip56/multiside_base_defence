spawn_timer++;

if (spawn_timer >= config.spawn_delay)
{
    spawn_timer = 0;

    if (spawn_index < array_length(spawn_queue))
    {
        var enemy_type = spawn_queue[spawn_index];
        spawn_index++;
		
        spawn_enemy(enemy_type);
    }
}

switch (win_type)
{
    case "kill_count":
        if (current_kills >= target_kills)
        {
            level_win();
        }
        break;

    case "boss":
        if (!boss_alive)
        {
            level_win();
        }
        break;
}

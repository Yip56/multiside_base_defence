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

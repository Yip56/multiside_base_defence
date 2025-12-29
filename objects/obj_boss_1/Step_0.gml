if (hp <= 0)
{
    with (obj_level_manager)
    {
        boss_alive = false;
    }

    instance_destroy();
}

/// @func scr_spawn_enemy_batch(_side, _count, _random = true)

function scr_spawn_enemy_batch(_side, _count, _random = true)
{
    for (var i = 0; i < _count; i++)
    {
        scr_spawn_enemy_on_side(_side, _random);
    }
}

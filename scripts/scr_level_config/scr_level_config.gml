function scr_level_config(_level)
{
    switch (_level)
    {
        case 1:
            return {
                enemies : [
                    { type: obj_enemy_slow, count: 3 }
                ],
                spawn_delay : 60
            };

        case 2:
            return {
                enemies : [
                    { type: obj_enemy_slow, count: 5 },
                    { type: obj_enemy_fast, count: 2 }
                ],
                spawn_delay : 45
            };

        case 3:
            return {
                enemies : [
                    { type: obj_enemy_fast, count: 6 },
                    { type: obj_enemy_tank, count: 1 }
                ],
                spawn_delay : 30
            };
    }
}

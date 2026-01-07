function get_level_config(_level)
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
                    { type: obj_enemy_fast, count: 60 },
                    { type: obj_enemy_tank, count: 10 }
                ],
                spawn_delay : 30
            };
        case 4:
            return {
                enemies : [
                    { type: obj_enemy_fast, count: 60 },
                    { type: obj_enemy_tank, count: 100 }
                ],
                spawn_delay : 10
            };
        case 5:
            return {
                enemies : [
                    //{ type: obj_enemy_fast, count: 60 },
                    { type: obj_enemy_tank, count: 200 }
                ],
                spawn_delay : 5
            };
    }
}

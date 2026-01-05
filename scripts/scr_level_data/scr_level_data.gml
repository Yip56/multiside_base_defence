function get_level_data(_id)
{
    switch (_id)
    {
        case 1:
            return {
                name : "Abandoned Outpost",
                difficulty : "Easy",
                enemies : ["Scout", "Drone"],
                reward : "100 Gold"
            };
        case 2:
            return {
                name : "Abandoned Outpost",
                difficulty : "Medium",
                enemies : ["Scout", "Drone"],
                reward : "150 Gold"
            };
        case 3:
            return {
                name : "Abandoned Outpost",
                difficulty : "Hard",
                enemies : ["Scout", "Drone"],
                reward : "200 Gold"
            };
        case 4:
            return {
                name : "Abandoned Outpost",
                difficulty : "Very Hard",
                enemies : ["Scout", "Drone"],
                reward : "300 Gold"
            };

        case 5:
            return {
                name : "Burning Corridor",
                difficulty : "Boss",
                enemies : ["Tank", "Runner"],
                reward : "New Weapon"
            };
    }
}

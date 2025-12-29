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

        case 5:
            return {
                name : "Burning Corridor",
                difficulty : "Medium",
                enemies : ["Tank", "Runner"],
                reward : "New Weapon"
            };
    }
}

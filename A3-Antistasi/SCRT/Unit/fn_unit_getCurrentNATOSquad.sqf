if(!(hasTieredUnitConfigs)) exitWith {
    NATOSquadT1;
};

switch (true) do {
    case (tierWar < 5):
    {
        NATOSquadT1;
    };
    case (tierWar < 8 && {tierWar > 4}):
    {
        NATOSquadT2;
    };
    case (tierWar > 7):
    {
        NATOSquadT3;
    };
};

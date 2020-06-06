if(!(hasTieredUnitConfigs)) then {
    groupsNATOAAT1;
};

switch (true) do {
    case (tierWar < 5):
    {
        groupsNATOAAT1;
    };
    case (tierWar < 8 && {tierWar > 4}):
    {
        groupsNATOAAT2;
    };
    case (tierWar > 7):
    {
        groupsNATOAAT3;
    };
};

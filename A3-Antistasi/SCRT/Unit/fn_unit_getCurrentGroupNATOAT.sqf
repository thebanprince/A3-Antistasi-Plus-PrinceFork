if(!(hasTieredUnitConfigs)) exitWith {
    groupsNATOATT1;
};

switch (true) do {
    case (tierWar < 5):
    {
        groupsNATOATT1;
    };
    case (tierWar < 8 && {tierWar > 4}):
    {
        groupsNATOATT2;
    };
    case (tierWar > 7):
    {
       groupsNATOATT3;
    };
};

if(!(hasTieredUnitConfigs)) exitWith {
    [groupsNATOFTT1, groupsNATOAAT1, groupsNATOATT1];
};

switch (true) do {
    case (tierWar < 5):
    {
        [groupsNATOFTT1, groupsNATOAAT1, groupsNATOATT1];
    };
    case (tierWar < 8 && {tierWar > 4}):
    {
        [groupsNATOFTT2, groupsNATOAAT2, groupsNATOATT2];
    };
    case (tierWar > 7):
    {
        [groupsNATOFTT3, groupsNATOAAT3, groupsNATOATT3];
    };
};
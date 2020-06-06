if(!(hasTieredUnitConfigs)) then {
    groupsFIAMid;
};

switch (true) do {
    case (tierWar < 5):
    {
        groupsFIAMid;
    };
    case (tierWar < 8 && {tierWar > 4}):
    {
        if(random 10 <= (tierWar + difficultyCoef)) then {
            groupsFIAMid;
        } else {
            groupsNATOSpecOpMid;
        };
    };
    case (tierWar > 7):
    {
        groupsNATOSpecOpMid;
    };
};
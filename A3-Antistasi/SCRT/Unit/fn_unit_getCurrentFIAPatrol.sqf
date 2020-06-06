if(!(hasTieredUnitConfigs) || gameMode == 4) then {
    groupsFIASmall;
};

switch (true) do {
    case (tierWar < 5):
    {
        groupsFIASmall;
    };
    case (tierWar < 8 && {tierWar > 4}):
    {
        if(random 10 <= (tierWar + difficultyCoef)) then {
            groupsFIASmall;
        } else {
            groupsNATOSpecOpSmall;
        };
    };
    case (tierWar > 7):
    {
        groupsNATOSpecOpSmall;
    };
};
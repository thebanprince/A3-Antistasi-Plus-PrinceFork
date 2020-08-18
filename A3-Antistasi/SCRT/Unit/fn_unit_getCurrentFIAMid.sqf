_fileName = "fn_unit_getCurrentFIAMid";

if(!(hasTieredUnitConfigs)) exitWith {
    [2, "Tiered unit config is not enabled, returning default value.", _fileName] call A3A_fnc_log;
    groupsFIAMid;
};

switch (true) do {
    case (tierWar < 5):
    {
        [2, "Returning T1 FIA Mid-sized squad.", _fileName] call A3A_fnc_log;
        groupsFIAMid;
    };
    case (tierWar < 8 && {tierWar > 4}):
    {
        if(random 10 <= (tierWar + difficultyCoef)) then {
            [2, "Returning T2 FIA Mid-sized squad.", _fileName] call A3A_fnc_log;
            groupsFIAMid;
        } else {
            [2, "Returning T2 SpecOps Mid-sized squad.", _fileName] call A3A_fnc_log;
            groupsNATOSpecOpMid;
        };
    };
    case (tierWar > 7):
    {
        [2, "Returning T3 SpecOps Mid-sized squad.", _fileName] call A3A_fnc_log;
        groupsNATOSpecOpMid;
    };
};
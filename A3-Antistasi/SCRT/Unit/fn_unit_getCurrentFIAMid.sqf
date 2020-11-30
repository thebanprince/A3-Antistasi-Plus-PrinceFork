private _fileName = "fn_unit_getCurrentFIAMid";

if(!(hasTieredUnitConfigs)) exitWith {
    [3, "Tiered unit config is not enabled, returning default value.", _fileName] call A3A_fnc_log;
    groupsFIAMid;
};

switch (true) do {
    case (tierWar < 5):
    {
        [3, "Returning T1 FIA Mid-sized squad.", _fileName] call A3A_fnc_log;
        groupsFIAMid;
    };
    case (tierWar < 8 && {tierWar > 4}):
    {
        if(random 10 <= (tierWar + difficultyCoef)) then {
            [3, "Returning T2 FIA Mid-sized squad.", _fileName] call A3A_fnc_log;
            groupsFIAMid;
        } else {
            [3, "Returning T2 SpecOps Mid-sized squad.", _fileName] call A3A_fnc_log;
            groupsNATOSpecOpMid;
        };
    };
    case (tierWar > 7):
    {
        [3, "Returning T3 SpecOps Mid-sized squad.", _fileName] call A3A_fnc_log;
        groupsNATOSpecOpMid;
    };
};
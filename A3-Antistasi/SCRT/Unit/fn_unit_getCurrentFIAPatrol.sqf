_fileName = "fn_unit_getCurrentFIAPatrol";

if(!(hasTieredUnitConfigs) || gameMode == 4) exitWith {
    [2, "Tiered unit config is not enabled, returning default value.", _fileName] call A3A_fnc_log;
    groupsFIASmall;
};

switch (true) do {
    case (tierWar < 5):
    {
        [2, "Returning T1 FIA patrol.", _fileName] call A3A_fnc_log;
        groupsFIASmall;
    };
    case (tierWar < 8 && {tierWar > 4}):
    {
        if(random 10 <= (tierWar + difficultyCoef)) then {
            [2, "Returning T2 FIA patrol.", _fileName] call A3A_fnc_log;
            groupsFIASmall;
        } else {
            [2, "Returning T2 SpecOps patrol.", _fileName] call A3A_fnc_log;
            groupsNATOSpecOpSmall;
        };
    };
    case (tierWar > 7):
    {
        [2, "Returning T3 SpecOps patrol.", _fileName] call A3A_fnc_log;
        groupsNATOSpecOpSmall;
    };
};
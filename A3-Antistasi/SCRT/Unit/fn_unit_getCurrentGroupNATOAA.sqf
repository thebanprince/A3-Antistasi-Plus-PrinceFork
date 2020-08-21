_fileName = "fn_unit_getCurrentGroupNATOAA";

diag_log format ["%1: [Antistasi] | INFO | %2 | War Tier: %3", servertime, _fileName, tierWar];

if(!(hasTieredUnitConfigs)) exitWith {
    [2, "Tiered unit config is not enabled, returning default value.", _fileName] call A3A_fnc_log;
    groupsNATOAAT1;
};

switch (true) do {
    case (tierWar < 5):
    {
        [2, "Returning T1 AA squad.", _fileName] call A3A_fnc_log;
        groupsNATOAAT1;
    };
    case (tierWar < 8 && {tierWar > 4}):
    {
        [2, "Returning T2 AA squad.", _fileName] call A3A_fnc_log;
        groupsNATOAAT2;
    };
    case (tierWar > 7):
    {
        [2, "Returning T3 AA squad.", _fileName] call A3A_fnc_log;
        groupsNATOAAT3;
    };
};

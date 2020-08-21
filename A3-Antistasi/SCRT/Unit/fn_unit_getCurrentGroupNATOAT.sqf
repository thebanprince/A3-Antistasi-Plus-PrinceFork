_fileName = "fn_unit_getCurrentGroupNATOAT";

diag_log format ["%1: [Antistasi] | INFO | %2 | War Tier: %3", servertime, _fileName, tierWar];

if(!(hasTieredUnitConfigs)) exitWith {
    [2, "Tiered unit config is not enabled, returning default value.", _fileName] call A3A_fnc_log;
    groupsNATOATT1;
};

switch (true) do {
    case (tierWar < 5):
    {
        [2, "Returning T1 AT squad.", _fileName] call A3A_fnc_log;
        groupsNATOATT1;
    };
    case (tierWar < 8 && {tierWar > 4}):
    {
        [2, "Returning T2 AT squad.", _fileName] call A3A_fnc_log;
        groupsNATOATT2;
    };
    case (tierWar > 7):
    {
        [2, "Returning T3 AT squad.", _fileName] call A3A_fnc_log;
       groupsNATOATT3;
    };
};

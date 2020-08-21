_fileName = "fn_unit_getCurrentGroupNATOSmall";

diag_log format ["%1: [Antistasi] | INFO | %2 | War Tier: %3", servertime, _fileName, tierWar];

if(!(hasTieredUnitConfigs)) exitWith {
    [2, "Tiered unit config is not enabled, returning default value.", _fileName] call A3A_fnc_log;
    [groupsNATOSentryT1, groupsNATOSniper];
};

switch (true) do {
    case (tierWar < 5):
    {
        [2, "Returning T1 Small Squad.", _fileName] call A3A_fnc_log;
        [groupsNATOSentryT1, groupsNATOSniper];
    };
    case (tierWar < 8 && {tierWar > 4}):
    {
        [2, "Returning T2 Small Squad.", _fileName] call A3A_fnc_log;
        [groupsNATOSentryT2, groupsNATOSniper];
    };
    case (tierWar > 7):
    {
        [2, "Returning T3 Small Squad.", _fileName] call A3A_fnc_log;
        [groupsNATOSentryT3, groupsNATOSniper];
    };
};

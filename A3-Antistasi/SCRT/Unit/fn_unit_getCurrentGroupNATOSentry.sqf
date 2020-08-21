_fileName = "fn_unit_getCurrentGroupNATOSentry";

diag_log format ["%1: [Antistasi] | INFO | %2 | War Tier: %3", servertime, _fileName, tierWar];

if(!(hasTieredUnitConfigs)) exitWith {
    [2, "Tiered unit config is not enabled, returning default value.", _fileName] call A3A_fnc_log;
    groupsNATOSentryT1;
};

switch (true) do {
    case (tierWar < 5):
    {
        [2, "Returning T1 Sentry.", _fileName] call A3A_fnc_log;
        groupsNATOSentryT1;
    };
    case (tierWar < 8 && {tierWar > 4}):
    {
        [2, "Returning T2 Sentry.", _fileName] call A3A_fnc_log;
        groupsNATOSentryT2;
    };
    case (tierWar > 7):
    {
        [2, "Returning T3 Sentry.", _fileName] call A3A_fnc_log;
        groupsNATOSentryT3;
    };
};



private _fileName = "fn_unit_getCurrentGroupNATOSentry";

if(!(hasTieredUnitConfigs)) exitWith {
    [3, "Tiered unit config is not enabled, returning default value.", _fileName] call A3A_fnc_log;
    groupsNATOSentryT1;
};

switch (true) do {
    case (tierWar < 5):
    {
        [3, "Returning T1 Sentry.", _fileName] call A3A_fnc_log;
        groupsNATOSentryT1;
    };
    case (tierWar < 8 && {tierWar > 4}):
    {
        [3, "Returning T2 Sentry.", _fileName] call A3A_fnc_log;
        groupsNATOSentryT2;
    };
    case (tierWar > 7):
    {
        [3, "Returning T3 Sentry.", _fileName] call A3A_fnc_log;
        groupsNATOSentryT3;
    };
};



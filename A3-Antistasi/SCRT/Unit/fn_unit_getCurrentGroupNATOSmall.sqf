private _fileName = "fn_unit_getCurrentGroupNATOSmall";

if(!(hasTieredUnitConfigs)) exitWith {
    [3, "Tiered unit config is not enabled, returning default value.", _fileName] call A3A_fnc_log;
    [groupsNATOSentryT1, groupsNATOSniper];
};

switch (true) do {
    case (tierWar < 5):
    {
        [3, "Returning T1 Small Squad.", _fileName] call A3A_fnc_log;
        [groupsNATOSentryT1, groupsNATOSniper];
    };
    case (tierWar < 8 && {tierWar > 4}):
    {
        [3, "Returning T2 Small Squad.", _fileName] call A3A_fnc_log;
        [groupsNATOSentryT2, groupsNATOSniper];
    };
    case (tierWar > 7):
    {
        [3, "Returning T3 Small Squad.", _fileName] call A3A_fnc_log;
        [groupsNATOSentryT3, groupsNATOSniper];
    };
};

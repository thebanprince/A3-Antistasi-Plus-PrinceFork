private _fileName = "fn_unit_getCurrentGroupNATOAT";

if(!(hasTieredUnitConfigs)) exitWith {
    [3, "Tiered unit config is not enabled, returning default value.", _fileName] call A3A_fnc_log;
    groupsNATOATT1;
};

switch (true) do {
    case (tierWar < 5):
    {
        [3, "Returning T1 AT squad.", _fileName] call A3A_fnc_log;
        groupsNATOATT1;
    };
    case (tierWar < 8 && {tierWar > 4}):
    {
        [3, "Returning T2 AT squad.", _fileName] call A3A_fnc_log;
        groupsNATOATT2;
    };
    case (tierWar > 7):
    {
        [3, "Returning T3 AT squad.", _fileName] call A3A_fnc_log;
       groupsNATOATT3;
    };
};

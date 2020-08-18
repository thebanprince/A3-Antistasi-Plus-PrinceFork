_fileName = "fn_unit_getCurrentGroupNATOMid";

if(!(hasTieredUnitConfigs)) exitWith {
    [2, "Tiered unit config is not enabled, returning default value.", _fileName] call A3A_fnc_log;
    [groupsNATOFTT1, groupsNATOAAT1, groupsNATOATT1];
};

switch (true) do {
    case (tierWar < 5):
    {
        [2, "Returning T1 AT, AA, Fireteam squads.", _fileName] call A3A_fnc_log;
        [groupsNATOFTT1, groupsNATOAAT1, groupsNATOATT1];
    };
    case (tierWar < 8 && {tierWar > 4}):
    {
        [2, "Returning T2 AT, AA, Fireteam squads.", _fileName] call A3A_fnc_log;
        [groupsNATOFTT2, groupsNATOAAT2, groupsNATOATT2];
    };
    case (tierWar > 7):
    {
        [2, "Returning T3 AT, AA, Fireteam squads.", _fileName] call A3A_fnc_log;
        [groupsNATOFTT3, groupsNATOAAT3, groupsNATOATT3];
    };
};
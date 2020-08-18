_fileName = "fn_unit_getCurrentNATOSquad";

if(!(hasTieredUnitConfigs)) exitWith {
    [2, "Tiered unit config is not enabled, returning default value.", _fileName] call A3A_fnc_log;
    NATOSquadT1;
};

switch (true) do {
    case (tierWar < 5):
    {
        [2, "Returning T1 Big NATO squad.", _fileName] call A3A_fnc_log;
        NATOSquadT1;
    };
    case (tierWar < 8 && {tierWar > 4}):
    {
        [2, "Returning T2 Big NATO squad.", _fileName] call A3A_fnc_log;
        NATOSquadT2;
    };
    case (tierWar > 7):
    {
        [2, "Returning T3 Big NATO squad.", _fileName] call A3A_fnc_log;
        NATOSquadT3;
    };
};

params ["_mode"];

if (_mode == "ADD") then {
    if (isNil "launcherCamEhIndex") then {
        launcherCamEhIndex = player addEventHandler ["FiredMan", SCRT_fnc_misc_launcherCamera];
    };
} else {
    if (!isNil "launcherCamEhIndex") then {
        player removeEventHandler ["FiredMan", launcherCamEhIndex];
        launcherCamEhIndex = nil;
    };
};
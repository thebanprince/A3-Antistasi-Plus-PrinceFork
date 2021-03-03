params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];

if !(isLauncherCamEnabled && {_weapon isKindOf ["Launcher", configFile >> "CfgWeapons"]}) exitWith {};

_null = _this spawn {
    isRocketLaunched = true;
    isRocketInterruped = false;

    private _shell = _this select 6;

    private _cam = "camera" camCreate (position player);
    _cam cameraEffect ["External", "Back"];

    private _timeOut = time + 5;
    private _position = nil;

    while {true} do {        
        if (isRocketInterruped || {time > _timeOut}) exitWith {
            true;
        };
        if (isNull _shell) exitWith {
            sleep 1.6;
            true;
        };

        _position = getPos _shell;

        if !(_position isEqualTo [0,0,0]) then {
            _cam camSetTarget _position;
            _cam camSetRelPos [1,-3,0];
            _cam camCommit 0;
        };
    };

    _cam cameraEffect ["Terminate", "Back"];
    camDestroy _cam;
};
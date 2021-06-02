params ["_position", "_direction", "_pitchBank"];
if (!isServer) exitWith {};
if (isNil "_position") exitWith {};
if (count _position == 0) exitWith {};

private _chemicalSpreadingSounds = [
    "A3\Sounds_f\weapons\smokeshell\smoke_1.wss",
    "A3\Sounds_f\weapons\smokeshell\smoke_2.wss",
    "A3\Sounds_f\weapons\smokeshell\smoke_3.wss"
];

private _tempObject = createVehicle ["Land_HelipadEmpty_F", _position, [], 0, "FLY"];
private _angle = random [30,45,60];
private _worldPosition = getPosWorld _tempObject;

private _shell = createSimpleObject ["Bo_Mk82_MI08", _worldPosition, false];
_shell setDir (_direction - 180);
[_shell, (-(_pitchBank select 0)), (_pitchBank select 1)] call BIS_fnc_setPitchBank;

playSound3D ["A3\Sounds_f\weapons\explosion\explosion_mine_1.wss", _shell];
sleep random [0.8,1.2,1.6];
playSound3D [(selectRandom _chemicalSpreadingSounds), _shell];

_tempObject remoteExec ["SCRT_fnc_effect_createGasEffect", 0];

sleep 8;
[_tempObject] spawn SCRT_fnc_common_chemicalDamage;

private _timeOut = time + 140;
waitUntil {sleep 1; time > _timeOut};
deleteVehicle _tempObject;
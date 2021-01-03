private _vehicle = cursorTarget;

if(isNil "_vehicle" || {isNull _vehicle}) exitWith {};
if !(_vehicle isKindOf "Car") exitWith {};

private _isAlive = alive _vehicle;
if !(alive _vehicle) exitWith {
    ["Unflip failed", "Vehicle is destroyed."] call SCRT_fnc_misc_showDeniedActionHint;
};

private _crew = crew _vehicle;
if !(_crew isEqualTo []) exitWith {
    ["Unflip failed", "Vehicle is occupied by someone, clear crew before unflip."] call SCRT_fnc_misc_showDeniedActionHint;
};

private _nearFriendlies = count ([25, _vehicle, teamPlayer] call SCRT_fnc_common_getNearPlayers);
if (_nearFriendlies < 3) exitWith {
    ["Unflip failed", "Not enough people to unflip vehicle."] call SCRT_fnc_misc_showDeniedActionHint;
};

private _vehicleMass = getMass _vehicle;
if(_vehicleMass > 10000) exitWith {
    _nearVehicles = _vehicle nearEntities ["Car", 50];
    _canRepair = false;

    {
        private _repairValue = getRepairCargo _vehicle;
        if (_repairValue > 0) exitWith { _canRepair = true };
    } forEach _nearVehicles;

    if !(_canRepair) exitWith {
        ["Unflip failed", "Vehicle is too heavy, repair truck is needed to perform unflip."] call SCRT_fnc_misc_showDeniedActionHint;
    };
};

(_vehicle call BIS_fnc_getPitchBank) params ["_vx","_vy"];
if (([_vx,_vy] findIf {_x > 80 || _x < -80}) != -1) then {	
	0 = [_vehicle] spawn {
        params ["_unflippableVehicle"];
        _unflippableVehicle allowDamage false;
        _unflippableVehicle setVectorUp [0,0,1];
        _unflippableVehicle setPosATL [(getPosATL _unflippableVehicle) select 0, (getPosATL _unflippableVehicle) select 1, 0];
        sleep 1;
        _unflippableVehicle allowDamage true;
	};
};
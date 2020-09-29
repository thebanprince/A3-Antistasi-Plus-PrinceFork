private _vehicle = cursorTarget;

if(isNil "_vehicle" || {isNull _vehicle}) exitWith {};
if !(_vehicle isKindOf "Car") exitWith {};

// if (!((getNumber (configFile >> "CfgVehicles" >> typeOf _vehicle >> "hasDriver")) isEqualTo 1)) exitWith {};

private _isAlive = alive _vehicle;
if !(alive _vehicle) exitWith {
    playSound "3DEN_notificationWarning";
    ["Unflip failed", "Vehicle is destroyed."] call A3A_fnc_customHint;
};

private _crew = crew _vehicle;
if !(_crew isEqualTo []) exitWith {
    playSound "3DEN_notificationWarning";
    ["Unflip failed", "Vehicle is occupied by someone, clear crew before unflip."] call A3A_fnc_customHint;
};

private _nearFriendlies = count ([25, _vehicle, teamPlayer] call SCRT_fnc_common_getNearPlayers);
if (_nearFriendlies < 4) exitWith {
    playSound "3DEN_notificationWarning";
    ["Unflip failed", "Not enough people to unflip vehicle."] call A3A_fnc_customHint;
};

private _vehicleMass = getMass _vehicle;
if(_vehicleMass > 10000) exitWith {
    private _repairValue = getRepairCargo _vehicle;
    if (_repairValue in [-1, 0]) exitWith {
        playSound "3DEN_notificationWarning";
        ["Unflip failed", "Vehicle is too heavy, requires repair truck to perform unflip."] call A3A_fnc_customHint;
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
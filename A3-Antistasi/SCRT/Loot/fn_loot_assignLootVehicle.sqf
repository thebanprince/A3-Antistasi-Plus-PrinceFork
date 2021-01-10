
#define COST 1000

private _vehicle = cursorTarget;

private _failHeader = "Assign Failed";

if(isNil "_vehicle" || {isNull _vehicle}) exitWith {
    [_failHeader, "You are not looking at anything."] call SCRT_fnc_misc_showDeniedActionHint;
};

if !(_vehicle isKindOf "Car" || _vehicle isKindOf "Tank") exitWith {
    [_failHeader, "You are not looking at assignable vehicle."] call SCRT_fnc_misc_showDeniedActionHint;
};

private _isAlive = alive _vehicle;
if !(alive _vehicle) exitWith {
    [_failHeader, "Vehicle is destroyed."] call SCRT_fnc_misc_showDeniedActionHint;
};

private _crew = crew _vehicle;
if !(_crew isEqualTo []) exitWith {
    [_failHeader, "Vehicle is occupied by someone, clear crew before assigning."] call SCRT_fnc_misc_showDeniedActionHint;
};

private _resourcesFIA = server getVariable "resourcesFIA";
if (_resourcesFIA < COST) exitWith {
    [_failHeader, format ["You have not enough resources to assign Loot Vehicle. %1 € needed", str COST]] call SCRT_fnc_misc_showDeniedActionHint;
};

if (_vehicle in lootVehicles || {typeOf _vehicle == civLooter}) exitWith {
    [_failHeader, "Vehicle is already have loot capabilities."] call SCRT_fnc_misc_showDeniedActionHint;
};

[0, -1000] remoteExec ["A3A_fnc_resourcesFIA",2];

_vehicle addEventHandler ["Killed", {
	params ["_unit", "_killer", "_instigator", "_useEffects"];

    private _vehIndex = lootVehicles find _unit;
    if(_vehIndex != -1) then {
        lootVehicles deleteAt _vehIndex;
        publicVariable "lootVehicles";
    }; 
}];

lootVehicles pushBack _vehicle;
publicVariable "lootVehicles";

[_vehicle] remoteExec ["SCRT_fnc_loot_addActionLoot", 0, _vehicle];

["Loot Vehicle Assign Succeeded", "Targeted vehicle has been assigned."] call A3A_fnc_customHint;
playSound "3DEN_notificationDefault";
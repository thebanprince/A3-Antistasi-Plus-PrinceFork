/*
	Installs various damage/smoke/kill/capture logic for vehicles
	Will set and modify the "originalSide" and "ownerSide" variables on the vehicle indicating side ownership
	If a rebel enters a vehicle, it will be switched to rebel side and added to vehDespawner

	Params:
	1. Object: Vehicle object
	2. Side: Side ownership for vehicle
*/

private _filename = "fn_AIVEHinit";
params ["_veh", "_side", ["_excludeTrails", false]];
if (isNil "_veh") exitWith {};

if !(isNil { _veh getVariable "ownerSide" }) exitWith
{
	// vehicle already initialized, just swap side and exit
	[_veh, _side] call A3A_fnc_vehKilledOrCaptured;
};

_veh setVariable ["originalSide", _side, true];
_veh setVariable ["ownerSide", _side, true];

// probably just shouldn't be called for these
if ((_veh isKindOf "Building") or (_veh isKindOf "ReammoBox_F")) exitWith {};

// this might need moving into a different function later
if (_side == teamPlayer) then
{
	clearMagazineCargoGlobal _veh;			// might need an exception on this for vehicle weapon mags?
	clearWeaponCargoGlobal _veh;
	clearItemCargoGlobal _veh;
	clearBackpackCargoGlobal _veh;
} else {
	clearWeaponCargoGlobal _veh;
};

// Sync the vehicle textures if necessary
_veh call A3A_fnc_vehicleTextureSync;

private _typeX = typeOf _veh;

if (_typeX in vehNormal || {_typeX in (vehAttack + vehBoats + vehAA)}) then {
	_veh call A3A_fnc_addActionBreachVehicle;

	if !(_typeX in vehAttack) then {
		if (_veh isKindOf "Car") then {
			_veh addEventHandler ["HandleDamage",{if (((_this select 1) find "wheel" != -1) and ((_this select 4=="") or (side (_this select 3) != teamPlayer)) and (!isPlayer driver (_this select 0))) then {0} else {(_this select 2)}}];
			if ({"SmokeLauncher" in (_veh weaponsTurret _x)} count (allTurrets _veh) > 0) then
			{
				_veh setVariable ["within",true];
				_veh addEventHandler ["GetOut", {private ["_veh"]; _veh = _this select 0; if (side (_this select 2) != teamPlayer) then {if (_veh getVariable "within") then {_veh setVariable ["within",false]; [_veh] call A3A_fnc_smokeCoverAuto}}}];
				_veh addEventHandler ["GetIn", {private ["_veh"]; _veh = _this select 0; if (side (_this select 2) != teamPlayer) then {_veh setVariable ["within",true]}}];
			};
		};
	}
	else {
		if (_typeX in vehAPCs) then
		{
			_veh addEventHandler ["HandleDamage",{private ["_veh"]; _veh = _this select 0; if (!canFire _veh) then {[_veh] call A3A_fnc_smokeCoverAuto; _veh removeEventHandler ["HandleDamage",_thisEventHandler]};if (((_this select 1) find "wheel" != -1) and (_this select 4=="") and (!isPlayer driver (_veh))) then {0;} else {(_this select 2);}}];
			_veh setVariable ["within",true];
			_veh addEventHandler ["GetOut", {private ["_veh"];  _veh = _this select 0; if (side (_this select 2) != teamPlayer) then {if (_veh getVariable "within") then {_veh setVariable ["within",false];[_veh] call A3A_fnc_smokeCoverAuto}}}];
			_veh addEventHandler ["GetIn", {private ["_veh"];_veh = _this select 0; if (side (_this select 2) != teamPlayer) then {_veh setVariable ["within",true]}}];
		}
		else
		{
			if (_typeX in vehTanks) then
			{
				_veh addEventHandler ["HandleDamage",{private ["_veh"]; _veh = _this select 0; if (!canFire _veh) then {[_veh] call A3A_fnc_smokeCoverAuto;  _veh removeEventHandler ["HandleDamage",_thisEventHandler]}}];
			}
			else		// never called? vehAttack is APCs+tank
			{
				_veh addEventHandler ["HandleDamage",{if (((_this select 1) find "wheel" != -1) and ((_this select 4=="") or (side (_this select 3) != teamPlayer)) and (!isPlayer driver (_this select 0))) then {0} else {(_this select 2)}}];
			};
		};
	};
} else {
	if (_typeX in vehPlanes) then {
		_veh addEventHandler ["GetIn",
		{
			if (_this select 1 != "driver") exitWith {};
			_unit = _this select 2;
			if ((!isPlayer _unit) and (_unit getVariable ["spawner",false]) and (side group _unit == teamPlayer)) then
			{
				moveOut _unit;
				["General", "Only Humans can pilot an air vehicle"] call A3A_fnc_customHint;
			};
		}];

		if (_veh isKindOf "Helicopter") then {
			if (_typeX in vehTransportAir) then {
				_veh setVariable ["within",true];
				_veh addEventHandler ["GetOut", {private ["_veh"];_veh = _this select 0; if ((isTouchingGround _veh) and (isEngineOn _veh)) then {if (side (_this select 2) != teamPlayer) then {if (_veh getVariable "within") then {_veh setVariable ["within",false]; [_veh] call A3A_fnc_smokeCoverAuto}}}}];
				_veh addEventHandler ["GetIn", {private ["_veh"];_veh = _this select 0; if (side (_this select 2) != teamPlayer) then {_veh setVariable ["within",true]}}];
			};
		};
	}
	else
	{
		if (_veh isKindOf "StaticWeapon") then
		{
			_veh setCenterOfMass [(getCenterOfMass _veh) vectorAdd [0, 0, -1], 0];

			if !(_typeX isKindOf "StaticMortar") then {
				[_veh, "static"] remoteExec ["A3A_fnc_flagAction", [teamPlayer,civilian], _veh];
				if (_side == teamPlayer && !isNil {serverInitDone}) then { [_veh] remoteExec ["A3A_fnc_updateRebelStatics", 2] };
			};
		};
	};
};

if (_side == civilian) then
{
	_veh addEventHandler ["HandleDamage",{if (((_this select 1) find "wheel" != -1) and (_this select 4=="") and (!isPlayer driver (_this select 0))) then {0;} else {(_this select 2);};}];
	_veh addEventHandler ["HandleDamage", {
		_veh = _this select 0;
		if (side(_this select 3) == teamPlayer) then
		{
			_driverX = driver _veh;
			if (side group _driverX == civilian) then {_driverX leaveVehicle _veh};
			_veh removeEventHandler ["HandleDamage", _thisEventHandler];
		};
	}];
};

private _artilleryTypes = vehMRLS + additionalShopArtillery + [CSATMortar, NATOMortar, SDKMortar];
if (NATOHowitzer != "") then {_artilleryTypes pushBack NATOHowitzer};
if (CSATHowitzer != "") then {_artilleryTypes pushBack CSATHowitzer};

if(_typeX in _artilleryTypes) then {
	_veh addEventHandler ["Fired", SCRT_fnc_common_triggerArtilleryResponseEH];

	if (!_excludeTrails) then {
		[_veh] call A3A_fnc_addArtilleryTrailEH;
	};
};

// EH behaviour:
// GetIn/GetOut/Dammaged: Runs where installed, regardless of locality
// Local: Runs where installed if target was local before or after the transition
// HandleDamage/Killed: Runs where installed, only if target is local
// MPKilled: Runs everywhere, regardless of target locality or install location

if (_side != teamPlayer) then
{
	// Vehicle stealing handler
	// When a rebel first enters a vehicle, fire capture function
	_veh addEventHandler ["GetIn", {

		params ["_veh", "_role", "_unit"];
		if (side group _unit != teamPlayer) exitWith {};		// only rebels can flip vehicles atm
		private _oldside = _veh getVariable ["ownerSide", teamPlayer];
		if (_oldside != teamPlayer) then
		{
			[3, format ["%1 switching side from %2 to rebels", typeof _veh, _oldside], "fn_AIVEHinit"] call A3A_fnc_log;
			[_veh, teamPlayer, true] call A3A_fnc_vehKilledOrCaptured;
		};
		_veh removeEventHandler ["GetIn", _thisEventHandler];
	}];
};

if(_veh isKindOf "Air") then
{
    //Start airspace control script if rebel player enters
    _veh addEventHandler
    [
        "GetIn",
        {
            params ["_veh", "_role", "_unit"];
            if((side (group _unit) == teamPlayer) && {isPlayer _unit}) then
            {
                [_veh] spawn A3A_fnc_airspaceControl;
            };
        }
    ];


    _veh addEventHandler
    [
        "IncomingMissile",
        {
            params ["_target", "_ammo", "_vehicle", "_instigator"];
            private _group = group driver _target;
            private _supportTypes = [_group, _vehicle] call A3A_fnc_chooseSupport;
            _supportTypes = _supportTypes - ["QRF"];
            private _reveal = [getPos _vehicle, side _group] call A3A_fnc_calculateSupportCallReveal;
            [_vehicle, 4, _supportTypes, side _group, _reveal] remoteExec ["A3A_fnc_sendSupport", 2];
        }
    ]
};

// Handler to prevent vehDespawner deleting vehicles for an hour after rebels exit them

_veh addEventHandler ["GetOut", {
	params ["_veh", "_role", "_unit"];
	if !(_unit isEqualType objNull) exitWith {
		[1, format ["GetOut handler weird input: %1, %2, %3", _veh, _role, _unit], "fn_AIVEHinit"] call A3A_fnc_log;
	};
	if (side group _unit == teamPlayer) then {
		_veh setVariable ["despawnBlockTime", time + 3600];			// despawner always launched locally
	};
}];

// Because Killed and MPKilled are both retarded, we use Dammaged

_veh addEventHandler ["Dammaged", {
	params ["_veh", "_selection", "_damage"];
	if (_damage >= 1 && _selection == "") then {
		private _killerSide = side group (_this select 5);
		[3, format ["%1 destroyed by %2", typeof _veh, _killerSide], "fn_AIVEHinit"] call A3A_fnc_log;
		[_veh, _killerSide, false] call A3A_fnc_vehKilledOrCaptured;
		[_veh] spawn A3A_fnc_postmortem;
		_veh removeEventHandler ["Dammaged", _thisEventHandler];
	};
}];

//add logistics loading to loadable objects
if([typeOf _veh] call A3A_fnc_logistics_isLoadable) then {[_veh] call A3A_fnc_logistics_addLoadAction;};

// deletes vehicle if it exploded on spawn...
[_veh] spawn A3A_fnc_cleanserVeh;
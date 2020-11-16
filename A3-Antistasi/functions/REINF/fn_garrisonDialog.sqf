private ["_typeX","_positionTel","_nearX","_garrison","_costs","_hr","_size"];
_typeX = _this select 0;

if (_typeX == "add") then {["Garrison", "Select a zone to add garrisoned troops"] call A3A_fnc_customHint;} else {["Garrison", "Select a zone to remove it's Garrison"] call A3A_fnc_customHint;};

if (!visibleMap) then {openMap true};
positionTel = [];

onMapSingleClick "positionTel = _pos;";

waitUntil {sleep 1; (count positionTel > 0) or (not visiblemap)};
onMapSingleClick "";

if (!visibleMap) exitWith {};

_positionTel = positionTel;
positionXGarr = "";

_nearX = [markersX,_positionTel] call BIS_fnc_nearestPosition;
_positionX = getMarkerPos _nearX;

if (getMarkerPos _nearX distance _positionTel > 40) exitWith {["Garrison", "You must click near a marked zone"] call A3A_fnc_customHint; _nul=CreateDialog "build_menu";};

if (not(sidesX getVariable [_nearX,sideUnknown] == teamPlayer)) exitWith {["Garrison", format ["That zone does not belong to %1",nameTeamPlayer]] call A3A_fnc_customHint; _nul=CreateDialog "build_menu";};
if ([_positionX,500] call A3A_fnc_enemyNearCheck) exitWith {["Garrison", "You cannot manage this garrison while there are enemies nearby"] call A3A_fnc_customHint; _nul=CreateDialog "build_menu"};
private _watchpostFIA = if (_nearX in watchpostsFIA) then {true} else {false};
private _roadblockFIA = if (_nearX in roadblocksFIA) then {true} else {false};
private _aapostFIA = if (_nearX in aapostsFIA) then {true} else {false};
private _atpostFIA = if (_nearX in atpostsFIA) then {true} else {false};
_garrison = if (!_watchpostFIA) then {
	garrison getVariable [_nearX,[]]
} else {
	SDKSniper
};

if (_typeX == "rem") then {
	if ((count _garrison == 0) and {!(_watchpostFIA) || !(_roadblockFIA) || !(_aapostFIA) || !(_atpostFIA)}) exitWith {
		["Garrison", "The place has no garrisoned troops to remove"] call A3A_fnc_customHint; 
		_nul = CreateDialog "build_menu";
	};
	_costs = 0;
	_hr = 0;

	switch (true) do {
		case (_watchpostFIA): {
			_hr = 2;
			_costs = 200;
		};
		case (_roadblockFIA): {
			_hr = 8;
			_costs = 1000;
		};
		case (_aapostFIA): {
			_hr = 5;
			_costs = 1000;
		};
		case (_atpostFIA): {
			_hr = 5;
			_costs = 1000;
		};
		default {
			{
				if (_x == staticCrewTeamPlayer) then {
					if (_outpostFIA) then {
						_costs = _costs + ([vehSDKLightArmed] call A3A_fnc_vehiclePrice)
					} else {
						_costs = _costs + ([SDKMortar] call A3A_fnc_vehiclePrice)
					};
				};
				_hr = _hr + 1;
				_costs = _costs + (server getVariable [_x,0]);
			} forEach _garrison;
		};
	};

	[_hr,_costs] remoteExec ["A3A_fnc_resourcesFIA",2];

	switch (true) do {
		case (_watchpostFIA): {
			garrison setVariable [_nearX,nil,true];
			watchpostsFIA = watchpostsFIA - [_nearX]; publicVariable "watchpostsFIA";
			markersX = markersX - [_nearX]; publicVariable "markersX";
			deleteMarker _nearX;
			sidesX setVariable [_nearX,nil,true];
		};
		case (_roadblockFIA): {
			garrison setVariable [_nearX,nil,true];
			roadblocksFIA = roadblocksFIA - [_nearX]; publicVariable "roadblocksFIA";
			markersX = markersX - [_nearX]; publicVariable "markersX";
			deleteMarker _nearX;
			sidesX setVariable [_nearX,nil,true];
		};
		case (_aapostFIA): {
			garrison setVariable [_nearX,nil,true];
			aapostsFIA = aapostsFIA - [_nearX]; publicVariable "aapostsFIA";
			markersX = markersX - [_nearX]; publicVariable "markersX";
			deleteMarker _nearX;
			sidesX setVariable [_nearX,nil,true];
		};
		case (_atpostFIA): {
			garrison setVariable [_nearX,nil,true];
			atpostsFIA = atpostsFIA - [_nearX]; publicVariable "atpostsFIA";
			markersX = markersX - [_nearX]; publicVariable "markersX";
			deleteMarker _nearX;
			sidesX setVariable [_nearX,nil,true];
		};
		default {
			garrison setVariable [_nearX,[],true];
			{if (_x getVariable ["markerX",""] == _nearX) then {deleteVehicle _x}} forEach allUnits;
		};
	};

	[_nearX] call A3A_fnc_mrkUpdate;
	["Garrison", format ["Garrison removed<br/><br/>Recovered Money: %1 €<br/>Recovered HR: %2",_costs,_hr]] call A3A_fnc_customHint;
	_nul=CreateDialog "build_menu";
	}
else
	{
	positionXGarr = _nearX;
	publicVariable "positionXGarr";
	["Garrison", format ["Info%1",[_nearX] call A3A_fnc_garrisonInfo]] call A3A_fnc_customHint;
	closeDialog 0;
	_nul=CreateDialog "garrison_recruit";
	sleep 1;
	disableSerialization;

	_display = findDisplay 100;

	if (str (_display) != "no display") then
		{
		_ChildControl = _display displayCtrl 104;
		_ChildControl  ctrlSetTooltip format ["Cost: %1 €",server getVariable (SDKMil select 0)];
		_ChildControl = _display displayCtrl 105;
		_ChildControl  ctrlSetTooltip format ["Cost: %1 €",server getVariable (SDKMG select 0)];
		_ChildControl = _display displayCtrl 126;
		_ChildControl  ctrlSetTooltip format ["Cost: %1 €",server getVariable (SDKMedic select 0)];
		_ChildControl = _display displayCtrl 107;
		_ChildControl  ctrlSetTooltip format ["Cost: %1 €",server getVariable (SDKSL select 0)];
		_ChildControl = _display displayCtrl 108;
		_ChildControl  ctrlSetTooltip format ["Cost: %1 €",(server getVariable staticCrewTeamPlayer) + ([SDKMortar] call A3A_fnc_vehiclePrice)];
		_ChildControl = _display displayCtrl 109;
		_ChildControl  ctrlSetTooltip format ["Cost: %1 €",server getVariable (SDKGL select 0)];
		_ChildControl = _display displayCtrl 110;
		_ChildControl  ctrlSetTooltip format ["Cost: %1 €",server getVariable (SDKSniper select 0)];
		_ChildControl = _display displayCtrl 111;
		_ChildControl  ctrlSetTooltip format ["Cost: %1 €",server getVariable (SDKATman select 0)];
		};
	};
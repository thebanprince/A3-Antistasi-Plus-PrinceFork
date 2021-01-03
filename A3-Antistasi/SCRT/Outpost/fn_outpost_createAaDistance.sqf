if (!isServer and hasInterface) exitWith {};

private _markerX = _this select 0;
private _positionX = getMarkerPos _markerX;
private _garrison = garrison getVariable [_markerX, []];

private _props = [];

if (isNil "_garrison") then {//this is for backward compatibility, remove after v12
    _garrison = [staticCrewTeamPlayer];
    {
        if (random 20 <= skillFIA) then {
            _garrison pushBack (_x select 1)
        } else {
            _garrison pushBack (_x select 0)
        };
    } forEach [SDKSL,SDKMG,SDKGL,SDKMil,SDKMil];
    garrison setVariable [_markerX,_garrison,true];
};

{
    private _relativePosition = [_positionX, 4, _x] call BIS_Fnc_relPos;
    private _sandbag = createVehicle ["Land_BagFence_Round_F", _relativePosition, [], 0, "CAN_COLLIDE"];
    _sandbag setDir ([_sandbag, _positionX] call BIS_fnc_dirTo);
    _sandbag setVectorUp surfaceNormal position _sandbag;
    _props pushBack _sandbag;
} forEach [0, 90, 180, 270];

sleep 2;

_veh = staticAAteamPlayer createVehicle _positionX;
_veh lock 3;
[_veh, teamPlayer] call A3A_fnc_AIVEHinit;

sleep 1;
_groupX = [_positionX, teamPlayer, _garrison,true,false] call A3A_fnc_spawnGroup;
{
    [_x,_markerX] spawn A3A_fnc_FIAinitBases; 
    if (typeOf _x == staticCrewTeamPlayer) then {
        _x moveInGunner _veh;
        sleep 2;
    };
} forEach units _groupX;



waitUntil {
	sleep 1; 
	((spawner getVariable _markerX == 2)) or 
	({alive _x} count units _groupX == 0) or (!(_markerX in aapostsFIA))
};

if ({alive _x} count units _groupX == 0) then {
	aapostsFIA = aapostsFIA - [_markerX]; publicVariable "aapostsFIA";
	markersX = markersX - [_markerX]; publicVariable "markersX";
	sidesX setVariable [_markerX,nil,true];
	_nul = [5,-5,_positionX] remoteExec ["A3A_fnc_citySupportChange",2];
	deleteMarker _markerX;
	["TaskFailed", ["", "AA Emplacement Lost"]] remoteExec ["BIS_fnc_showNotification", 0];
};

waitUntil {sleep 1; (spawner getVariable _markerX == 2) or (!(_markerX in aapostsFIA))};

if (!isNull _veh) then { 
    deleteVehicle _veh;
};

{ 
    deleteVehicle _x 
} forEach units _groupX;
deleteGroup _groupX;

{
	deleteVehicle _x;
} forEach _props;
private _position = _this select 0;


private _isRoad = isOnRoad _position;
if !(_isRoad) exitWith {
    ["Roadblock", "Roadblock should be on road."] call SCRT_fnc_misc_showDeniedActionHint;
};

//calculating cost and manipulating rebel resources
private _costs = 1000; //car with mg
private _hr = 1; //static gunner
private _typeGroup = groupsSDKSquad;
private _typeVeh = vehSDKTruck;


{
    _costs = _costs + (server getVariable (_x select 0)); 
    _hr = _hr +1;
} forEach _typeGroup;

private _resourcesFIA = server getVariable "resourcesFIA";
private _hrFIA = server getVariable "hr";

if ((_resourcesFIA < _costs) or (_hrFIA < _hr)) exitWith {
    ["Roadblock", format ["You have no resources to build this Roadblock <br/><br/> %1 HR and %2 € needed",_hr,_costs]] call SCRT_fnc_misc_showDeniedActionHint;
};

[-_hr,-_costs] remoteExec ["A3A_fnc_resourcesFIA",2];

private _textX = format ["%1 Roadblock", nameTeamPlayer];
private _tsk = "";

private _marker = createMarker [format ["FIARoadblock%1", random 1000], _position];
_marker setMarkerShape "ICON";

//creating task
private _timeLimit = 90 * settingsTimeMultiplier;
private _dateLimit = [date select 0, date select 1, date select 2, date select 3, (date select 4) + _timeLimit];
private _dateLimitNum = dateToNumber _dateLimit;

[[teamPlayer,civilian],"outpostTask",["We are sending a team to establish a roadblock. Use HC to send the team to their destination","Post \ Roadblock Deploy",_marker],_position,false,0,true,"Move",true] call BIS_fnc_taskCreate;
_formatX = [];
{
    if (random 20 <= skillFIA) then {
        _formatX pushBack (_x select 1)
    } else {
        _formatX pushBack (_x select 0)
    };
} forEach _typeGroup;

_groupX = [getMarkerPos respawnTeamPlayer, teamPlayer, _formatX] call A3A_fnc_spawnGroup;
_groupX setGroupId ["Roadblock"];
_road = [getMarkerPos respawnTeamPlayer] call A3A_fnc_findNearestGoodRoad;
_pos = position _road findEmptyPosition [1,30,"B_G_Van_01_transport_F"];
_truckX = _typeVeh createVehicle _pos;
_groupX addVehicle _truckX;
{
    [_x] call A3A_fnc_FIAinit
} forEach units _groupX;
leader _groupX setBehaviour "SAFE";
(units _groupX) orderGetIn true;
theBoss hcSetGroup [_groupX];

waitUntil {sleep 1; ({alive _x} count units _groupX == 0) or ({(alive _x) and (_x distance _positionTel < 10)} count units _groupX > 0) or (dateToNumber date > _dateLimitNum)};

if ({(alive _x) and (_x distance _positionTel < 10)} count units _groupX > 0) then {
	if (isPlayer leader _groupX) then {
		_owner = (leader _groupX) getVariable ["owner",leader _groupX];
		(leader _groupX) remoteExec ["removeAllActions",leader _groupX];
		_owner remoteExec ["selectPlayer",leader _groupX];
		(leader _groupX) setVariable ["owner",_owner,true];
		{[_x] joinsilent group _owner} forEach units group _owner;
		[group _owner, _owner] remoteExec ["selectLeader", _owner];
		"" remoteExec ["hint",_owner];
		waitUntil {!(isPlayer leader _groupX)};
	};
	roadblocksFIA = roadblocksFIA + [_marker]; publicVariable "roadblocksFIA";
	sidesX setVariable [_marker,teamPlayer,true];
	markersX = markersX + [_marker];
	publicVariable "markersX";
	spawner setVariable [_marker,2,true];
	["outpostTask",["We are sending a team to establish a Roadblock. Use HC to send the team to their destination","Post \ Roadblock Deploy",_marker],_positionTel,"SUCCEEDED"] call A3A_fnc_taskUpdate;
	_nul = [-5,5,_positionTel] remoteExec ["A3A_fnc_citySupportChange",2];
	_marker setMarkerType "n_recon";
	_marker setMarkerColor colorTeamPlayer;
	_marker setMarkerText _textX;
    _garrison = [staticCrewTeamPlayer];
    {
        if (random 20 <= skillFIA) then {
            _garrison pushBack (_x select 1)
        } else {
            _garrison pushBack (_x select 0)
        };
    } forEach _typeGroup;
    garrison setVariable [_marker,_garrison,true];
} else {
    ["outpostTask",["We are sending a team to establish a Roadblock. Use HC to send the team to their destination","Post \ Roadblock Deploy",_marker],_positionTel,"FAILED"] call A3A_fnc_taskUpdate;
    sleep 3;
    deleteMarker _marker;
};

theBoss hcRemoveGroup _groupX;
{
    deleteVehicle _x
} forEach units _groupX;
deleteVehicle _truckX;
deleteGroup _groupX;
sleep 15;

_nul = [0,"outpostTask"] spawn A3A_fnc_deleteTask;
params ["_flagX", "_playerX"];

private _filename = "fn_mrkWIN";
private _revealX = [];
private _pos = getPos _flagX;
private _markerX = [markersX,_pos] call BIS_fnc_nearestPosition;
private _sideX = sidesX getVariable [_markerX,sideUnknown];

if (_sideX == teamPlayer) exitWith {};

private _positionX = getMarkerPos _markerX;
private _size = [_markerX] call A3A_fnc_sizeMarker;

if ((!isNull _playerX) and (captive _playerX)) exitWith {["Capture", "You cannot Capture the Flag while Undercover"] call A3A_fnc_customHint;};
if ((_markerX in airportsX) and (tierWar < 3)) exitWith {["Capture", "You cannot capture Airports until you reach War Level 3"] call A3A_fnc_customHint;};
if ((_markerX in milbases) and (tierWar < 3)) exitWith {["Capture", "You cannot capture Military Bases until you reach War Level 3"] call A3A_fnc_customHint;};

//Check if the flag is locked
if(_flagX getVariable ["isGettingCaptured", false]) exitWith
{
	["Capture", "This flag pole is locked, try again in 30 seconds!"] call A3A_fnc_customHint;
};

//Lock the flag
_flagX setVariable ["isGettingCaptured", true, true];

//Unlock the flag after 30 seconds
_flagX spawn
{
	sleep 30;
	_this setVariable ["isGettingCaptured", nil, true];
};

if (!isNull _playerX) then
{
	[2, format ["Flag capture at %1 initiated by %2", _markerX, str _playerX], _filename, true] call A3A_fnc_log;
	if (_size > 300) then
	{
		_size = 300
	};
	{
		if (((side _x == Occupants) or (side _x == Invaders)) and ([_x,_markerX] call A3A_fnc_canConquer)) then
		{
			_revealX pushBack _x
		};
	} forEach allUnits;
	if (player == _playerX) then
	{
		if (isDiscordRichPresenceActive) then {
			private _locationName = [_markerX] call A3A_fnc_localizar;
			[["UpdateState", format ["Captures %1", _locationName]]] call SCRT_fnc_misc_updateRichPresence;
		};
		_playerX playMove "MountSide";
		sleep 8;
		_playerX playMove "";
		{
			player reveal _x
		} forEach _revealX;
	};
};

if ((count _revealX) > 2*({([_x,_markerX] call A3A_fnc_canConquer) and (side _x == teamPlayer)} count allUnits)) exitWith {
	[3, format ["Markers left to be conquered: %1 ", _revealX], _filename, true] call A3A_fnc_log;
	[2, format ["Flag capture by %1 abandoned due to outnumbering", str _playerX], _filename, true] call A3A_fnc_log;
	["Capture", "The enemy still outnumber us, check the map and clear the rest of the area"] call A3A_fnc_customHint;
};

{
	if (isPlayer _x) then
	{
		[5,_x] remoteExec ["A3A_fnc_playerScoreAdd",_x];
		if (captive _x) then
		{
			[_x,false] remoteExec ["setCaptive",0,_x];
			_x setCaptive false;
		};
	}
} forEach ([_size,0,_positionX,teamPlayer] call A3A_fnc_distanceUnits);

[] call SCRT_fnc_misc_updateRichPresence;

[2, format ["Flag capture by %1 rewarded", str _playerX], _filename, true] call A3A_fnc_log;
[teamPlayer,_markerX] remoteExec ["A3A_fnc_markerChange",2];
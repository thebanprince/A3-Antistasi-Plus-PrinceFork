params ["_road"];

if (isNull _road) exitWith {private _direction = random 360; _direction};

private _roadConnectedTo = [];
_roadConnectedTo = roadsConnectedTo _road;

if (count _roadConnectedTo == 0) exitWith {private _direction = random 360; _direction};

private _connectedRoad = _roadConnectedTo select 0;
private _direction = [_road, _connectedRoad] call BIS_fnc_DirTo;

_direction;
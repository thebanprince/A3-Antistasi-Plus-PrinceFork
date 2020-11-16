systemChat "not implemented";

// private _outpostPosition = _this select 0;

// if (count outpostsFIA < 1) exitWith {
// 	["Outposts", "No Posts or Roadblocks deployed to delete"] call A3A_fnc_customHint;
// };
// if ({(alive _x) and (!captive _x) and ((side _x == Occupants) or (side _x == Invaders)) and (_x distance _outpostPosition < 500)} count allUnits > 0) exitWith {
// 	["Outposts", "You cannot delete a Post while enemies are near it"] call A3A_fnc_customHint;
// };

// private _mrk = [outpostsFIA,_outpostPosition] call BIS_fnc_nearestPosition;
// private _pos = getMarkerPos _mrk;

// if (_outpostPosition distance _pos > 10) exitWith {
//     ["Outposts/Roadblocks", "No post nearby"] call A3A_fnc_customHint;
// };

// [_actionType, _outpostPosition] remoteExec ["A3A_fnc_createOutpostsFIA", 2];
//TODO: remove garrison?
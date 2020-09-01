//	Author: Socrates
// 
//	Description:
//	Finds all near players.
//
//	Returns:
//	Array of players in given radius.
//
// 	How to use: 
// 	[50, _vehicle, teamPlayer] call SCRT_fn_common_getNearPlayers;
//


params ["_distance", "_center", "_side"];

_result = [];

_allPlayers = call BIS_fnc_listPlayers;

{
    if(side _x == _side && {_x distance2D _center <= _distance}) then {
        _result pushBack _x;
    };
} forEach (call BIS_fnc_listPlayers);

_result
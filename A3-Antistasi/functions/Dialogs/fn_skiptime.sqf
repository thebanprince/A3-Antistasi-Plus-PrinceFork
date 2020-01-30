if (player!= theBoss) exitWith {hint localize "STR_antistasi_dialogs_skiptime_hint_1"};
_presente = false;

{
if ((side _x == Occupants) or (side _x == Invaders)) then
	{
	if ([500,1,_x,teamPlayer] call A3A_fnc_distanceUnits) then {_presente = true};
	};
} forEach allUnits;
if (_presente) exitWith {hint localize "STR_antistasi_dialogs_skiptime_hint_2"};
if (["rebelAttack"] call BIS_fnc_taskExists) exitWith {hint localize "STR_antistasi_dialogs_skiptime_hint_3"};
if (["invaderPunish"] call BIS_fnc_taskExists) exitWith {hint localize "STR_antistasi_dialogs_skiptime_hint_4"};
if (["DEF_HQ"] call BIS_fnc_taskExists) exitWith {hint localize "STR_antistasi_dialogs_skiptime_hint_5"};

_checkX = false;
_posHQ = getMarkerPos respawnTeamPlayer;
{
if ((_x distance _posHQ > 100) and (side _x == teamPlayer)) then {_checkX = true};
} forEach (allPlayers - (entities "HeadlessClient_F"));

if (_checkX) exitWith {hint localize "STR_antistasi_dialogs_skiptime_hint_6"};

remoteExec ["A3A_fnc_resourcecheckSkipTime", 0];

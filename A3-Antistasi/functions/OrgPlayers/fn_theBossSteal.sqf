_resourcesFIA = server getVariable "resourcesFIA";
if (_resourcesFIA < 100) exitWith {["Money Grab", "FIA has not enough resources to grab"] call A3A_fnc_customHint;};
server setvariable ["resourcesFIA",_resourcesFIA - 1000, true];
[-2,theBoss] call A3A_fnc_playerScoreAdd;
[1000] call A3A_fnc_resourcesPlayer;

["Money Grab", format ["You grabbed 1000 € from the %1 Money Pool.<br/><br/>This will affect your prestige and status among %1 forces",nameTeamPlayer]] call A3A_fnc_customHint;

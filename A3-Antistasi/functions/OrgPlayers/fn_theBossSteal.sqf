#define MONEY_AMOUNT 500

_resourcesFIA = server getVariable "resourcesFIA";
if (_resourcesFIA < MONEY_AMOUNT) exitWith {["Money Grab", "FIA has not enough money to transfer."] call A3A_fnc_customHint;};
server setvariable ["resourcesFIA",_resourcesFIA - MONEY_AMOUNT, true];
[-2,theBoss] call A3A_fnc_playerScoreAdd;
[MONEY_AMOUNT] call A3A_fnc_resourcesPlayer;

["Money Grab", format ["You grabbed %1 € from the %2 Money Pool.<br/><br/>This will affect your prestige and status among %2 forces", str MONEY_AMOUNT, nameTeamPlayer]] call A3A_fnc_customHint;

if (!hasInterface) exitWith {};
private ["_textX","_display","_setText"];
disableSerialization;
if (isNull (uiNameSpace getVariable "H8erHUD")) exitWith {};
_display = uiNameSpace getVariable "H8erHUD";
if (isNil "_display") exitWith {};
waitUntil {sleep 0.5;!(isNil "theBoss")};
_setText = _display displayCtrl 1001;
_setText ctrlSetBackgroundColor [0,0,0,0];

private _player = player getVariable ["owner",player];		// different, if remote-controlling
private _ucovertxt = ["Off", "<t color='#1DA81D'>On</t>"] select ((captive _player) and !(_player getVariable ["incapacitated",false]));
private _rallytxt = ["Absent", "<t color='#1DA81D'>Established</t>"] select (!isNil "isRallyPointPlaced" && {isRallyPointPlaced});

if (_player != theBoss) then {
	private _nameC = if !(isNull theBoss) then {name theBoss} else {"None"};
	_textX = format ["<t size='0.67' shadow='2'>" + "Commander: %3 | Rank: %2 | HR: %1 | Your Money: %4 € | %8 Aggr: %5 | %9 Aggr: %6 | War Level: %7 | Undercover: %10 | Rally Point: %11</t>", server getVariable "hr", rank _player, _nameC, _player getVariable "moneyX",[aggressionLevelOccupants] call A3A_fnc_getAggroLevelString,[aggressionLevelInvaders] call A3A_fnc_getAggroLevelString,tierWar,nameOccupants,nameInvaders,_ucovertxt, _rallytxt];
} else {
	if ([_player] call A3A_fnc_isMember) then {
		_textX = format ["<t size='0.67' shadow='2'>" + "Rank: %5 | HR: %1 | Your Money: %6 € | %10 Money: %2 € | %8 Aggr: %3 | %9 Aggr: %4 | War Level: %7 | Undercover: %11 | Rally Point: %12</t>", server getVariable "hr", server getVariable "resourcesFIA", [aggressionLevelOccupants] call A3A_fnc_getAggroLevelString,[aggressionLevelInvaders] call A3A_fnc_getAggroLevelString,rank _player, _player getVariable "moneyX",tierWar,nameOccupants,nameInvaders,nameTeamPlayer,_ucovertxt, _rallytxt];
	}
	else {
		_textX = format ["<t size='0.67' shadow='2'>" + "Rank: %1 | Your Money: %2 € | %3 Money: %4 € | %5 Aggr: %6 | %7 Aggr: %8 | War Level: %9 | Undercover: %10  | Rally Point: %11</t>",rank _player,_player getVariable "moneyX",nameTeamPlayer,server getVariable "resourcesFIA", nameOccupants, [aggressionLevelOccupants] call A3A_fnc_getAggroLevelString, nameInvaders,[aggressionLevelInvaders] call A3A_fnc_getAggroLevelString,tierWar,_ucovertxt, _rallytxt];
	};
};

_setText ctrlSetStructuredText (parseText format ["%1", _textX]);
_setText ctrlCommit 0;

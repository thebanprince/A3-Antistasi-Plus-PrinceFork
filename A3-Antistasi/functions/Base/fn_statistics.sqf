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

private _occAggr = ["", format ["| %1 Aggr: %2 |", nameOccupants, [aggressionLevelOccupants] call A3A_fnc_getAggroLevelString]] select (!isNil "areOccupantsDefeated" && {!areOccupantsDefeated});
private _occInv = ["", format ["| %1 Aggr: %2 |", nameInvaders, [aggressionLevelInvaders] call A3A_fnc_getAggroLevelString]] select (!isNil "areInvadersDefeated" && {!areInvadersDefeated});
private _finalAggrString = if (_occAggr == "" && {_occInv == ""}) then {"|"} else {
	if (_occAggr != "" && _occInv != "") then {
		_occAggr + " " + _occInv
	} else {
		_occAggr + _occInv
	};
};
//TODO: убирать скобку в зависимости от того, кто остался на поле боя

if (_player != theBoss) then {
	private _nameC = if !(isNull theBoss) then {name theBoss} else {"None"};
	_textX = format ["<t size='0.67' shadow='2'>" + "Commander: %3 | %2 | HR: %1 | Money: %4 € %5 WL: %6 | Undercover: %7 | Rally Point: %8</t>", server getVariable "hr", rank _player, _nameC, _player getVariable "moneyX", _finalAggrString, tierWar, _ucovertxt, _rallytxt];
} else {
	if (_player call A3A_fnc_isMember) then {
		_textX = format ["<t size='0.67' shadow='2'>" + "%1 | HR: %2 | %3 Money: %4 € | Money: %5 € %6 WL: %7 | Undercover: %8 | Rally Point: %9</t>", rank _player, server getVariable "hr", nameTeamPlayer, server getVariable "resourcesFIA", _player getVariable "moneyX", _finalAggrString, tierWar, _ucovertxt, _rallytxt];
	}
	else {
		_textX = format ["<t size='0.67' shadow='2'>" + "%1 | Money: %2 € | %3 Money: %4 € %5 WL: %6 | Undercover: %7  | Rally Point: %8</t>",rank _player,_player getVariable "moneyX",nameTeamPlayer,server getVariable "resourcesFIA", _finalAggrString, tierWar, _ucovertxt, _rallytxt];
	};
};

_setText ctrlSetStructuredText (parseText format ["%1", _textX]);
_setText ctrlCommit 0;

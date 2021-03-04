params ["_unit", "_player", "_actionID"];

/*  The action of interrogating a surrendered unit.
*   Params:
*       _unit : OBJECT : The unit which will be interrogated
*       _player : OBJECT : The unit which is interrogating
*       _unused : NOT USED
*       _actionID : NUMBER : The ID of the interrogate action
*
*   Returns:
*       Nothing
*/

//Removing action
[_unit, _actionID] remoteExec ["removeAction", [teamPlayer, civilian], _unit];

if (!alive _unit) exitWith {};
if (_unit getVariable ["interrogated", false]) exitWith {};
_unit setVariable ["interrogated", true, true];

_player globalChat localize "STR_interrogate_text";
private _chance = 0;
private _side = side (group _unit);
if (_side == Occupants) then
{
	_chance = 100 - aggressionOccupants;
}
else
{
	_chance = 100 - aggressionInvaders;
};

_chance = _chance + 10;

sleep 5;

if ((round (random 100)) < _chance) then {
    [position _unit, 50, 30, true] spawn SCRT_fnc_common_recon;
} else {
	_unit globalChat localize "STR_recruit_fail_text";
};

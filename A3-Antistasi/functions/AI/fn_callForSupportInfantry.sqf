params ["_group", "_supportTypes", "_target"];

/*  Simulates the call for support by a group by making the radioman a bit more dumb for a time

    Execution on: HC or Server

    Scope: Internal

    Params:
        _group: GROUP : The group which should call support
        _supportTypes: ARRAY of STRINGs : The types of support the group calls for
        _target: OBJECT : The target object the group wants support against

    Returns:
        Nothing
*/
private _fileName = "callForSupport";

if(side _group == teamPlayer) exitWith {
    [1, format ["Rebel group %1 managed to call callForSupport, not allowed for rebel groups", _group], _fileName] call A3A_fnc_log;
};

private _radiomanIndex = (units _group) findIf {(_x getVariable "unitType") in radioMen};

if (_radiomanIndex == -1) exitWith {
    [1, format [" %1 Group has no capability to call support, no radiomen in squad", _group], _fileName] call A3A_fnc_log;
};

private _radioMan = (units _group) select _radiomanIndex;

if((_group getVariable ["canCallSupportAt", -1]) > (dateToNumber date)) exitWith {};

//Block the group from calling support again
private _date = date;
_date set [4, (_date select 4) + 20];
private _dateNumber = dateToNumber _date;
_group setVariable ["canCallSupportAt", _dateNumber, true];

if !([_radioMan] call A3A_fnc_canFight) exitWith {};

[
    3,
    format ["Radioman of %1 (side %2) is starting to call for help against %3 with helps %4", _group, side _group, _target, _supportTypes],
    _fileName
] call A3A_fnc_log;

private _oldSkill = skill _radioMan;
_radioMan setSkill (_oldSkill - 0.2);

private _timeToCallSupport = time + 30 + random 30;
waitUntil {time > _timeToCallSupport};

_radioMan setSkill _oldSkill;

if([_radioMan] call A3A_fnc_canFight) then
{
    private _revealed = [getPos _radioMan, side _group] call A3A_fnc_calculateSupportCallReveal;
    //Starting the support
    [3, format ["%1 managed to call help against %2, reveal value is %3", _group, _target, _revealed], _fileName] call A3A_fnc_log;
    [_target, _group knowsAbout _target, _supportTypes, side _group, _revealed] remoteExec ["A3A_fnc_sendSupport", 2];
}
else
{
    [3, format ["%1 got no help as the radioman is dead or down", _group], _fileName] call A3A_fnc_log;
    _group setVariable ["canCallSupportAt", -1, true];
};

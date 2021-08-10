/*
Author: Håkon
    Shows/hides general information bar at the top of the screen depending on the registered system.

Arguments:
    0. <STRING> Name of system that requested information bar visibility change
    1. <BOOLEAN> Desired visibility state of information bar

Return Value:
    <NIL>

Scope: Client
Environment: Unscheduled
Public: No
Dependencies:
    <DISPLAY> H8erHUD
    <HASHMAP> A3A_InfoBarRegistre

Example:
[] call A3A_fnc_updateInfoBarShown;
*/

if (isNil "A3A_InfoBarRegistre") exitWith {};
private _state = if (count A3A_InfoBarRegistre isEqualTo 0) then {true} else {false};

private _display = uiNameSpace getVariable "H8erHUD";
private _control = _display displayCtrl 1001;
_control ctrlShow _state;
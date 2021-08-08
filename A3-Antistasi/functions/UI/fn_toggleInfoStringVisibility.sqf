/*
Author: Socrates
    Shows/hides general information string at the top of the screen.

Arguments:
    -

Return Value:
    <NIL>

Scope: Client
Environment: Unscheduled
Public: No
Dependencies:
    <DISPLAY> H8erHUD

Example:
[] call A3A_fnc_toggleInfoStringVisibility;
*/

if (isNull (uiNameSpace getVariable "H8erHUD")) exitWith {};

private _display = uiNameSpace getVariable "H8erHUD";
private _stringControl = _display displayCtrl 1001; //id of structuredText defined in dialogs.hpp

_stringControl ctrlShow (!(ctrlShown _stringControl));

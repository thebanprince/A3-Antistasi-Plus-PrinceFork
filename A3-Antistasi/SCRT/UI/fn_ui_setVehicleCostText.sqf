params ["_displayId"];

disableSerialization;

private _display = findDisplay _displayId;

if (str (_display) == "no display") exitWith {};

private _controlIds = [_displayId] call SCRT_fnc_ui_getMarketLookup;
private _textBoxId = _controlIds select 0;
private _comboboxId = _controlIds select 1;

private _costTextBox = _display displayCtrl _textBoxId;
private _comboBox = _display displayCtrl _comboboxId;
private _index = lbCurSel _comboBox;
private _vehicleType = _comboBox lbData _index;

_costTextBox ctrlSetText format ["Cost: %1€", [_vehicleType] call A3A_fnc_vehiclePrice];
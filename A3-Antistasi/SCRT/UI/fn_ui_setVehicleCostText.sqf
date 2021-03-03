disableSerialization;

private _display = findDisplay 90000;

if (str (_display) == "no display") exitWith {};

private _costTextBox = _display displayCtrl 1010;
private _comboBox = _display displayCtrl 1005;
private _index = lbCurSel _comboBox;
private _vehicleType = _comboBox lbData _index;

private _price = [_vehicleType] call A3A_fnc_vehiclePrice;
_costTextBox ctrlSetText format ["Cost: %1€", _price];
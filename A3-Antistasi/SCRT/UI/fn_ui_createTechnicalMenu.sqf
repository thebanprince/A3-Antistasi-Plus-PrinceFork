disableSerialization;

createDialog "technicalsMenu";

private _display = findDisplay 100000;
if (str (_display) == "no display") exitWith {};

private _comboBox = _display displayCtrl 2005;

{
    private _name = getText (configFile >> "CfgVehicles" >> _x >> "displayName");
    _comboBox lbAdd _name;
    _comboBox lbSetData [_forEachIndex, _x];
} forEach [techicalAa, technicalBtr, technicalNar, technicalJackal, technicalArmoredBtr, technicalArmoredAa, technicalArmoredSpg, technicalArmoredMg];

_comboBox lbSetCurSel 0;
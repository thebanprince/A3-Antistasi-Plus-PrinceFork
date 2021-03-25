disableSerialization;

createDialog "vehicleBlackMarketMenu";

private _display = findDisplay 90000;

if (str (_display) == "no display") exitWith {};

private _comboBox = _display displayCtrl 1015;

_comboBox lbAdd "UAVs";
_comboBox lbSetData [0, "UAV"];

_comboBox lbAdd "Anti-Air Vehicles";
_comboBox lbSetData [1, "AA"];

_comboBox lbAdd "MRAPs, Armored Wheeled Vehicles";
_comboBox lbSetData [2, "MRAP"];

_comboBox lbAdd "Wheeled APCs";
_comboBox lbSetData [3, "WHEELED_APC"];

_comboBox lbAdd "Tracked APCs";
_comboBox lbSetData [4, "TRACKED_APC"];

_comboBox lbAdd "Helicopters";
_comboBox lbSetData [5, "HELI"];

_comboBox lbAdd "Tanks";
_comboBox lbSetData [6, "TANK"];

_comboBox lbAdd "Planes";
_comboBox lbSetData [7, "PLANE"];

if (hasCup) then {
    _comboBox lbAdd "Light Utility Vehicles";
    _comboBox lbSetData [8, "LUV"];

    _comboBox lbAdd "ATGM Carriers";
    _comboBox lbSetData [9, "ATGM"];

    _comboBox lbAdd "MANPADS Carriers";
    _comboBox lbSetData [10, "MANPADS"];

    _comboBox lbAdd "Misc";
    _comboBox lbSetData [11, "MISC"];
};

_comboBox lbSetCurSel 0;
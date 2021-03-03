disableSerialization;

private _display = findDisplay 80000;

if (str (_display) == "no display") exitWith {};

private _costTextBox = _display displayCtrl 510;
private _comboBox = _display displayCtrl 505;
private _index = lbCurSel _comboBox;
private _buildType = _comboBox lbData _index;

switch (_buildType) do {
    case ("TRENCH"): {
        _costTextBox ctrlSetText "Cost: 125€";
    };
    case ("OBSTACLE"): {
        _costTextBox ctrlSetText "Cost: 75€";
    };
    case ("SANDBAG_BUNKER"): {
        _costTextBox ctrlSetText "Cost: 500€";
    };
    case ("CONCRETE_BUNKER"): {
        _costTextBox ctrlSetText "Cost: 800€";
    };
    case ("MISC"): {
        _costTextBox ctrlSetText "Cost: 10€";
    };
    default {
        [2,"Bad build type.", "fn_setBuildTypeCostText"] call A3A_fnc_log;
    };
};
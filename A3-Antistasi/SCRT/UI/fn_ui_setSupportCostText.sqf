disableSerialization;

private _display = findDisplay 60000;

if (str (_display) == "no display") exitWith {};

private _costTextBox = _display displayCtrl 1751;
private _comboBox = _display displayCtrl 1750;
private _index = lbCurSel _comboBox;
private _supportType =  lbData [1750, _index];

supportType = _supportType;

switch (supportType) do {
    case ("SUPPLY");
    case ("SMOKE");
    case ("FLARE");
    case ("RECON"): {
        _costTextBox ctrlSetText "Costs 1 Support";
    };
    case ("VEH_AIRDROP"): {
            _costTextBox ctrlSetText "Costs 1 Support and 200€";
    };
    case ("STATIC_MG_AIRDROP"): {
        _costTextBox ctrlSetText "Costs 1 Support and 1000€";
    };
    case ("NAPALM");
    case ("HE");
    case ("CLUSTER");
    case ("CHEMICAL"): {
        _costTextBox ctrlSetText "Costs 1 Airstrike";
    };
    default {
        _costTextBox ctrlSetText "Costs 1 Support";
    };
};
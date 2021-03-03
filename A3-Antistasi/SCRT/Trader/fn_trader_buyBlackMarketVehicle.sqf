private _fileName = "trader_pickFromVehiclePool";

if (!(isNil "placingVehicle") && {placingVehicle}) exitWith {
    ["Vehicle Market", "Unable to buy vehicle, you are already placing something."] call SCRT_fnc_misc_showDeniedActionHint;
};

if (player != player getVariable ["owner",player]) exitWith {
    ["Vehicle Market", "You cannot buy vehicles while you are controlling AI."] call SCRT_fnc_misc_showDeniedActionHint;
};

private _airports = { sidesX getVariable [_x, sideUnknown] == teamPlayer } count airportsX;
private _display = findDisplay 90000;
if (str (_display) == "no display") exitWith {};

private _comboBox = _display displayCtrl 1005;
private _index = lbCurSel _comboBox;
private _vehicleType = _comboBox lbData _index;
closeDialog 0;

if((_vehicleType isKindOf "Plane" || {_vehicleType isKindOf "Helicopter"}) && {_airports < 1}) exitWith {
    ["Vehicle Market", "You cannot buy helicopters or planes without captured airports."] call SCRT_fnc_misc_showDeniedActionHint;
};

vehiclePurchase_cost = [_vehicleType] call A3A_fnc_vehiclePrice;

private _resourcesFIA = player getVariable "moneyX";

if (_resourcesFIA < vehiclePurchase_cost) exitWith {
    ["Vehicle Market", format ["You do not have enough money for this vehicle: %1 € required",vehiclePurchase_cost]] call SCRT_fnc_misc_showDeniedActionHint;
};

private _extraMessage = format  ["Price: %1€<br/>", vehiclePurchase_cost];

[_vehicleType, "BUYVEHICLEMARKET", _extraMessage] call A3A_fnc_vehPlacementBegin;
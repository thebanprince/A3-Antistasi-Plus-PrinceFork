
#define COST 500

private _fileName = "loot_createLootCrate";
private _boxClass = "Box_Syndicate_Ammo_F";

private _money = player getVariable "moneyX";

if (_money < COST) exitWith {
    ["Assign Failed", format ["You have not enough money to make loot crate. %1 € needed.", str COST]] call SCRT_fnc_misc_showDeniedActionHint;
};

vehiclePurchase_cost = COST;

private _extraMessage = format  ["Select loot crate position.<br/>Price: %1€<br/>", vehiclePurchase_cost];

[_boxClass, "CREATELOOTCRATE", _extraMessage] call A3A_fnc_vehPlacementBegin;
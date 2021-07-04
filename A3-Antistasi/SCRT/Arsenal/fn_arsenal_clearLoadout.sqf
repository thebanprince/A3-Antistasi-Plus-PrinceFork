private _loadoutKey = _this;

if (isNil "_loadoutKey" || {_loadoutKey == ""}) exitWith {};

private _loadout = rebelLoadouts get _loadoutKey;
private _loadoutUpper = toUpper _loadoutKey; 

if (isNil "_loadout") exitWith {
    ["Rebel Loadout", format ["No custom loadout for %1 has been found.", _loadoutUpper], "WARNING"] call SCRT_fnc_ui_showDynamicTextMessage;
};

rebelLoadouts deleteAt _loadoutKey;

["Rebel Loadout", format ["Custom loadout for %1 has been cleared, units of this class will use randomized loadout.", _loadoutUpper], "SUCCESS"] call SCRT_fnc_ui_showDynamicTextMessage;
private _loadoutKey = _this;

if (isNil "_loadoutKey" || {_loadoutKey == ""}) exitWith {};

private _loadout = rebelLoadouts get _loadoutKey;
private _loadoutName = _loadoutKey call SCRT_fnc_misc_getLoadoutName;

if (isNil "_loadout") exitWith {
    ["Rebel Loadout", format ["No custom loadout for %1 has been found.", _loadoutName], "WARNING"] call SCRT_fnc_ui_showDynamicTextMessage;
};

rebelLoadouts deleteAt _loadoutKey;
publicVariable "rebelLoadouts";

["Rebel Loadout", format ["Custom loadout for %1 has been cleared, units of this class will use randomized loadout.", _loadoutName], "SUCCESS"] call SCRT_fnc_ui_showDynamicTextMessage;
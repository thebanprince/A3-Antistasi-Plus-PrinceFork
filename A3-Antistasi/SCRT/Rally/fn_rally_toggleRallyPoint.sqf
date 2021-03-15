private _fileName = "loot_createLootCrate";

private _cost = [rallyPointRoot] call A3A_fnc_vehiclePrice;

if (!isNil "isRallyPointPlaced" && {isRallyPointPlaced}) then {
    isRallyPointPlaced = false;
    publicVariable "isRallyPointPlaced";

    {
        deleteVehicle _x;
    } forEach rallyProps;

    rallyProps = nil;
    publicVariable "rallyProps";

    [0, round (_cost/1.3)] remoteExec ["A3A_fnc_resourcesFIA",2];

    deleteMarker rallyPointMarker;
    deleteMarker "RallyPointMarker";
    publicVariable "rallyPointMarker";

    private _announceText = format ["<t size='0.6'><t size='0.6' color='#008000'>Rally point </t> has been abolished.</t>"];
    [petros, "support", _announceText] remoteExec ["A3A_fnc_commsMP", 0];
} else {
    private _resourcesFIA = server getVariable "resourcesFIA";    

    if (_resourcesFIA < _cost) exitWith {
        ["Rally Point", format ["Not enough money to place rally point, need %1 to proceed.", str _cost]] call SCRT_fnc_misc_showDeniedActionHint;
    };

    if ([player, 50] call A3A_fnc_enemyNearCheck) exitWith {
        ["Rally Point", "You cannot establish rally point when enemies are surrounding you."] call SCRT_fnc_misc_showDeniedActionHint;
    };

    if (player != theBoss) exitWith {
        ["Rally Point", "Only commander can establish rally points."] call SCRT_fnc_misc_showDeniedActionHint;
    };

    vehiclePurchase_cost = _cost;

    private _extraMessage = format  ["Select rally point position.<br/>Price: %1€<br/>", vehiclePurchase_cost];
    [rallyPointRoot, "CREATERALLYPOINT", _extraMessage, "Rally Point"] call A3A_fnc_vehPlacementBegin;
};
private _fileName = "loot_createLootCrate";

#define COST 750

if (!isNil "isRallyPointPlaced" && {isRallyPointPlaced}) then {
    isRallyPointPlaced = false;
    publicVariable "isRallyPointPlaced";

    {
        deleteVehicle _x;
    } forEach rallyProps;

    rallyProps = nil;
    publicVariable "rallyProps";

    [0, COST/2] remoteExec ["A3A_fnc_resourcesFIA",2];

    deleteMarker rallyPointMarker;
    deleteMarker "RallyPointMarker";
    publicVariable "rallyPointMarker";

    private _announceText = format ["<t size='0.6'><t size='0.6' color='#008000'>Rally point </t> has been abolished.</t>"];
    [petros, "support", _announceText] remoteExec ["A3A_fnc_commsMP", 0];
} else {
    private _resourcesFIA = server getVariable "resourcesFIA";    

    if (_resourcesFIA < COST) exitWith {
        ["Rally Point", format ["Not enough money to place rally point, need %1 to proceed.", str COST]] call SCRT_fnc_misc_showDeniedActionHint;
    };

    vehiclePurchase_cost = COST;

    private _extraMessage = format  ["Select rally point position.<br/>Price: %1€<br/>", vehiclePurchase_cost];
    ["B_RadioBag_01_wdl_F", "CREATERALLYPOINT", _extraMessage, "Rally Point"] call A3A_fnc_vehPlacementBegin;
};
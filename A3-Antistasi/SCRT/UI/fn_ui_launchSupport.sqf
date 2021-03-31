if(!isNil "supportCooldown" && {supportCooldown}) exitWith {
    [
		"FAIL",
		"Support",  
		parseText "Support regiment are overwhelmed with support requests, wait 60 seconds.", 
		30
	] spawn SCRT_fnc_ui_showMessage;
};

if (supportType in ["NAPALM", "HE", "CLUSTER", "CHEMICAL"] && bombRuns < 1) exitWith {
    [
		"FAIL",
		"Support",  
		parseText "You have not enough Airstrikes to make this request.", 
		30
	] spawn SCRT_fnc_ui_showMessage;
};

if (supportType in ["SUPPLY", "SMOKE", "FLARE", "VEH_AIRDROP", "STATIC_MG_AIRDROP", "RECON", "PARADROP"] && supportPoints < 1) exitWith {
    [
		"FAIL",
		"Support",  
		parseText "You have not enough Support to make this request.", 
		30
	] spawn SCRT_fnc_ui_showMessage;
};

private _airports = { sidesX getVariable [_x, sideUnknown] == teamPlayer } count airportsX;
if (supportType in ["NAPALM", "HE", "CLUSTER", "CHEMICAL", "VEH_AIRDROP", "STATIC_MG_AIRDROP", "SUPPLY", "RECON", "PARADROP"] && _airports < 1) exitWith {
    [
		"FAIL",
		"Support",  
		parseText "You need a at least 1 captured airport to make this request.", 
		30
	] spawn SCRT_fnc_ui_showMessage;
};

private _resourcesFIA = server getVariable "resourcesFIA";
if (supportType == "STATIC_MG_AIRDROP" && {_resourcesFIA < 1000}) exitWith {
    [
		"FAIL",
		"Support",  
		parseText "HQ needs to have at least 1000€ to make this support request.", 
		30
	] spawn SCRT_fnc_ui_showMessage;
};

if (supportType == "PARADROP" && {_resourcesFIA < 500}) exitWith {
    [
		"FAIL",
		"Support",  
		parseText "HQ needs to have at least 1000€ to make this support request.", 
		30
	] spawn SCRT_fnc_ui_showMessage;
};

if (supportType == "VEH_AIRDROP" && {_resourcesFIA < 200}) exitWith {
    [
		"FAIL",
		"Support",  
		parseText "HQ needs to have at 200€ to make this support request.", 
		30
	] spawn SCRT_fnc_ui_showMessage;
};

if (!([player] call A3A_fnc_hasRadio)) exitWith {
    [
		"FAIL",
		"Support",  
		parseText "You need a radio in your inventory to be able to give orders to other squads.", 
		30
	] spawn SCRT_fnc_ui_showMessage;
};

if (isNil "supportMarkerOrigin") exitWith {
    [
		"FAIL",
		"Support",  
		parseText "You need to specify destination for support.", 
		30
	] spawn SCRT_fnc_ui_showMessage;
};

if (!(supportType in ["SMOKE", "FLARE"]) && {isNil "supportMarkerDestination"}) exitWith {
    [
		"FAIL",
		"Support",  
		parseText "You need to specify second point for airplane to perform support action.", 
		30
	] spawn SCRT_fnc_ui_showMessage;
};

switch (supportType) do {
    case ("SUPPLY");
    case ("SMOKE");
    case ("FLARE");
    case ("RECON"): {
        supportPoints = supportPoints - 1;
        publicVariable "supportPoints";
    };
    case ("VEH_AIRDROP"): {
        supportPoints = supportPoints - 1;
        publicVariable "supportPoints";
        [0,-200] remoteExec ["A3A_fnc_resourcesFIA",2];
    };
    case ("STATIC_MG_AIRDROP"): {
        supportPoints = supportPoints - 1;
        publicVariable "supportPoints";
        [0,-1000] remoteExec ["A3A_fnc_resourcesFIA",2];
    };
    case ("PARADROP"): {
        supportPoints = supportPoints - 1;
        publicVariable "supportPoints";
        [0,-500] remoteExec ["A3A_fnc_resourcesFIA",2];
    };
    case ("NAPALM");
    case ("HE");
    case ("CLUSTER");
    case ("CHEMICAL"): {
        bombRuns = bombRuns - 1;
        publicVariable "bombRuns";
    };
};

[] spawn A3A_fnc_statistics;
[] call SCRT_fnc_ui_updateSupportMenu;

switch (true) do {
    case (supportType == "SMOKE"): {
        [] spawn SCRT_fnc_support_smokeBarrage;
    };
    case (supportType == "FLARE"): {
        [] spawn SCRT_fnc_support_flareBarrage;
    };
    case (supportType == "RECON"): {
        [] spawn SCRT_fnc_support_planeReconRun;
    };
    case (supportType == "PARADROP"): {
        [] spawn SCRT_fnc_support_planeParadropRun;
    };
    case (supportType == "VEH_AIRDROP");
    case (supportType == "STATIC_MG_AIRDROP");
    case (supportType == "SUPPLY");
    case (supportType in ["HE", "CLUSTER", "CHEMICAL", "NAPALM"]): {
        [] spawn SCRT_fnc_support_planePayloadedRun;
    };
};

supportCooldown = true;
publicVariable "supportCooldown";
isSupportMarkerPlacingAvailable = true;
publicVariable "isSupportMarkerPlacingAvailable";

[
    "SUCCESS",
    "Support",  
    parseText "Support has been successfully ordered.", 
    30
] spawn SCRT_fnc_ui_showMessage;

private _timeOut = time + 60;
waitUntil { sleep 1; (time > _timeOut) };

supportCooldown = false;
publicVariable "supportCooldown";
isSupportMarkerPlacingAvailable = false;
publicVariable "isSupportMarkerPlacingAvailable";

[] spawn SCRT_fnc_ui_clearSupport;
disableSerialization;

menuComplete = false;

private _hqMarkerPos = getMarkerPos "Synd_HQ";

if (theBoss distance2D _hqMarkerPos < 50) then {
	menuSliderArray = [
		["SUPPORT", 1140],
		["MANAGE GARRISONS", 2000],
		["HQ MANAGEMENT", 3000],
		["ENVIRONMENT", 4000],
		["GAME OPTIONS", 5000],
		["GAME INFO", 6000]
	];
} else {
	menuSliderArray = [
		["SUPPORT", 1140],
		["MANAGE GARRISONS", 2000]
	];

	[
		"INFO",
		"Commander Menu Options",  
		parseText "Some tabs can be accessible only at rebel HQ.", 
		10
	] spawn SCRT_fnc_ui_showMessage;
};

menuSliderCurrent = 0;

((findDisplay 60000) displayCtrl 1050) ctrlSetText "Commander Menu";
ctrlSetFocus ((findDisplay 60000) displayCtrl 1151);

supportType = "SMOKE";
outpostType = "WATCHPOST";
minefieldType = "APERSMine";

//Support Combobox 
lbAdd [1750, "Smoke Barrage"];
lbSetData [1750, 0, "SMOKE"];
lbAdd [1750, "Flare Barrage"];
lbSetData [1750, 1, "FLARE"];
lbAdd [1750, "Light Vehicle Airdrop"];
lbSetData [1750, 2, "VEH_AIRDROP"];
lbAdd [1750, "HMG Airdrop"];
lbSetData [1750, 3, "STATIC_MG_AIRDROP"];
lbAdd [1750, "Recon Plane Run"];
lbSetData [1750, 4, "RECON"];
lbAdd [1750, "Supply Crate Airdrop"];
lbSetData [1750, 5, "SUPPLY"];
lbAdd [1750, "HE Bomb Airstrike"];
lbSetData [1750, 6, "HE"];
lbAdd [1750, "Cluster Bomb Airstrike"];
lbSetData [1750, 7, "CLUSTER"];
lbAdd [1750, "Chemical Airstrike"];
lbSetData [1750, 8, "CHEMICAL"];

if (napalmEnabled) then { 
	lbAdd [1750, "Napalm Airstrike"];
	lbSetData [1750, 9, "NAPALM"];
};

lbSetCurSel [1750, 0];

//Create Outpost Combobox 
lbAdd [2750, "Watchpost"];
lbSetData [2750, 0, "WATCHPOST"];
lbAdd [2750, "Roadblock"];
lbSetData [2750, 1, "ROADBLOCK"];
lbAdd [2750, "AA Emplacement"];
lbSetData [2750, 2, "AA"];
lbAdd [2750, "AT Emplacement"];
lbSetData [2750, 3, "AT"];

lbSetCurSel [2750, 0];

//Minefield Combobox 
lbAdd [2758, "APERS Mines"];
lbSetData [2758, 0, "APERSMine"];
lbAdd [2758, "AT Mines"];
lbSetData [2758, 1, "ATMine"];

lbSetCurSel [2758, 0];

{	
	if (!(ctrlIDC _x in [1055, 1056, 6014])) then {
		((findDisplay 60000) displayCtrl (ctrlIDC _x)) ctrlSetFade 0;
	};

	((findDisplay 60000) displayCtrl (ctrlIDC _x)) ctrlCommit 0.3;	
} forEach (allControls findDisplay 60000);

["MAIN", 5100, false] call SCRT_fnc_ui_switchButton;
["MAIN", 5200, false] call SCRT_fnc_ui_switchButton;

// fog
sliderSetRange [4041, 0, 100];
sliderSetPosition [4041, 50];
((findDisplay 60000) displayCtrl 4041) ctrlSetText format ["Fog: %1", 50];
fogValue = nil;

// weather
sliderSetRange [4061, 0, 100];
sliderSetPosition [4061, 50];
((findDisplay 60000) displayCtrl 4061) ctrlSetText format ["Overcast: %1", 50];
overcastValue = nil;

// civ limit
sliderSetRange [5041, 1, 150];
sliderSetPosition [5041, civPerc];
((findDisplay 60000) displayCtrl 5040) ctrlSetText format ["Civ Limit per Client: %1", civPerc];

// max spawn distance
sliderSetRange [5061, 600, 2000];
sliderSetPosition [5061, distanceSPWN];
((findDisplay 60000) displayCtrl 5060) ctrlSetText format ["Maximum Spawn Distance: %1", distanceSPWN];

// AI Limiter
sliderSetRange [5081, 80, 300];
sliderSetPosition [5081, maxUnits];
((findDisplay 60000) displayCtrl 5080) ctrlSetText format ["AI Limit: %1", maxUnits];

private _gameInfoText = format [
    "Antistasi - %2, Version: %1, Antistasi Plus Version: %6, Difficulty: %3, Unlock Weapon Number: %4, Limited Fast Travel: %5", 
    antistasiVersion, 
    worldName, 
    if (skillMult == 2) then {"Normal"} else {if (skillMult == 1) then {"Easy"} else {"Hard"}},
    minWeaps,
    if (limitedFT) then {"Yes"} else {"No"},
    antistasiPlusVersion
];
((findDisplay 60000) displayCtrl 6011) ctrlSetText _gameInfoText;

private _serverMembersText = [] call A3A_fnc_membersList;
((findDisplay 60000) displayCtrl 6013) ctrlSetText _serverMembersText;

private _fiaTrainingText = format ["FIA Skill Level: %1", skillFIA];
((findDisplay 60000) displayCtrl 3102) ctrlSetText _fiaTrainingText;

//hiding reroll button if conditions are not met
if (spawnTraderOnBase || {!(isTraderQuestCompleted || (!(isNil 'isTraderQuestAssigned') && {isTraderQuestAssigned}))}) then {
	((findDisplay 60000) displayCtrl 6014) ctrlShow false;
};

menuComplete = true;

[] call SCRT_fnc_ui_updateSupportMenu;
["ADD"] call SCRT_fnc_ui_manageSupportTabEventHandler;
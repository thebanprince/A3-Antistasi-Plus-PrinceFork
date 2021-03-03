createDialog "startupMenu";

waitUntil {dialog};
private _autoSaveInterval = "autoSaveInterval" call BIS_fnc_getParamValue;
[
	"W A R N I N G ",
	["Antistasi has a custom save system similar to other CTIs.<br/><br/>",
	"To Save: Your commander needs to go to the <t color='#f0d498'>Commander Menu</t> or <t color='#f0d498'>Map Board</t>, select <t color='#f0d498'>""Game Options""</t> tab and click on the <t color='#60200b'>""Persistent Save""</t> button.<br/><br/>",
	"Current parameters are configured to auto-save every <t color='#f0d498'>",(_autoSaveInterval/60) toFixed 0," minutes</t>."] joinString ""
] call A3A_fnc_customHint;
waitUntil {!dialog};

if (!isNil "loadLastSave" && {!loadLastSave}) then {
	createDialog "diffMenu";
	waitUntil {dialog};
	["Load Save", "Choose a difficulty level"] call A3A_fnc_customHint;
	waitUntil {!dialog};

	[] spawn {
		waitUntil {(!isNil "serverInitDone")};			// need following params to be initialized
		if (isNil "skillMult") exitWith {};
		if (skillMult == 1) then
			{
			//Easy Difficulty Tweaks
			server setVariable ["hr",25,true];
			server setVariable ["resourcesFIA",5000,true];
			vehInGarage = [vehSDKTruck,vehSDKTruck,SDKMortar,SDKMGStatic,staticAAteamPlayer];
			minWeaps = 15;
			if !(hasTFAR) then
				{
				["ItemRadio"] call A3A_fnc_unlockEquipment;
				haveRadio = true;
				};
			};
		if (skillMult == 3) then
			{
			//Hard Difficulty Tweaks
			server setVariable ["hr",0,true];
			server setVariable ["resourcesFIA",200,true];
			minWeaps = 40;
			};
		[] call A3A_fnc_statistics;
		};
	createDialog "gameModeMenu";
	waitUntil {dialog};
	["Load Save", "Choose a Game Mode"] call A3A_fnc_customHint;
	waitUntil {!dialog};
};


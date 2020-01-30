_nul=createDialog "set_params";

waitUntil {dialog};
hint localize "STR_antistasi_dialogs_createDialog_setParams_text_1";
waitUntil {!dialog};

if (!isNil "loadLastSave" && {!loadLastSave}) then {
	_nul=createDialog "diff_menu";
	waitUntil {dialog};
	hint localize "STR_antistasi_dialogs_createDialog_setParams_text_2";
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
	_nul= createDialog "gameMode_menu";
	waitUntil {dialog};
	hint localize "STR_antistasi_dialogs_createDialog_setParams_text_3";
	waitUntil {!dialog};
};

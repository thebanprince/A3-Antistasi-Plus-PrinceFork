if(!hasInterface) exitWith {};

_3dIconsOptionValue = ["3dIcons", 1] call BIS_fnc_getParamValue;
if(_3dIconsOptionValue == 0) exitWith {};

if(_3dIconsOptionValue == 1) then {
	addMissionEventHandler [
		"Draw3D",
		{
			{
				//mark wounded friendly players
				if (alive _x && {side player getFriend side _x > 0.5} && {(lifeState _x) == "INCAPACITATED"}) then {
					_dist = player distance _x;
					if (_dist < 100) then {
						_pos = getPosATLVisual _x;
						_pos set [2, (_pos select 2) + 1 + (_dist * 0.05)];

						private _localizedText = localize "STR_antistasi_actions_draw3d_unconscious_text";

						drawIcon3D [
							"\a3\ui_f\data\IGUI\Cfg\HoldActions\holdAction_reviveMedic_ca.paa",
							[1,0,0,1 - (_dist / 100)], 
							_pos, 
							1, 
							1, 
							0, 
							[_localizedText, name _x] joinString " ", 
							1, 
							0.04 - (_dist / 9000), 
							"PuristaMedium"
						];
					};
				};
			} forEach (call BIS_fnc_listPlayers - [player]);
		}
	];
} 
else {
	addMissionEventHandler [
		"Draw3D",
		{
			{
				if (alive _x && {side player getFriend side _x > 0.5} && {(lifeState _x) == "INCAPACITATED"}) then {
					_dist = player distance _x;
					if (_dist < 100) then {
						_pos = getPosATLVisual _x;
						_pos set [2, (_pos select 2) + 1 + (_dist * 0.05)];

						private _localizedText = localize "STR_antistasi_actions_draw3d_unconscious_text";

						drawIcon3D [
							"\a3\ui_f\data\IGUI\Cfg\HoldActions\holdAction_reviveMedic_ca.paa",
							[1,0,0,1 - (_dist / 100)], 
							_pos, 
							1, 
							1, 
							0, 
							[_localizedText, name _x] joinString " ", 
							1, 
							0.04 - (_dist / 9000), 
							"PuristaMedium"
						];
					};
				} else {
					if(alive _x && {side player getFriend side _x > 0.5} && vehicle player == player) then {
						_dist = player distance _x;
						if (_dist < 15) then {
							//TODO: getAllUnitTraits
							_isMedic = _x getUnitTrait "Medic";
							_isEngineer = _x getUnitTrait "Engineer";
							_isCommander = if(_x == theBoss) then {true} else {false};
							_isUavHacker = _x getUnitTrait "UAVHacker";
							_camouflageCoef = _x getUnitTrait "camouflageCoef";
							_audibleCoef = _x getUnitTrait "audibleCoef";
							_loadCoef = _x getUnitTrait "loadCoef";

							_stanceHeight = objNull;
							_rank = [_x, "displayNameShort"] call BIS_fnc_rankParams; 

							switch(stance _x) do {
								case ("STAND"): {
									_stanceHeight = 2;
								};
								case ("CROUCH"): {
									_stanceHeight = 1.5;
								};
								case ("PRONE"): {
									_stanceHeight = 1;
								};
								default { 
									_stanceHeight = 2;
								};
							};

							_pos = getPosATLVisual _x;
							_pos set [2, (_pos select 2) + _stanceHeight + (_dist * 0.1)];

							switch(true) do {
								case (_isCommander): {
									_localizedText = localize "STR_antistasi_actions_draw3d_commander_text";

									drawIcon3D [
										"\a3\ui_f\data\IGUI\Cfg\CommandBar\imageCommander_ca.paa", 
										[0, 0.65, 0, 1 - (_dist / 100)], 
										_pos, 
										1, 
										1, 
										0, 
										[_rank, name _x + ",", _localizedText] joinString " ",
										1, 
										0.034 - (_dist / 9000), 
										"PuristaMedium"
									];
								};
								case (_isMedic): {
									_localizedText = localize "STR_antistasi_actions_draw3d_medic_text";

									drawIcon3D [
										"\a3\ui_f\data\IGUI\Cfg\Actions\heal_ca.paa", 
										[0.5, 0, 0, 1 - (_dist / 100)], 
										_pos, 
										1, 
										1, 
										0, 
										[_rank, name _x + ",", _localizedText] joinString " ",
										1, 
										0.034 - (_dist / 9000), 
										"PuristaMedium"
									];
								};
								case (_isEngineer): {
									_localizedText = localize "STR_antistasi_actions_draw3d_engineer_text";

									drawIcon3D [
										"\a3\ui_f\data\IGUI\Cfg\Actions\repair_ca.paa", 
										[0.1, 0.1, 0.75, 1 - (_dist / 15)], 
										_pos, 
										1, 
										1, 
										0, 
										[_rank, name _x + ",", _localizedText] joinString " ",
										1, 
										0.034 - (_dist / 9000), 
										"PuristaMedium"
									];
								};
								case (_isUavHacker): {
									_localizedText = localize "STR_antistasi_actions_draw3d_rifleman_text";

									drawIcon3D [
										"\a3\ui_f\data\IGUI\Cfg\WeaponIcons\srifle_ca.paa", 
										[1, 1, 1, 1 - (_dist / 15)], 
										_pos, 
										1, 
										1, 
										0, 
										[_rank, name _x + ",", _localizedText] joinString " ",
										1, 
										0.034 - (_dist / 9000), 
										"PuristaMedium"
									];
								};
								case (_camouflageCoef == 1.2): {
									_localizedText = localize "STR_antistasi_actions_draw3d_grenadier_text";

									drawIcon3D [
										"\a3\ui_f\data\IGUI\Cfg\WeaponIcons\gl_ca.paa", 
										[1, 1, 1, 1 - (_dist / 15)], 
										_pos, 
										1, 
										1, 
										0, 
										[_rank, name _x + ",", _localizedText] joinString " ",
										1, 
										0.034 - (_dist / 9000), 
										"PuristaMedium"
									];
								};
								case (_audibleCoef == 1.2): {
									_localizedText = localize "STR_antistasi_actions_draw3d_autorifleman_text";

									drawIcon3D [
										"\a3\ui_f\data\IGUI\Cfg\WeaponIcons\mg_ca.paa",
										[1, 1, 1, 1 - (_dist / 15)], 
										_pos, 
										1, 
										1, 
										0, 
										[_rank, name _x + ",", _localizedText] joinString " ",
										1, 
										0.034 - (_dist / 9000), 
										"PuristaMedium"
									];
								};
								case (_loadCoef == 1.4): {
									_localizedText = localize "STR_antistasi_actions_draw3d_teamleader_text";

									drawIcon3D [
										"\a3\ui_f\data\IGUI\Cfg\Actions\getincommander_ca.paa", 
										[0.5, 0, 0, 1 - (_dist / 15)], 
										_pos, 
										1, 
										1, 
										0, 
										[_rank, name _x + ",", _localizedText] joinString " ",
										1, 
										0.034 - (_dist / 9000), 
										"PuristaMedium"
									];
								};
								default { 
									drawIcon3D [
										"", 
										[1, 1, 1, 1 - (_dist / 15)], 
										_pos, 
										1, 
										1, 
										0, 
										[_rank, name _x] joinString " ",
										1, 
										0.034 - (_dist / 9000), 
										"PuristaMedium"
									];
								};
							};
						};
					};
				};
			} forEach (call BIS_fnc_listPlayers - [player]);
		}
	];
};
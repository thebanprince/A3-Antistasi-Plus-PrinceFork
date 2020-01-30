private ["_display","_childControl","_costs","_costHR","_unitsX","_formatX"];
if (!([player] call A3A_fnc_hasRadio)) exitWith {if !(hasIFA) then {hint localize "STR_antistasi_dialogs_squadOptions_hint_1"} else {hint localize "STR_antistasi_dialogs_squadOptions_hint_2"}};
_nul = createDialog "squad_options";

sleep 1;
disableSerialization;

_display = findDisplay 100;

if (str (_display) != "no display") then
{
	_ChildControl = _display displayCtrl 104;
	_costs = 0;
	_costHR = 0;
	//_formatX = (cfgSDKInf >> (groupsSDKSquad select 0));
	//_unitsX = [_formatX] call groupComposition;
	{_costs = _costs + (server getVariable (_x select 0)); _costHR = _costHR +1} forEach groupsSDKSquad;
	_ChildControl  ctrlSetTooltip format [localize "STR_antistasi_dialogs_generic_costs_squad_text",_costs,_costHR];

	_ChildControl = _display displayCtrl 105;
	_costs = 0;
	_costHR = 0;
	//_formatX = (cfgSDKInf >> (groupsSDKmid select 0));
	//_unitsX = [_formatX] call groupComposition;
	{_costs = _costs + (server getVariable (_x select 0)); _costHR = _costHR +1} forEach groupsSDKSquadEng;
	_ChildControl  ctrlSetTooltip format [localize "STR_antistasi_dialogs_generic_costs_squad_text",_costs,_costHR];

	_ChildControl = _display displayCtrl 106;
	_costs = 0;
	_costHR = 0;
	//_formatX = (cfgSDKInf >> (groupsSDKAT select 0));
	//_unitsX = [_formatX] call groupComposition;
	{_costs = _costs + (server getVariable (_x select 0)); _costHR = _costHR +1} forEach groupsSDKSquadSupp;
	_costs = _costs + ([SDKMGStatic] call A3A_fnc_vehiclePrice);
	_ChildControl  ctrlSetTooltip format [localize "STR_antistasi_dialogs_generic_costs_squad_text",_costs,_costHR];

	_ChildControl = _display displayCtrl 107;
	_costs = 0;
	_costHR = 0;
	//_unitsX = [SDKSL,SDKSL];
	{_costs = _costs + (server getVariable (_x select 0)); _costHR = _costHR +1} forEach groupsSDKSquadSupp;
	_costs = _costs + ([SDKMortar] call A3A_fnc_vehiclePrice);
	_ChildControl  ctrlSetTooltip format [localize "STR_antistasi_dialogs_generic_costs_squad_text",_costs,_costHR];
};

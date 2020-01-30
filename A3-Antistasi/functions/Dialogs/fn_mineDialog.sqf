private ["_typeX","_costs","_positionTel","_quantity","_quantityMax"];

if (["Mines"] call BIS_fnc_taskExists) exitWith {hint localize "STR_antistasi_dialogs_mineDialog_hint_1"};

if (!([player] call A3A_fnc_hasRadio)) exitWith {if !(hasIFA) then {hint localize "STR_antistasi_dialogs_squadOptions_hint_1"} else {hint localize "STR_antistasi_dialogs_squadOptions_hint_2"}};

_typeX = _this select 0;

_costs = (2*(server getVariable (SDKExp select 0))) + ([vehSDKTruck] call A3A_fnc_vehiclePrice);
_hr = 2;
if (_typeX == "delete") then
	{
	_costs = _costs - (server getVariable (SDKExp select 0));
	_hr = 1;
	};
if ((server getVariable "resourcesFIA" < _costs) or (server getVariable "hr" < _hr)) exitWith {hint format [localize "STR_antistasi_dialogs_mineDialog_hint_2",_costs,_hr]};

if (_typeX == "delete") exitWith
	{
	hint localize "STR_antistasi_dialogs_mineDialog_hint_3";
	[[],"A3A_fnc_mineSweep"] remoteExec ["A3A_fnc_scheduler",2];
	};

#include "\A3\Ui_f\hpp\defineResinclDesign.inc"

_pool = jna_dataList select IDC_RSCDISPLAYARSENAL_TAB_CARGOPUT;
_quantity = 0;
_quantityMax = 40;
_typeM =APERSMineMag;
if (_typeX == "ATMine") then
	{
	_quantityMax = 20;
	_typeM = ATMineMag;
	};

{
if (_x select 0 == _typeM) exitWith {_quantity = _x select 1}
} forEach _pool;

if (_quantity < 5) exitWith {hint localize "STR_antistasi_dialogs_mineDialog_hint_4"};

if (!visibleMap) then {openMap true};
positionTel = [];
hint localize "STR_antistasi_dialogs_mineDialog_hint_5";

onMapSingleClick "positionTel = _pos;";

waitUntil {sleep 1; (count positionTel > 0) or (not visiblemap)};
onMapSingleClick "";

if (!visibleMap) exitWith {};

_positionTel = positionTel;

if (_quantity > _quantityMax) then
	{
	_quantity = _quantityMax;
	};

[[_typeX,_positionTel,_quantity],"A3A_fnc_buildMinefield"] remoteExec ["A3A_fnc_scheduler",2];

params ["_traderX"];

_traderX addAction [
	localize "STR_antistasi_actions_common_access_vehicle_marker_text", 
	{call SCRT_fnc_trader_tryOpenVehicleMarketMenu},
	nil,
	0,
	false,
	true,
	"",
	"(isPlayer _this) and ([_this] call A3A_fnc_isMember)",
	3
]; 


//JIP Variant
// [
// 	_traderX,
// 	localize "STR_antistasi_actions_common_access_vehicle_marker_text",
// 	"\a3\Ui_F_Oldman\Data\IGUI\Cfg\HoldActions\holdAction_market_ca.paa",
// 	"\a3\Ui_F_Oldman\Data\IGUI\Cfg\HoldActions\holdAction_market_ca.paa",
// 	"alive _target && _this distance _target < 3 && isNull objectParent _this && ([_this] call A3A_fnc_isMember)",
// 	"_this distance _target < 3",
// 	{},
// 	{},
//     {call SCRT_fnc_trader_tryOpenVehicleMarketMenu}, 
//     {}, [], 0.5, nil, false, false										
// ] remoteExec ["BIS_fnc_holdActionAdd", 0, _traderX];
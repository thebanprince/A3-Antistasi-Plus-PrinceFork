params ["_traderX"];

// not working well - other's action icons disaappeared for some reason
// [
// 	_traderX,
// 	localize "STR_antistasi_actions_common_access_vehicle_marker_text",
// 	"\a3\Ui_F_Oldman\Data\IGUI\Cfg\HoldActions\holdAction_market_ca.paa",
// 	"\a3\Ui_F_Oldman\Data\IGUI\Cfg\HoldActions\holdAction_market_ca.paa",
// 	"alive _target && _this distance _target < 3 && isNull objectParent _this && ([_this] call A3A_fnc_isMember)",
// 	"_this distance _target < 3",
// 	{},
// 	{},
//     {call SCRT_fnc_shop_checkAvailability}, 
//     {}, [], 0.5, nil, false, false
// ] call BIS_fnc_holdActionAdd;

_traderX addAction [
	localize "STR_antistasi_actions_common_access_vehicle_marker_text", 
	{call SCRT_fnc_shop_checkAvailability},
	nil,
	0,
	false,
	true,
	"",
	"(isPlayer _this) and ([_this] call A3A_fnc_isMember)",
	3
]; 
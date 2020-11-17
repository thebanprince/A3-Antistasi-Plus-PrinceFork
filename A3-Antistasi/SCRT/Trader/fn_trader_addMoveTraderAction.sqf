params ["_item"];

_item addAction [
	localize "STR_antistasi_actions_common_move_trader_text", 
	{call SCRT_fnc_trader_moveTraderToPetros},
	nil,
	0,
	false,
	true,
	"",
	"(isPlayer _this) and ([_this] call A3A_fnc_isMember)",
	3
]; 
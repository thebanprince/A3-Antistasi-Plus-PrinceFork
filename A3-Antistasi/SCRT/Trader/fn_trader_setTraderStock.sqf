//	Author: Socrates
// 
//	Description:
//	Sets trader stock based on current modset.
//
//	Returns:
//	Nothing.
//
// 	How to use: 
// 	[_traderX] call SCRT_fnc_trader_setTraderStock;


if (hasRHS) exitWith {
    diag_log format ["%1: [Antistasi] | INFO | fn_trader_setTraderStock | Using RHS trader stock. ", servertime];
    [_traderX, "rhs"] call HALs_store_fnc_addTrader;
};
if (hasAU) exitWith {
	diag_log format ["%1: [Antistasi] | INFO | fn_trader_setTraderStock | Using Antistasi Units trader stock. ", servertime];
    [_traderX, "antistasiUnits"] call HALs_store_fnc_addTrader;
};

diag_log format ["%1: [Antistasi] | INFO | fn_trader_setTraderStock | Initializing vanilla trader. ", servertime];
[_traderX, "vanilla"] call HALs_store_fnc_addTrader;

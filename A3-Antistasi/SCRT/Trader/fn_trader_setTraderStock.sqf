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
params ["_traderX"];

diag_log format ["%1: [Antistasi] | INFO | fn_trader_setTraderStock | Choosing trader stock...", servertime];
diag_log format ["%1: [Antistasi] | INFO | fn_trader_setTraderStock | Trader: %2", servertime, str _traderX];

switch (true) do {
    case (hasRHS): {
        diag_log format ["%1: [Antistasi] | INFO | fn_trader_setTraderStock | Using RHS trader stock.", servertime];
        [_traderX, "rhs"] call HALs_store_fnc_addTrader;
    };
    case (hasAU): {
        diag_log format ["%1: [Antistasi] | INFO | fn_trader_setTraderStock | Using Antistasi Units trader stock.", servertime];
        [_traderX, "antistasiUnits"] call HALs_store_fnc_addTrader;
    };
    case (hasAegis): {
        diag_log format ["%1: [Antistasi] | INFO | fn_trader_setTraderStock | Initializing Aegis trader.", servertime];
        [_traderX, "aegis"] call HALs_store_fnc_addTrader;
    };
    case (hasCup): {
        diag_log format ["%1: [Antistasi] | INFO | fn_trader_setTraderStock | Using CUP trader stock.", servertime];
        [_traderX, "cup"] call HALs_store_fnc_addTrader;
    };
    default  {
        diag_log format ["%1: [Antistasi] | INFO | fn_trader_setTraderStock | Initializing vanilla trader.", servertime];
        [_traderX, "vanilla"] call HALs_store_fnc_addTrader;
    };
};

[] call SCRT_fnc_trader_removeUnlockedItemsFromStock;
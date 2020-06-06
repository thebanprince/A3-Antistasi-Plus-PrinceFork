private _seaports = { sidesX getVariable [_x, sideUnknown] == teamPlayer } count seaports;

if(_seaports < 1) then {
    hint "You need to control at least one seaport to access the black market.";
} else {
    createDialog "blackMarket_menu";
};
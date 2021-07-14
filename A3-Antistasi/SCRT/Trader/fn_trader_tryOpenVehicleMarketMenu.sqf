private _message = nil;
private _outposts = if (count seaports > 0) then {
    { sidesX getVariable [_x, sideUnknown] == teamPlayer } count seaports;
    _message = "Rebels need to control at least one seaport to access the black market.";
} else {
    { sidesX getVariable [_x, sideUnknown] == teamPlayer } count resourcesX; //some maps may not have any seaports, so this will allow to use vehicle black market on such maps
    _message = "Rebels need to control at least one resource to access the black market.";
};

if(_outposts < 1) exitWith {
    ["Black Market Is Not Available", _message] call SCRT_fnc_misc_showDeniedActionHint;
};

[] call SCRT_fnc_ui_createVehicleBlackMarketMenu;
private _position = position traderScreenX;

traderMarker = createMarker ["TraderMarker", _position];
traderMarker setMarkerType "hd_objective";
traderMarker setMarkerSize [1, 1];
traderMarker setMarkerText "Arms Dealer";
traderMarker setMarkerColor "ColorUNKNOWN";
traderMarker setMarkerAlpha 0;

traderVehicleMarker = createMarker ["TraderVehicleMarker", _position];
traderVehicleMarker setMarkerSize [25, 25];
traderVehicleMarker setMarkerColor "ColorUNKNOWN";
traderVehicleMarker setMarkerShape "RECTANGLE";
traderVehicleMarker setMarkerAlpha 0;
publicVariable "traderVehicleMarker";

[traderScreenX] remoteExecCall ["SCRT_fnc_trader_setTraderStock", 0];
[traderScreenX] remoteExecCall ["SCRT_fnc_trader_addVehicleMarketAction", 0, true];
traderScreenX addAction ["Move this asset", A3A_fnc_moveHQObject, nil, 0, false, true, "", "(_this == theBoss)", 4];
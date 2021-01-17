private _position = position traderScreenX;

traderMarker = createMarker ["TraderMarker", _position];
traderMarker setMarkerType "hd_objective";
traderMarker setMarkerSize [1, 1];
traderMarker setMarkerText "Arms Dealer";
traderMarker setMarkerColor "ColorUNKNOWN";
traderMarker setMarkerAlpha 0;
publicVariable "traderMarker";

traderVehicleMarker = createMarker ["TraderVehicleMarker", _position];
traderVehicleMarker setMarkerSize [25, 25];
traderVehicleMarker setMarkerColor "ColorUNKNOWN";
traderVehicleMarker setMarkerShape "RECTANGLE";
traderVehicleMarker setMarkerAlpha 0;
publicVariable "traderVehicleMarker";

[traderScreenX] call SCRT_fnc_trader_setTraderStock;
[traderScreenX] remoteExecCall ["SCRT_fnc_trader_addVehicleMarketAction", 0, true];
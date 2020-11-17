if (player != theBoss) exitWith {
    playSound "3DEN_notificationWarning";
	["Move Arms Dealer", "Only commander can do this."] call A3A_fnc_customHint;
};

private _resourcesFIA = server getVariable "resourcesFIA";
private _costs = 5000;

if (_resourcesFIA < _costs) exitWith {
    playSound "3DEN_notificationWarning";
	["Move Arms Dealer", format ["You need %2 € to move arms dealer.",_costs]] call A3A_fnc_customHint;
};

private _fileName = "trader_moveTraderToPetros";

[2,"Starting to move arms dealer to rebel HQ.",_fileName] call A3A_fnc_log;

[0, -_costs] remoteExec ["A3A_fnc_resourcesFIA",2];

private _petrosPosition = position petros;

private _traderPosition = [
    _petrosPosition, //center
    3, //minimal distance
    50, //maximumDistance
    0, //object distance
    0, //water mode
    0.5, //maximum terrain gradient
    0, //shore mode
    [], //blacklist positions
    [_petrosPosition, _petrosPosition] //default position
] call BIS_fnc_findSafePos;

_radGrad = [_traderPosition, 0] call BIS_fnc_terrainGradAngle;
private _iterations = 0;

//mitigation of negative terrain gradient
if(!(_radGrad > -0.5 && _radGrad < 0.5)) then {
    while {_iterations < 30} do {
        _traderPosition = [
            _petrosPosition, 
            1, 
            150, 
            0, 
            0, 
            0.3, 
            0, 
            [], 
            [_petrosPosition, _petrosPosition] 
        ] call BIS_fnc_findSafePos;

        _radGrad = [_traderPosition, 0] call BIS_fnc_terrainGradAngle;

        if((_radGrad > -0.5 && _radGrad < 0.5)) exitWith {};
        _iterations = _iterations + 1; 
    };
};

[2, format ["New trader position: %1", str _traderPosition], _fileName] call A3A_fnc_log;

{
    deleteVehicle _x;
} forEach traderProps + [traderX];

traderX = [_traderPosition] call SCRT_fnc_trader_createTrader;
publicVariable "traderX";

[traderX] call SCRT_fnc_trader_setTraderStock;
[traderX] remoteExecCall ["SCRT_fnc_trader_addVehicleMarketAction", 0, true];
traderPosition = _traderPosition; 
publicVariable "traderPosition";

"TraderMarker" setMarkerPos (position traderX);
"TraderVehicleMarker" setMarkerPos (position traderX);
publicVariable "traderMarker";
publicVariable "traderVehicleMarker";

["Move Arms Dealer", "An agreement has been made - arms dealer decided to move his tent closer to rebel HQ."] call A3A_fnc_customHint;
[2, "Trader has been sucessfully moved.", _fileName] call A3A_fnc_log;

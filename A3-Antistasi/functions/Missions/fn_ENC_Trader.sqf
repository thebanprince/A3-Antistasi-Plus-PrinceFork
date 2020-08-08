if (!isServer and hasInterface) exitWith{};

diag_log format ["%1: [Antistasi] | INFO | ENC_Trader | Trader Mission Init", servertime];

_markerX = _this select 0;
_positionX = getMarkerPos _markerX;

_traderPosition = [
    _positionX, //center
    1, //minimal distance
    150, //maximumDistance
    0, //object distance
    0, //water mode
    0.2, //maximum terrain gradient
    0, //shore mode
    [], //blacklist positions
    [_positionX, _positionX] //default position
] call BIS_fnc_findSafePos;

_radGrad = [_traderPosition, 0] call BIS_fnc_terrainGradAngle;
private _iterations = 0;

//mitigation of negative terrain gradient
if(!(_radGrad > -0.2 && _radGrad < 0.2)) then {
    while {_iterations < 30} do {
        _traderPosition = [
            _positionX, 
            1, 
            150, 
            0, 
            0, 
            0.2, 
            0, 
            [], 
            [_positionX, _positionX] 
        ] call BIS_fnc_findSafePos;

        _radGrad = [_traderPosition, 0] call BIS_fnc_terrainGradAngle;

        if((_radGrad > -0.2 && _radGrad < 0.2)) exitWith {};
        _iterations = _iterations + 1; 
    };
};
diag_log format ["%1: [Antistasi] | INFO | DES_Heli | Trader position was found after %2 iterations.", servertime, str _iterations];
diag_log format ["%1: [Antistasi] | INFO | DES_Heli | Trader position: %2", servertime, str _traderPosition];

// _msg = format ["Trader position was found after %1 iterations.", str _iterations];
// systemChat _msg; 

_traderX = [_traderPosition] call SCRT_fnc_trader_createTrader;
[_traderX] call SCRT_fnc_trader_setTraderStock;
[_traderX] remoteExecCall ["SCRT_fnc_trader_addVehicleMarketAction", 0, true];

_worldName = toUpper([worldName, 0, 0] call BIS_fnc_trimString) + ([worldName, 1, count worldName] call BIS_fnc_trimString);

[
    [teamPlayer,civilian],
    "ENC_TRADER",
    [format ["Whether %1 wanted it or not, an arms dealer has arrived on %2. So let's get to buy some weapons and gear from him, one by one. %3. From what i can gather he trades his goods from a hideout in the forest outside of major cities. He's well hidden, but with the right team, we can punch through those trees, find this man out and establish contact with black market.",nameOccupants,_worldName,name _traderX, nameOccupants],
    "Find the Arms Dealer",_markerX],
    _traderPosition,
    false,
    0,
    true,
    "meet",
    true
] call BIS_fnc_taskCreate;

missionsX pushBack ["ENC_TRADER","CREATED"]; 
publicVariable "missionsX";

private _trigger = createTrigger ["EmptyDetector", _traderPosition];
_trigger setTriggerArea [30, 30, 0, false];


waitUntil { 
    sleep 1;
    private _conditionMet = false;

    { 
        if(side _x == teamPlayer && {_x inArea _trigger}) exitWith { _conditionMet = true };
    } forEach (call BIS_fnc_listPlayers);

    if(_conditionMet) exitWith { true };

    false
};

[
    "ENC_TRADER",
    [format ["Whether %1 wanted it or not, an arms dealer has arrived on %2. So let's get to buy some weapons and gear from him, one by one. %3. From what i can gather he trades his goods from a hideout in the forest outside of major cities. He's well hidden, but with the right team, we can punch through those trees, find this man out and establish contact with black market.",nameOccupants,_worldName, name _traderX, nameOccupants],
    "Find the Arms Dealer",_markerX],
    _traderX,
    "SUCCEEDED"
] call A3A_fnc_taskUpdate;
//["ENC_TRADER","SUCCEEDED"] call BIS_fnc_taskSetState;

traderPosition = _traderPosition;

isTraderQuestCompleted = true; 
publicVariable "isTraderQuestCompleted";

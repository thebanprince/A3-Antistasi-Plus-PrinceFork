/*  This loop checks if condition for random game events are 
    Execution on: Server

    Scope: Internal

    Params:
        None

    Returns:
        Nothing
*/

//Define random event type
// #define PURSUERS        100

if(!isServer) exitWith {};

private _fileName = "fn_encounter_gameEventCheckLoop";

while {true} do {
    [3, "Random Events Check Loop started.", _filename] call A3A_fnc_log;
    sleep 60;

    //Sleep if no player is online
    if (isMultiplayer && (count (allPlayers - (entities "HeadlessClient_F")) == 0)) then {
        waitUntil {sleep 10; (count (allPlayers - (entities "HeadlessClient_F")) > 0)};
    };

    //TODO: different random encounters check

    _nextPursueTime = pursuersTime + 14400;
    if(serverTime > _nextPursueTime) then {
        [3, "Time check successfully passed.", _filename] call A3A_fnc_log;

        _chanceCheck = (random 100 < 20); //TODO: mission parameter

        if(_chanceCheck && {{tierWar > 4} && {aggressionLevelOccupants > 3}}) then {
            [3, "Coin flip check successfully passed, spawning pursuers.", _filename] call A3A_fnc_log;
            pursuersTime = _nextPursueTime;
            [] spawn SCRT_fnc_encounter_spawnPursuers;
        };
    };
};

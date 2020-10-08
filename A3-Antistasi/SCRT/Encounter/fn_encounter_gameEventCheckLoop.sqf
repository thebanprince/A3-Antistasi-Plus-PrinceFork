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
[3, "Random Events Check Loop Init.", _filename] call A3A_fnc_log;

while {true} do {
    nextGameLoopTick = time + 600;
	waitUntil {sleep 15; time >= nextGameLoopTick};
    [3, "Random Events loop tick.", _filename] call A3A_fnc_log;

    //Sleep if no player is online
    if (isMultiplayer && (count (allPlayers - (entities "HeadlessClient_F")) == 0)) then {
        waitUntil {sleep 10; (count (allPlayers - (entities "HeadlessClient_F")) > 0)};
    };

    waitUntil {sleep 120; tierWar > 4};

    if(serverTime > pursuersTime && {aggressionLevelOccupants > 3}) then {
        [3, "Time and aggro check successfully passed.", _filename] call A3A_fnc_log;

        _chanceCheck = (random 100 < 10);

        if(_chanceCheck) then {
            [3, "Coin flip check successfully passed, spawning pursuers.", _filename] call A3A_fnc_log;
            _missionSite = [Occupants] call SCRT_fnc_common_selectRandomSite;
            [[_missionSite],"SCRT_fnc_encounter_spawnPursuers"] remoteExec ["A3A_fnc_scheduler", 2];

            pursuersTime = serverTime + 14400;
        };
    };
};

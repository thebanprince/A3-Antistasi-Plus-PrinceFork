if (!isServer && hasInterface) exitWith{};

params ["_missionOrigin"];

private _fileName = "fn_encounter_spawnPursuers";
[2, "Pursuers Event init.", _filename] call A3A_fnc_log;

private _sideX = if (sidesX getVariable [_missionOrigin,sideUnknown] == Occupants) then {Occupants} else {Invaders};
private _missionOriginPosition = getMarkerPos _missionOrigin;
private _endTime = serverTime + 3600;

//creating array for cleanup
private _vehicles = [];
private _groups = [];

// selecting classnames
_attackHeliClass = nil;
_specOpsArray = nil;

if(_sideX == Occupants) then { 
    _attackHeliClass = selectRandom vehNATOAttackHelis;
    _specOpsArray = NATOSpecOp;
} 
else { 
    _attackHeliClass = selectRandom vehCSATAttackHelis;
    _specOpsArray = CSATSpecOp;
};

if (isNil "_attackHeliClass" || 
    {isNil "_specOpsArray"}) exitWith {
	[1, format ["Problems with unit templates, aborting pursuers spawn."], _filename] call A3A_fnc_log;
};

private _spawnPosition = [_missionOriginPosition, 0, 500, 0, 0, 0.6] call BIS_fnc_findSafePos;
private _attackHeliData = [[(_spawnPosition select 0), (_spawnPosition select 1), 300 + random 500], 0, _attackHeliClass, _sideX] call bis_fnc_spawnvehicle;
private _attackHeliVeh = _attackHeliData select 0;
[_attackHeliVeh, _sideX] call A3A_fnc_AIVEHinit;
private _attackHeliCrew = _attackHeliData select 1;
{[_x] call A3A_fnc_NATOinit} forEach _attackHeliCrew;
_attackHeliVehicleGroup = _attackHeliData select 2;

_groups pushBack _attackHeliVehicleGroup;
_vehicles pushBack _attackHeliVeh;

[_attackHeliVehicleGroup, position theBoss, 500] call bis_fnc_taskPatrol;
sleep 2;
_attackHeliVehicleGroup setBehaviour "AWARE";
_attackHeliVehicleGroup setCombatMode "RED";
_attackHeliVehicleGroup setSpeedMode "FULL";


private _specOpsPosition = [position theBoss, 750, 1000, 0, 0] call BIS_fnc_findSafePos;
private _specOpsGroup = [_specOpsPosition, _sideX, _specOpsArray] call A3A_fnc_spawnGroup;
{ 
    [_x] call A3A_fnc_NATOinit;
} forEach units _specOpsGroup;
_groups pushBack _specOpsGroup;


_specOpsWaypoint = _specOpsGroup addWaypoint [theBoss, 0];
_specOpsWaypoint setWaypointType "SAD";
_specOpsWaypoint setWaypointBehaviour "AWARE";
_specOpsWaypoint setWaypointCombatMode "YELLOW";
_specOpsWaypoint setWaypointSpeed "FULL";


private _pursueDelay = serverTime + 600;
waitUntil {sleep 1; serverTime > _pursueDelay };

//knowledge sharing between pursuers
[_attackHeliVehicleGroup, _specOpsGroup, _fileName] spawn {
    params ["_attackHeliVehicleGroup", "_specOpsGroup", "_fileName"];

    private _shareTime = serverTime + 120;

    while {true} do {
        sleep 1;
        if(isNil "_attackHeliVehicleGroup" || isNull _attackHeliVehicleGroup || !alive leader _attackHeliVehicleGroup) exitWith {
            [3, format ["Exiting knowledge sharing loop."], _filename] call A3A_fnc_log;
        };

        if(serverTime > _shareTime) then {
            _rebels = [500, 0, theBoss, teamPlayer] call A3A_fnc_distanceUnits;
            if(_attackHeliVehicleGroup knowsAbout theBoss > 1.4) then {
                [3, format ["Sharing knowledge between specOps squad and heli. Heli is donor."], _filename] call A3A_fnc_log;
                {_specOpsGroup reveal [_x, 4];} forEach _rebels;
                _shareTime = serverTime + 120;
            } else {
                if(_specOpsGroup knowsAbout theBoss > 1.4) then {
                    [3, format ["Sharing knowledge between specOps squad and heli. SpecOps squad is donor."], _filename] call A3A_fnc_log;
                    {_attackHeliVehicleGroup reveal [_x, 4];} forEach _rebels;
                    _shareTime = serverTime + 120;
                };
            };
        };
    };
};

//assign new waypoints
[_attackHeliVehicleGroup, _specOpsGroup, _fileName] spawn {
    params ["_attackHeliVehicleGroup", "_specOpsGroup", "_fileName"];

    private _assignTime = serverTime + 120;

    while {true} do {
        sleep 1;
        if(isNil "_attackHeliVehicleGroup" || isNull _attackHeliVehicleGroup || !alive leader _attackHeliVehicleGroup) exitWith {
            [3, format ["Exiting waypoint assignment loop."], _filename] call A3A_fnc_log;
        };

        if(serverTime > _assignTime) then {
            if(leader _attackHeliVehicleGroup distance2D theBoss > 1000) then {
                [3, format ["Assigning new waypoint for heli."], _filename] call A3A_fnc_log;
                if(count waypoints _attackHeliVehicleGroup > 0) then {
                    for "_i" from count waypoints _attackHeliVehicleGroup - 1 to 0 step -1 do {
                        deleteWaypoint [_attackHeliVehicleGroup, _i];
                    };
                };

                [_attackHeliVehicleGroup, position theBoss, 500] call bis_fnc_taskPatrol;
                _assignTime = serverTime + 120;
                [3, format ["New waypoint for heli has been assigned."], _filename] call A3A_fnc_log;
            };
            if(leader _specOpsGroup distance2D theBoss > 1000) then {
                [3, format ["Assigning new waypoint for spec ops."], _filename] call A3A_fnc_log;
                if(count waypoints _specOpsGroup > 0) then {
                    for "_i" from count waypoints _specOpsGroup - 1 to 0 step -1 do {
                        deleteWaypoint [_specOpsGroup, _i];
                    };
                };

                private _specOpsWaypointAdditional = _specOpsGroup addWaypoint [theBoss, 0];
                _specOpsWaypointAdditional setWaypointType "SAD";
                _specOpsWaypointAdditional setWaypointBehaviour "AWARE";
                _specOpsWaypointAdditional setWaypointCombatMode "YELLOW";
                _specOpsWaypointAdditional setWaypointSpeed "FULL";

                _assignTime = serverTime + 120;
                [3, format ["New waypoint for specOps has been assigned."], _filename] call A3A_fnc_log;
            };
        };
    };
};

waitUntil {sleep 1; serverTime > _endTime };

{[_x] spawn A3A_fnc_vehDespawner} forEach _vehicles;
{[_x] spawn A3A_fnc_groupDespawner} forEach _groups;
[3, format ["Pursuers clean up complete."], _filename] call A3A_fnc_log;
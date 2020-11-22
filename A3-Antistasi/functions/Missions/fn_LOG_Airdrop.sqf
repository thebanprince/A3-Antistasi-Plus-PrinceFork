//Mission: Catch airdrop
if (!isServer and hasInterface) exitWith{};

params ["_markerX"];

private ["_unit","_countX"];

private _fileName = "fn_LOG_Airdrop";
[2, "Airdrop mission init.", _fileName] call A3A_fnc_log;

private _vehicles = [];
private _groups = [];
private _boxes = [];

private _sideX = if (sidesX getVariable [_markerX, sideUnknown] == Occupants) then {Occupants} else {Invaders};
private _difficultX = if (random 10 < tierWar) then {true} else {false};
private _positionX = getMarkerPos _markerX;

//////////////////////
//Mission position
/////////////////////

_airdropZoneMarker = createMarker ["AirdropZoneMarker", _positionX];
_airdropZoneMarker setMarkerSize [200, 200];
_airdropZoneMarker setMarkerColor "ColorUNKNOWN";
_airdropZoneMarker setMarkerShape "RECTANGLE";
_airdropZoneMarker setMarkerAlpha 0;

//////////////////////
//Task
/////////////////////
private _timeLimit = if (_difficultX) then {30 * settingsTimeMultiplier} else {45 * settingsTimeMultiplier};
private _dateLimit = [date select 0, date select 1, date select 2, date select 3, (date select 4) + _timeLimit];
private _dateLimitNum = dateToNumber _dateLimit;
_dateLimit = numberToDate [date select 0, _dateLimitNum];//converts datenumber back to date array so that time formats correctly
private _displayTime = [_dateLimit] call A3A_fnc_dateToTimeString;//Converts the time portion of the date array to a string for clarity in hints

private _nameDest = [_markerX] call A3A_fnc_localizar;

[
    [teamPlayer,civilian],
    "LOG",
    [
        format ["Our plane will drop some cargo at position %1. Go there and throw any smoke grenade on ground, the pilot will notice the signal. Bring cargo to HQ. Do this before %2.", _nameDest, _displayTime],
        "Catch Airdrop",
        _markerX
    ],
    _positionX,
    false,
    0,
    true,
    "plane",
    true
] call BIS_fnc_taskCreate;
missionsX pushBack ["LOG","CREATED"]; 
publicVariable "missionsX";

waitUntil {
    sleep 5;
    private _players = (call BIS_fnc_listPlayers) select { side _x == teamPlayer || side _x == civilian};
    private _isInArea = false;
    {
        if(_x inArea _airdropZoneMarker) exitWith {
            _isInArea = true;
        };
    } forEach _players;
    _isInArea or (dateToNumber date > _dateLimitNum)
};

[2, "Setting things in motion...", _fileName, true] call A3A_fnc_log; 

_truckClass = nil;
_escortClass = nil;
_infantrySquadArray = nil;

if(_sideX == Occupants) then { 
    _truckClass = selectRandom vehNATOTrucks;
    _escortClass = if(_difficultX) then { selectRandom vehNATOAPC; } else { selectRandom vehNATOLightArmed; };
    _infantrySquadArray = (call SCRT_fnc_unit_getCurrentNATOSquad);
} 
else { 
    _truckClass = selectRandom vehCSATTrucks; 
    _escortClass = if(_difficultX) then { selectRandom vehCSATAPC; } else { selectRandom vehCSATLightArmed; };
    _infantrySquadArray = CSATSquad;
};

if (isNil "_truckClass" || {isNil "_escortClass"} || {isNil "_infantrySquadArray"}) exitWith {
	["LOG"] remoteExecCall ["A3A_fnc_missionRequest",2];
	[1, format ["Problems with unit templates, rerequesting new logistics mission."], _filename] call A3A_fnc_log;
};

[
    2, 
    format ["Truck: %1, APC: %2, infantry array: %3", _truckClass, _escortClass, str _infantrySquadArray], 
    "LOG_Airdrop", 
    true
] call A3A_fnc_log;




//choosing enemy delivery target site
private _potentialSites = (outposts + milbases + airportsX) select {sidesX getVariable [_x,sideUnknown] == _sideX};
private _enemyOriginSite = selectRandom _potentialSites;
private _enemyOriginSitePosition = getMarkerPos _enemyOriginSite;

if(_enemyOriginSitePosition distance _positionX < 1000) then {
    private _iterations = 0;
    while {_iterations < 30} do {
        _enemyOriginSite = selectRandom _potentialSites;
        if(_enemyOriginSitePosition distance _positionX > 1000) exitWith {};
        _iterations = _iterations + 1;
    };
};

//finding road
private _radiusX = 100;
private _roads = [];
while {true} do {
	_roads = _enemyOriginSitePosition nearRoads _radiusX;
	if (count _roads > 1) exitWith {};
	_radiusX = _radiusX + 50;
};
private _roadE = _roads select 1;
private _roadR = _roads select 0;
sleep 1;

//spawning airdrop interceptors
private _escortVehicleData = [position _roadE, 0, _escortClass, _sideX] call bis_fnc_spawnvehicle;
private _escortVeh = _escortVehicleData select 0;
_escortVeh limitSpeed 60;
[_escortVeh, "Airdrop Interceptor"] spawn A3A_fnc_inmuneConvoy;
private _vehCrew = crew _escortVeh;
{[_x] call A3A_fnc_NATOinit} forEach _vehCrew;
[_escortVeh, _sideX] call A3A_fnc_AIVEHinit;
private _escortVehicleGroup = _escortVehicleData select 2;
_groups pushBack _escortVehicleGroup;
_vehicles pushBack _escortVeh;

//spawning airdrop interceptor inf
private _typeGroup = if (_sideX == Occupants) then {call SCRT_fnc_unit_getCurrentGroupNATOSentry} else {groupsCSATSentry};
private _groupX = [_positionX, _sideX, _typeGroup] call A3A_fnc_spawnGroup;
{
    _x assignAsCargo _escortVeh; 
    _x moveInCargo _escortVeh; 
    [_x] join _escortVehicleGroup; 
    [_x] call A3A_fnc_NATOinit;
} forEach units _groupX;
deleteGroup _groupX;

//creating cargo vehicle
private _truckData = [position _roadR, 0, _truckClass, _sideX] call bis_fnc_spawnvehicle;
private _truckVehicle = _truckData select 0;
_truckVehicle limitSpeed 60;
[_truckVehicle, _sideX] call A3A_fnc_AIVEHinit;
sleep 1;
[_truckVehicle,"Interceptor Infantry Truck"] spawn A3A_fnc_inmuneConvoy;
private _truckVehicleGroup = _truckData select 2;
private _truckVehicleCrew = units _truckVehicleGroup;
{[_x] call A3A_fnc_NATOinit} forEach _truckVehicleCrew;
_groups pushBack _truckVehicleGroup;
_vehicles pushBack _truckVehicle;

_truckGroupX = [_enemyOriginSitePosition, _sideX, _infantrySquadArray] call A3A_fnc_spawnGroup;
{
    _x assignAsCargo _truckVehicle; 
    _x moveInCargo _truckVehicle; 
    [_x] join _truckVehicleGroup; 
    [_x] call A3A_fnc_NATOinit;
} forEach units _truckGroupX;
deleteGroup _truckGroupX;

if(_difficultX) then {
    _truckGroupX2 = [_enemyOriginSitePosition, _sideX, _infantrySquadArray] call A3A_fnc_spawnGroup;
    {
        _x assignAsCargo _truckVehicle; 
        _x moveInCargo _truckVehicle; 
        [_x] join _truckVehicleGroup; 
        [_x] call A3A_fnc_NATOinit;
    } forEach units _truckGroupX2;
    deleteGroup _truckGroupX2;
};

//moving to airdrop location
private _escortWP = _escortVehicleGroup addWaypoint [_positionX, 50];
_escortWP setWaypointType "MOVE";
_escortWP setWaypointBehaviour "SAFE";
[2, format ["Placed Group: %1 in Lite Vehicle and set waypoint %2", _typeGroup, _positionX], _filename] call A3A_fnc_log;

_truckVehicleWp = _truckVehicleGroup addWaypoint [_positionX, 1];
_truckVehicleWp setWaypointType "GETOUT";
_truckVehicleWp setWaypointBehaviour "SAFE";
[3, format ["Transport Vehicle: %1, Crew: %2, Waypoint: %3", _truckClass, _truckVehicleCrew, _positionX], _filename] call A3A_fnc_log;


waitUntil {
    sleep 1;
    private _smokes = _positionX nearObjects ["SmokeShell", 200];
    count _smokes > 0 || (dateToNumber date > _dateLimitNum)
};

[2, "Players inside, looking for smoke grenades.", _fileName, true] call A3A_fnc_log;

private _smokes = _positionX nearObjects ["SmokeShell", 200];
private _planeVeh = objNull;


if(count _smokes > 0) then {
    [2, "Smoke detected, spawning airplane.", _fileName, true] call A3A_fnc_log;
    private _initialPlanePosition = [
        _positionX,
        1500,
        2000,
        0,
        0,
        1,
        0,
        [],
        [_positionX, _positionX]
    ] call BIS_fnc_findSafePos;
    private _height = random [500, 1000, 1300];
    private _direction = [_initialPlanePosition, _positionX] call BIS_fnc_DirTo;

    _planeData = [[_initialPlanePosition select 0, _initialPlanePosition select 1, _height], _direction, vehSDKPlane, teamPlayer] call BIS_fnc_spawnVehicle;
    _planeVeh = _planeData select 0;
    _planeVeh setPosATL [getPosATL _planeVeh select 0, getPosATL _planeVeh select 1, _height];
    _planeVeh disableAI "TARGET";
    _planeVeh disableAI "AUTOTARGET";
    _planeVeh flyInHeight 105;

    private _minAltASL = ATLToASL [_positionX select 0, _positionX select 1, 0];
    _planeVeh flyInHeightASL [(_minAltASL select 2) +100, (_minAltASL select 2) +100, (_minAltASL select 2) +100];

    _planeGroup = _planeData select 2;
    _groups pushBack _planeGroup;

    driver _planeVeh setCaptive true;
    _planeVeh allowDamage false;

    private _smokes = _positionX nearObjects ["SmokeShell", 200];
    private _dropPosition = _positionX;

    if(count _smokes > 0) then {
        private _smoke = _smokes select 0;
        _dropPosition = position _smoke;
    };

    _wp1 = group _planeVeh addWaypoint [_dropPosition, 0];
    _wp1 setWaypointType "MOVE";
    _wp1 setWaypointSpeed "LIMITED";
    _wp1 setWaypointBehaviour "CARELESS";
};

waitUntil {
    sleep 1;
    (!(isNull _planeVeh) && {_planeVeh inArea _airdropZoneMarker}) || (dateToNumber date > _dateLimitNum)
};

if(alive _planeVeh) then {
    [2, "Airdropping cargo.", _fileName] call A3A_fnc_log;

    sleep 2;
    private _box1 = [
        "CargoNet_01_barrels_F",
        position _planeVeh
    ] call SCRT_fnc_common_airdropCargo;
    _box1 enableRopeAttach true;
    _box1 allowDamage false;
    _box1 call jn_fnc_logistics_addAction;
    [_box1, teamPlayer] call A3A_fnc_AIVEHinit;

    sleep 2;
    private _box2 = [
        "Land_FoodSacks_01_cargo_brown_F",
        position _planeVeh
    ] call SCRT_fnc_common_airdropCargo;
    _box2 enableRopeAttach true;
    _box2 allowDamage false;
    _box2 call jn_fnc_logistics_addAction;
    [_box2, teamPlayer] call A3A_fnc_AIVEHinit;

    _boxes append [_box1, _box2];

    if(sunOrMoon < 1) then {
        [_box1, [0, 0, 1]] remoteExec ["SCRT_fnc_common_attachLightSource", 0, _box1];
        [_box2, [0, 0, 1]] remoteExec ["SCRT_fnc_common_attachLightSource", 0, _box2];
    };

    if(_difficultX) then {
        sleep 2;    
        private _ammoBox = [
            NATOAmmoBox,
            position _planeVeh
        ] call SCRT_fnc_common_airdropCargo;
        [_ammoBox] spawn A3A_fnc_fillLootCrate;
    };

    sleep 10;
    private _finalPosition = [_positionX, 3000, random 360] call BIS_fnc_relPos;
    _wp2 = group _planeVeh addWaypoint [_finalPosition, 1];
    _wp2 setWaypointSpeed "FULL";
    _wp2 setWaypointType "MOVE";
    _wp2 setWaypointStatements ["true","deleteVehicle this"];

    driver _planeVeh setCaptive false;
    _planeVeh allowDamage true;
};

waitUntil {
    sleep 1; 
    private _isInArea = false;
    {
        if(_x distance (getMarkerPos respawnTeamPlayer) < 25) exitWith {
            _isInArea = true;
        };
    } forEach _boxes;
    _isInArea or (dateToNumber date > _dateLimitNum)
};

private _boxesOnRebelHq = false;
{
    if(_x distance (getMarkerPos respawnTeamPlayer) < 25) exitWith {
        _boxesOnRebelHq = true;
    };
} forEach _boxes;

if(_boxesOnRebelHq) then {
    //make sure that both boxes will be counted
    sleep 5;

    private _boxesCount = { _x distance (getMarkerPos respawnTeamPlayer) < 25 } count _boxes;

    [0, 400 * _boxesCount] remoteExec ["A3A_fnc_resourcesFIA",2];
    { 
        [400 * _boxesCount, _x] call A3A_fnc_playerScoreAdd;
    } forEach (call BIS_fnc_listPlayers) select { side _x == teamPlayer || side _x == civilian};
    [20, theBoss] call A3A_fnc_playerScoreAdd;

    [
        "LOG",
        [
            format ["Our plane will drop some cargo at position %1. Go there and throw any smoke grenade on ground, the pilot will notice the signal. Bring cargo to HQ. Do this before %2.", _nameDest, _displayTime],
            "Catch Airdrop",
            _markerX
        ],
        _markerX,
        "SUCCEEDED",
        "plane"
    ] call A3A_fnc_taskUpdate;
} else {
    [
        "LOG",
        [
            format ["Our plane will drop some cargo at position %1. Go there and throw any smoke grenade on ground, the pilot will notice the signal. Bring cargo to HQ. Do this before %2.", _nameDest, _displayTime],
            "Catch Airdrop",
            _markerX
        ],
        _markerX,
        "FAILED",
        "plane"
    ] call A3A_fnc_taskUpdate;
	[-10,theBoss] call A3A_fnc_playerScoreAdd;
};

sleep 30;

_nul = [1200,"LOG"] spawn A3A_fnc_deleteTask;

{
    deleteVehicle _x;
} forEach _boxes;

deleteMarker _airdropZoneMarker;

{
    [_x] spawn A3A_fnc_vehDespawner
} forEach _vehicles;

{
    [_x] spawn A3A_fnc_groupDespawner
} forEach _groups;

[3, format ["Airdrop cleanup complete."], _filename] call A3A_fnc_log;


//TODO: 
//проверки на alive _planeVeh - если самолёт сбили до эирдропа, то всё
//свитч в условиях победы
//спавнить патруль через findSafePos - без грузовика, 1-2 отряда пехоты + коробочка/МРАП
private ["_positionX","_size","_buildings","_groupX","_typeUnit","_sideX","_building","_typeB","_frontierX","_typeVehX","_veh","_vehiclesX","_soldiers","_pos","_ang","_markerX","_unit","_return"];
_markerX = _this select 0;
_positionX = getMarkerPos _markerX;
_size = _this select 1;
_buildings = nearestObjects [_positionX, listMilBld, _size * 1.2, true];

if (count _buildings == 0) exitWith {[grpNull,[],[]]};

_sideX = _this select 2;
_frontierX = _this select 3;

_vehiclesX = [];
_soldiers = [];

_groupX = createGroup _sideX;
_typeUnit = if (_sideX==Occupants) then {
    staticCrewOccupants call SCRT_fnc_unit_selectInfantryTier
} else {
    staticCrewInvaders call SCRT_fnc_unit_selectInfantryTier
};

//New system to place helis, does not care about heli types currently
private _helicopterTypes = [];
_helicopterTypes pushBack (if (_sideX == Occupants) then {vehNATOPatrolHeli} else {vehCSATPatrolHeli});

if(tierWar > 3) then {
    if (_sideX == Occupants) then {
        _helicopterTypes append vehNATOTransportHelis;
    } else {
        _helicopterTypes append vehCSATTransportHelis;
    };
};

if(tierWar > 7 && {random 11 > tierWar}) then {
    if (_sideX == Occupants) then {
        _helicopterTypes append vehNATOAttackHelis;
    } else {
        _helicopterTypes append vehCSATAttackHelis;
    };
};

private _spawnParameter = [_markerX, "Heli"] call A3A_fnc_findSpawnPosition;
private _count = 1 + round (random 3); //Change these numbers as you want, first number is minimum, max is first plus second number
while {_spawnParameter isEqualType [] && {_count > 0}} do {
    _typeVehX = selectRandom _helicopterTypes;
    _veh = createVehicle [_typeVehX, (_spawnParameter select 0), [],0, "CAN_COLLIDE"];
    _veh setDir (_spawnParameter select 1);
    _vehiclesX pushBack _veh;
    _spawnParameter = [_markerX, "Heli"] call A3A_fnc_findSpawnPosition;
    _count = _count - 1;
};

private _heavyMarkers = airportsX + milbases;
if (_markerX in _heavyMarkers) then {
    private _vehicleTypes = if (_sideX == Occupants) then { vehNATOAPC } else { vehCSATAPC };
    if (tierWar > 5) then {
        if (_sideX == Occupants) then {
            _vehicleTypes append vehNATOTanks;
        } else {
            _vehicleTypes append vehCSATTanks;
        };
    };

    private _spawnVehParameter = [_markerX, "Vehicle"] call A3A_fnc_findSpawnPosition;
    private _count = 1 + round (random 3); //Change these numbers as you want, first number is minimum, max is first plus second number
    while {_spawnVehParameter isEqualType [] && {_count > 0}} do {
        _typeVehX = selectRandom _vehicleTypes;
        _veh = createVehicle [_typeVehX, (_spawnVehParameter select 0), [],0, "CAN_COLLIDE"];
        _veh setDir (_spawnVehParameter select 1);
        _vehiclesX pushBack _veh;
        _spawnVehParameter = [_markerX, "Vehicle"] call A3A_fnc_findSpawnPosition;
        _count = _count - 1;
    };
};

private _fnc_spawnStatic = {
    params ["_type", "_pos", "_dir"];
    private _veh = createVehicle [_type, _pos, [], 0, "CAN_COLLIDE"];
    if (!isNil "_dir") then { _veh setDir _dir };
    private _unit = [_groupX, _typeUnit, _positionX, [], 0, "NONE"] call A3A_fnc_createUnit;
    [_unit,_markerX] call A3A_fnc_NATOinit;
    _unit moveInGunner _veh;
    _soldiers pushBack _unit;
    _vehiclesX pushBack _veh;
    _veh
};

for "_i" from 0 to (count _buildings) - 1 do
{
    if (spawner getVariable _markerX == 2) exitWith {};
    private _building = _buildings select _i;
    private _typeB = typeOf _building;

    call {
        if (isObjectHidden _building) exitWith {};			// don't put statics on destroyed buildings
        switch (true) do {
            case (_typeB in ["Land_Cargo_Patrol_V1_F", "Land_Cargo_Patrol_V2_F", "Land_Cargo_Patrol_V3_F","Land_Cargo_Patrol_V4_F"]): {
                private _type = if (_sideX == Occupants) then {NATOMG} else {CSATMG};
                private _dir = (getDir _building) - 180;
                private _zpos = AGLToASL (_building buildingPos 1);
                private _pos = _zpos getPos [1.5, _dir];			// zeroes Z value because BIS
                _pos = ASLToATL ([_pos select 0, _pos select 1, _zpos select 2]);
                [_type, _pos, _dir] call _fnc_spawnStatic;
            };
            case (_typeB == "Land_Hlaska"): {
                private _type = if (_sideX == Occupants) then {NATOMG} else {CSATMG};
                private _dir = (getDir _building);
                private _zpos = AGLToASL (_building buildingPos 1);
                private _pos = _zpos getPos [0.5, _dir];
                _pos = ASLToATL ([_pos select 0, _pos select 1, _zpos select 2]);
                [_type, _pos, _dir] call _fnc_spawnStatic;
            };
            case (_typeB in ["Land_fortified_nest_small_EP1", "Land_BagBunker_Small_F", "Land_BagBunker_01_small_green_F", "Land_fortified_nest_small", "Fort_Nest"]): {
                private _type = if (_sideX == Occupants) then {NATOMG} else {CSATMG};
                private _dir = (getDir _building) - 180;
                private _zpos = AGLToASL (_building buildingPos 1);
                private _pos = _zpos getPos [-1, _dir];
                _pos = ASLToATL ([_pos select 0, _pos select 1, _zpos select 2]);
                [_type, _pos, _dir] call _fnc_spawnStatic;
            };
            case (_typeB == "Land_ControlTower_02_F"): {
                private _type = if (_sideX == Occupants) then {NATOMG} else {CSATMG};
                private _dir = (getDir _building) - 180;
                private _zpos = AGLToASL (_building buildingPos 15);
                private _pos = _zpos getPos [0, _dir];
                _pos = ASLToATL ([(_pos select 0) + 4.2, (_pos select 1) - 2, (_zpos select 2) + 0.5]);
                [_type, _pos, _dir] call _fnc_spawnStatic;
            };
            case (_typeB in ["Land_Cargo_Tower_V1_F","Land_Cargo_Tower_V1_No1_F","Land_Cargo_Tower_V1_No2_F","Land_Cargo_Tower_V1_No3_F","Land_Cargo_Tower_V1_No4_F","Land_Cargo_Tower_V1_No5_F","Land_Cargo_Tower_V1_No6_F","Land_Cargo_Tower_V1_No7_F","Land_Cargo_Tower_V2_F", "Land_Cargo_Tower_V3_F", "Land_Cargo_Tower_V4_F"]): {
                private _type = if (_sideX == Occupants) then {NATOMG} else {CSATMG};
                private _gmgType = if (_sideX == Occupants) then {NATOMG} else {CSATMG};
                _dir = getDir _building;
                _zOffset = [0, 0, -0.3]; //fix spawn hight
                _Tdir = _dir + 90; //relative rotation to building
                _zpos = AGLToASL (_building buildingPos 11); //relative East
                _pos = _zpos getPos [-1, _Tdir]; //offset
                _zpos = _zpos vectorAdd _zOffset;
                _pos = ASLToATL ([_pos select 0, _pos select 1, _zpos select 2]);
                [_gmgType, _pos, _Tdir] call _fnc_spawnStatic;
                sleep 0.5;			// why only here?
                _Tdir = _dir + 0;
                _zpos = AGLToASL (_building buildingPos 13); //relative North
                _pos = _zpos getPos [-0.8, _Tdir]; //offset
                _zpos = _zpos vectorAdd _zOffset;
                _pos = ASLToATL ([_pos select 0, _pos select 1, _zpos select 2]);
                [_type, _pos, _Tdir] call _fnc_spawnStatic;
                sleep 0.5;
                _Tdir = _dir + 180;
                _zpos = AGLToASL (_building buildingPos 15); //relative South
                _pos = _zpos getPos [-0.2, _Tdir]; //offset
                _zpos = _zpos vectorAdd _zOffset;
                _pos = ASLToATL ([_pos select 0, _pos select 1, _zpos select 2]);
                [_gmgType, _pos, _Tdir] call _fnc_spawnStatic;
            };
            case (_typeB == "Land_Radar_01_HQ_F"): {
                private _type = if (_sideX == Occupants) then {selectRandom staticAAOccupants} else {selectRandom staticAAInvaders};
                private _dir = getDir _building;
                private _zpos = AGLToASL (_building buildingPos 30);
                private _pos = getPosASL _building;
                _pos = ASLToATL ([_pos select 0, _pos select 1, _zpos select 2]);
                [_type, _pos, _dir] call _fnc_spawnStatic;
            };
            case (_typeB in ["Land_Cargo_HQ_V1_F","Land_Cargo_HQ_V2_F","Land_Cargo_HQ_V3_F","Land_Cargo_HQ_V4_F"]): {
                private _type = if (_sideX == Occupants) then {selectRandom staticAAOccupants} else {selectRandom staticAAInvaders};
                private _dir = getDir _building;
                private _zpos = AGLToASL (_building buildingPos 8);
                private _zOffset = [0, 0, 0.15];
                _zpos = _zpos vectorAdd _zOffset;
                private _pos = getPosASL _building;
                _pos = ASLToATL ([_pos select 0, _pos select 1, _zpos select 2]);
                [_type, _pos, _dir] call _fnc_spawnStatic;
            };
            case (_typeB == "Land_Radar_01_HQ_F"): {
                private _type = if (_sideX == Occupants) then {staticATOccupants} else {staticATInvaders};
                private _dir = getDir _building;
                private _zOffset = [0, 0, -0.15]; //fix spawn hight
                private _zpos = AGLToASL (_building buildingPos 35);
                _zpos = _zpos vectorAdd _zOffset;
                private _pos = getPosASL _building;
                _pos = ASLToATL ([_pos select 0, _pos select 1, _zpos select 2]);
                [_type, _pos, _dir] call _fnc_spawnStatic;
            };
            case (_typeB in ["land_gm_sandbags_02_bunker_high", "land_gm_woodbunker_01_bags"]): {
                private _type = if (_sideX == Occupants) then {NATOMG} else {CSATMG};
                private _dir = getDir _building;
                private _zpos = AGLToASL (position _building);
                private _pos = _zpos getPos [0, _dir];
                _pos = ASLToATL ([_pos select 0, _pos select 1, _zpos select 2]);
                private _static = [_type, _pos, _dir] call _fnc_spawnStatic;
                _static setPos _pos; //for some stupid reason position should be reapplied after everything
            };
            case (_typeB in ["Land_HBarrier_01_big_tower_green_F", "Land_HBarrierTower_F"]): {
                private _type = if (_sideX == Occupants) then {NATOMG} else {CSATMG};
                private _dir = (getDir _building) - 180;
                private _zpos = AGLToASL (position _building);
                private _zOffset = [0, 0, 2.25];
                _zpos = _zpos vectorAdd _zOffset;
                private _pos = _zpos getPos [1.5, _dir];
                _pos = ASLToATL ([_pos select 0, _pos select 1, _zpos select 2]);
                private _static = [_type, _pos, _dir] call _fnc_spawnStatic;
                _static setPos _pos; //for some stupid reason position should be reapplied after everything
            };
            case (_typeB in ["Land_Fort_Watchtower_EP1", "Land_Fort_Watchtower", "Land_HBarrier_01_tower_green_F", "Land_BagBunker_Tower_F"]): {
                private _type = if (_sideX == Occupants) then {NATOMG} else {CSATMG};
                private _dir = (getDir _building) - 180;
                private _zpos = AGLToASL (position _building);
                private _zOffset = [0, 0, 2.85];
                _zpos = _zpos vectorAdd _zOffset;
                private _pos = _zpos getPos [1.5, _dir];
                _pos = ASLToATL ([_pos select 0, _pos select 1, _zpos select 2]);
                private _static = [_type, _pos, _dir] call _fnc_spawnStatic;
                _static setPos _pos; //for some stupid reason position should be reapplied after everything
            };
            case (_typeB in ["Land_BagBunker_Large_F", "Land_fortified_nest_big_EP1", "Land_fortified_nest_big", "Land_BagBunker_01_large_green_F"]): {
                private _type = if (_sideX == Occupants) then {NATOMG} else {CSATMG};
                private _dir = (getDir _building) - 180;
                private _zpos = AGLToASL (_building buildingPos 4);
                private _pos = _zpos getPos [2, _dir];
                _pos = ASLToATL ([_pos select 0, _pos select 1, _zpos select 2]);
                private _static = [_type, _pos, _dir] call _fnc_spawnStatic;
                _static setPos _pos; //for some stupid reason position should be reapplied after everything
            };
            case (_typeB == "Land_Bunker_01_big_F"): {
                private _type = if (_sideX == Occupants) then {NATOMG} else {CSATMG};
                private _dir = (getDir _building) - 180;
                private _zpos = AGLToASL (_building buildingPos 2);
                private _pos = _zpos getPos [-1, _dir];
                _pos = ASLToATL ([_pos select 0, _pos select 1, _zpos select 2]);
                private _static = [_type, _pos, _dir] call _fnc_spawnStatic;
                _static setPos _pos; //for some stupid reason position should be reapplied after everything
                _zpos = AGLToASL (_building buildingPos 5);
                _pos = _zpos getPos [-1, _dir];
                _pos = ASLToATL ([_pos select 0, _pos select 1, _zpos select 2]);
                _static = [_type, _pos, _dir] call _fnc_spawnStatic;
                _static setPos _pos; //for some stupid reason position should be reapplied after everything
            };
            case (_typeB == "Land_Bunker_01_small_F"): {
                private _type = if (_sideX == Occupants) then {NATOMG} else {CSATMG};
                private _dir = (getDir _building) - 180;
                private _zpos = AGLToASL (_building buildingPos 1);
                private _pos = _zpos getPos [-1, _dir];
                _pos = ASLToATL ([_pos select 0, _pos select 1, _zpos select 2]);
                private _static = [_type, _pos, _dir] call _fnc_spawnStatic;
                _static setPos _pos; //for some stupid reason position should be reapplied after everything
            };
            case (_typeB == "Land_Bunker_01_tall_F"): {
                private _type = if (_sideX == Occupants) then {NATOMG} else {CSATMG};
                private _dir = (getDir _building) - 180;
                private _zpos = AGLToASL (_building buildingPos 3);
                private _pos = _zpos getPos [-1.5, _dir];
                _pos = ASLToATL ([_pos select 0, _pos select 1, _zpos select 2]);
                private _static = [_type, _pos, _dir] call _fnc_spawnStatic;
                _static setPos _pos; //for some stupid reason position should be reapplied after everything
            };
            case (_typeB == "land_gm_euro_misc_viewplatform_01"): {
                private _type = if (_sideX == Occupants) then {selectRandom staticAAOccupants} else {selectRandom staticAAInvaders};
                private _dir = (getDir _building) - 180;
                private _zpos = AGLToASL (position _building);
                private _zOffset = [0, 0, 5.2];
                _zpos = _zpos vectorAdd _zOffset;
                private _pos = _zpos getPos [0.6, _dir];
                _pos = ASLToATL ([_pos select 0, _pos select 1, _zpos select 2]);
                private _static = [_type, _pos, _dir] call _fnc_spawnStatic;
                _static setPos _pos; //for some stupid reason position should be reapplied after everything
            };
        };
    };
};

[_groupX,_vehiclesX,_soldiers]
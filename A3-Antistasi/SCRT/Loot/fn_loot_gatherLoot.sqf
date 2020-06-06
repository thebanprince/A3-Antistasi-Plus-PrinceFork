/*
	author: Socrates
	description: Loots all the bodies near the vehicle.
	returns: nothing
*/
params ["_vehicle"];

private _time = if (isMultiplayer) then {serverTime} else {time};

if ((_time - (_vehicle getVariable ["lastLooted", -15])) < 15) exitWith {
	if (hasInterface) then {
        localize "STR_antistasi_actions_looter_cooldown_text" remoteExec ["hint", teamPlayer];
	};
};
_vehicle setVariable ["lastLooted", _time, true];

_allSupplies = position _vehicle nearSupplies 50;
_supplies = [];

//getting everything except all kinds of vehicles, alive soldiers and non-surrender boxes
{
    if ((_x isKindOf "Man" && alive _x)
        || (_x isKindOf "LandVehicle")
        || (_x isKindOf "Air")
        || (_x isKindOf "Ship")
        || (_x isKindOf "ReammoBox_F" && !(typeOf _x == "Box_IND_Wps_F"))) then {
        //skip
    } else {
       _supplies pushBack _x;
    };
} forEach _allSupplies;

if(count _supplies < 1) exitWith {
    localize "STR_antistasi_actions_no_bodies_text" remoteExec ["systemChat", teamPlayer];
};



{
    _lootContainer = _x;

    _magazines = magazineCargo _lootContainer;
    if (count _magazines > 0) then {
        {
            _vehicle addMagazineCargoGlobal [_x, 1];
        } forEach _magazines;
    };

    _backpacks = backpackCargo _lootContainer;
    if (count _backpacks > 0) then {
        {
            _vehicle addBackpackCargoGlobal [_x, 1];
        } forEach _backpacks;
    };

    _items = itemCargo _lootContainer;
    if (count _items > 0) then {
        {
            _vehicle addItemCargoGlobal [_x, 1];
        } forEach _items;
    };

     _weaponsWithAttachments = weaponsItems _lootContainer;
    if(count _weaponsWithAttachments > 0) then {
        {
            _vehicle addWeaponWithAttachmentsCargoGlobal [_x, 1];
        } forEach _weaponsWithAttachments;
    };

    if(_lootContainer isKindOf "Man") then {
        _body = _lootContainer;

        _assignedItems = assignedItems _body;
        if(count _assignedItems > 0) then {
            {
                _vehicle addItemCargoGlobal [_x,1];
                _body unassignItem _x;
                _body removeItem _x;
            } forEach _assignedItems;
        };

        _bodyMagazines = magazines _body;
        if (count _bodyMagazines > 0) then {
            {
                _vehicle addMagazineCargoGlobal [_x, 1];
                _body removeMagazines _x;
            } forEach _bodyMagazines;
        };

        _vest = vest _body;
        if (_vest != "") then {
            _vehicle addItemCargoGlobal [_vest,1];
            removeVest _body;
        };

        _headgear = headgear _body;
        if (_headgear != "") then {
            _vehicle addItemCargoGlobal [_headgear,1];
            removeHeadgear _body;
        };

        _backpack = backpack _body;
        if (_backpack != "") then {
            _vehicle addBackpackCargoGlobal [_backpack,1];
            removeBackpack _body;
        };

        removeAllWeapons _body;
    };

    if !(_lootContainer isKindOf "Man") then {
        deleteVehicle _lootContainer;
    };

} forEach _supplies;

//notification on success
_soundPath = [(str missionConfigFile), 0, -15] call BIS_fnc_trimString;
_soundToPlay = _soundPath + "audio\lootSuccess.ogg";
//TODO: possible bug with multiple sounds
[[_soundToPlay, player]] remoteExec ["playSound3D", 0, false];
//playSound3D [_soundToPlay, _vehicle];
localize "STR_antistasi_actions_successful_loot_text" remoteExec ["systemChat", teamPlayer];
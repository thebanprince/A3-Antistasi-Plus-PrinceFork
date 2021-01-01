params ["_vehicleType"];

#define K_UP 200
#define K_DOWN 208

private _fileName = "trader_pickFromVehiclePool";

if (!(isNil "placingVehicle") && {placingVehicle}) exitWith {
    ["Vehicle Market", "Unable to buy vehicle, you are already placing something."] call SCRT_fnc_misc_showDeniedActionHint;
};

if (player != player getVariable ["owner",player]) exitWith {
    ["Vehicle Market", "You cannot buy vehicles while you are controlling AI."] call SCRT_fnc_misc_showDeniedActionHint;
};

private _airports = { sidesX getVariable [_x, sideUnknown] == teamPlayer } count airportsX;

if(_vehicleType in ["HELI", "PLANE"] && {_airports < 1}) exitWith {
    ["Vehicle Market", "You cannot buy helicopters or planes without captured airports."] call SCRT_fnc_misc_showDeniedActionHint;
};

if (isNil "vehicleMarketIsOpen") then {
	vehicleMarketIsOpen = false;
};

vehicleMarket_vehiclesAvailable = [];
vehicleMarket_vehicleIndex = 0;

switch(true) do {
    case(_vehicleType == "UAV"): {
        vehicleMarket_vehiclesAvailable = shop_UAV;
    };
    case(_vehicleType == "AA"): {
        if(tierWar > 7) then {
            vehicleMarket_vehiclesAvailable = shop_AA;
        } else {
            vehicleMarket_vehiclesAvailable pushBack (shop_AA select 0);
            if(tierWar > 4) then {
                vehicleMarket_vehiclesAvailable pushBack (shop_AA select 1);
            };
        };
    };
    case(_vehicleType == "MRAP"): {
        if(tierWar > 7) then {
            vehicleMarket_vehiclesAvailable = shop_MRAP;
        } else {
            vehicleMarket_vehiclesAvailable pushBack (shop_MRAP select 0);
            if(tierWar > 4) then {
                vehicleMarket_vehiclesAvailable pushBack (shop_MRAP select 1);
            };
        };
    };
    case(_vehicleType == "WHEELED_APC"): {
        if(tierWar > 7) then {
            vehicleMarket_vehiclesAvailable = shop_wheel_apc;
        } else {
            vehicleMarket_vehiclesAvailable pushBack (shop_wheel_apc select 0);
            if(tierWar > 4) then {
                vehicleMarket_vehiclesAvailable pushBack (shop_wheel_apc select 1);
            };
        };
    };
    case(_vehicleType == "TRACKED_APC"): {
        if(tierWar > 7) then {
            vehicleMarket_vehiclesAvailable = shop_track_apc;
        } else {
            vehicleMarket_vehiclesAvailable pushBack (shop_track_apc select 0);
            if(tierWar > 4) then {
                vehicleMarket_vehiclesAvailable pushBack (shop_track_apc select 1);
            };
        };
    };
    case(_vehicleType == "HELI"): {
        if(tierWar > 7) then {
            vehicleMarket_vehiclesAvailable = shop_heli;
        } else {
            vehicleMarket_vehiclesAvailable pushBack (shop_heli select 0);
            if(tierWar > 4) then {
                vehicleMarket_vehiclesAvailable pushBack (shop_heli select 1);
            };
        };
    };
    case(_vehicleType == "TANK"): {
        if(tierWar > 7) then {
            vehicleMarket_vehiclesAvailable = shop_tank;
        } else {
            vehicleMarket_vehiclesAvailable pushBack (shop_tank select 0);
            if(tierWar > 4) then {
                vehicleMarket_vehiclesAvailable pushBack (shop_tank select 1);
            };
        };
    };
    case(_vehicleType == "PLANE"): {
        if(tierWar > 7) then {
            vehicleMarket_vehiclesAvailable = shop_plane;
        } else {
            vehicleMarket_vehiclesAvailable pushBack (shop_plane select 0);
            if(tierWar > 4) then {
                vehicleMarket_vehiclesAvailable pushBack (shop_plane select 1);
            };
        };
    };
    default { 
        [1, format ["Bad Vehicle Type - %1 ", _vehicleType], _fileName] call A3A_fnc_log;
    };
};

if (count vehicleMarket_vehiclesAvailable < 1) exitWith {
    [3, "Unable to select vehicle pool, exiting function.", _fileName] call A3A_fnc_log;
};

private _initialType = vehicleMarket_vehiclesAvailable select vehicleMarket_vehicleIndex;

//We define this once and never remove it
//Because removing handlers can cause the IDs other handlers to change, stopping them being removed.
if (isNil "vehicleMarket_keyDownHandler") then {
	vehicleMarket_keyDownHandler = (findDisplay 46) displayAddEventHandler ["KeyDown",
	{
		if (!vehicleMarketIsOpen) exitWith {false;};
		private _handled = false;
		private _leave = false;
		//Next vehicle
		if (_this select 1 == K_UP) then {
			_handled = true;
			if (vehicleMarket_vehicleIndex + 1 > (count vehicleMarket_vehiclesAvailable) - 1) then {
                vehicleMarket_vehicleIndex = 0;
            } else {
                vehicleMarket_vehicleIndex = vehicleMarket_vehicleIndex + 1;
            };

			private _type = vehicleMarket_vehiclesAvailable select vehicleMarket_vehicleIndex;
			[_type] call A3A_fnc_vehPlacementChangeVehicle;
		};

		//Previous vehicle
		if (_this select 1 == K_DOWN) then {
			_handled = true;
			if (vehicleMarket_vehicleIndex - 1 < 0) then {
                vehicleMarket_vehicleIndex = (count vehicleMarket_vehiclesAvailable) - 1;
            } else {
                vehicleMarket_vehicleIndex = vehicleMarket_vehicleIndex - 1;
            };
            
		    private _type = vehicleMarket_vehiclesAvailable select vehicleMarket_vehicleIndex;
			[_type] call A3A_fnc_vehPlacementChangeVehicle;
		};
		_handled;
	}];
};

vehiclePurchase_cost = [_initialType] call A3A_fnc_vehiclePrice;

private _resourcesFIA = player getVariable "moneyX";

if (_resourcesFIA < vehiclePurchase_cost) exitWith {
    ["Vehicle Market", format ["You do not have enough money for this vehicle: %1 € required",vehiclePurchase_cost]] call SCRT_fnc_misc_showDeniedActionHint;
};

private _extraMessage = format ["Arrow Up-Down to Switch Vehicles<br/> Buying vehicle for $%1", vehiclePurchase_cost];

vehicleMarketIsOpen = true;
[_initialType, "BUYVEHICLEMARKET", _extraMessage] call A3A_fnc_vehPlacementBegin;
if(!isServer) exitWith{};
scopeName "Main";
private _filename = "fn_missionRequest";
params ["_type", ["_requester", clientOwner], ["_autoSelect", false]];
if(isNil "_type") then {
	if (leader group Petros != Petros) then {breakOut "Main"};
	private _types = ["CON","DES","LOG","RES","CONVOY"];
	_type = selectRandom (_types select {!([_x] call BIS_fnc_taskExists)});
	if (isNil "_type") then {breakOut "Main"}; //you have all the mission types
	_autoSelect = true;
};
if ([_type] call BIS_fnc_taskExists) exitWith {if (!_autoSelect) then {[petros,"globalChat","I already gave you a mission of this type"] remoteExec ["A3A_fnc_commsMP",_requester]}};

private _findIfNearAndHostile = {
	/*
	Input : single array of markers, do 'array + array' for multiple.
	Returns: array of markers within max mission distance and is not rebel.
	*/
	params ["_Markers"];
	_Markers = _Markers select {(getMarkerPos _x distance2D getMarkerPos respawnTeamPlayer < distanceMission) && (sidesX getVariable [_x,sideUnknown] != teamPlayer)};
	_Markers
};

private _possibleMarkers = [];
switch (_type) do {
	case "AS": {
		//find apropriate sites
		_possibleMarkers = [airportsX + milbases + citiesX] call _findIfNearAndHostile;
		_possibleMarkers = _possibleMarkers select {spawner getVariable _x == 2};
		//add controlsX not on roads and on the 'frontier'
		private _controlsX = [controlsX] call _findIfNearAndHostile;
		private _nearbyFriendlyMarkers = markersX select {
			(getMarkerPos _x inArea [getMarkerPos respawnTeamPlayer, distanceMission+distanceSPWN, distanceMission+distanceSPWN, 0, false])
			and (sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer)
		};
		_nearbyFriendlyMarkers deleteAt (_nearbyFriendlyMarkers find "Synd_HQ");
		{
			private _pos = getmarkerPos _x;
			if !(isOnRoad _pos) then {
				if (_nearbyFriendlyMarkers findIf {getMarkerPos _x distance _pos < distanceSPWN} != -1) then {_possibleMarkers pushBack _x};
			};
		}forEach _controlsX;

		private _nearbyCities = [citiesX] call _findIfNearAndHostile;
		private _policeCities = [];

		if(count _nearbyCities > 0) then {
			private _policeCityIndex = _nearbyCities findIf {
				private _policeStations = nearestObjects [getMarkerPos _x, ["Land_zachytka","Land_PoliceStation_01_F","Land_i_Barracks_V2_F"], 800, true];
				_policeStations = _policeStations select {alive _x};
				count _policeStations > 0  
			};

			if(_policeCityIndex != -1) then {
				_policeCities pushBack (_nearbyCities select _policeCityIndex);
			};
		};

		if (count _possibleMarkers == 0) then {
			if (!_autoSelect) then {
				[petros,"globalChat","I have no assasination missions for you. Move our HQ closer to the enemy"] remoteExec ["A3A_fnc_commsMP",_requester];
				[petros,"hint","Assasination Missions require cities, Patrolled Jungles or Airports closer than 4Km from your HQ.", "Missions"] remoteExec ["A3A_fnc_commsMP",_requester];
			};
		} else {
			private _site = selectRandom _possibleMarkers;
			private _ambushRoll = random 100;

			switch(true) do {
				case (_ambushRoll < 15): {
					[[_site],"A3A_fnc_AS_Ambush"] remoteExec ["A3A_fnc_scheduler",2];
				};
				case (count _policeCities > 0): {
					_policeCity = selectRandom _policeCities;
					[[_policeCity],"A3A_fnc_AS_Collaborationist"] remoteExec ["A3A_fnc_scheduler",2];
				};
				case (_site in airportsX): {
					[[_site],"A3A_fnc_AS_Official"] remoteExec ["A3A_fnc_scheduler",2];
				};
				case (_site in citiesX): {
					[[_site],"A3A_fnc_AS_Traitor"] remoteExec ["A3A_fnc_scheduler",2];
				};
				default {
					[[_site],"A3A_fnc_AS_SpecOP"] remoteExec ["A3A_fnc_scheduler",2];
				};
			};
		};
	};

	case "CON": {
		//find apropriate sites
		_possibleMarkers = [outposts + resourcesX + (controlsX select {isOnRoad (getMarkerPos _x)})] call _findIfNearAndHostile;

		if (count _possibleMarkers == 0) then {
			if (!_autoSelect) then {
				[petros,"globalChat","I have no Conquest missions for you. Move our HQ closer to the enemy."] remoteExec ["A3A_fnc_commsMP",_requester];
				[petros,"hint","Conquest Missions require roadblocks or outposts closer than 4Km from your HQ.", "Missions"] remoteExec ["A3A_fnc_commsMP",_requester];
			};
		} else {
			private _site = selectRandom _possibleMarkers;
			[[_site],"A3A_fnc_CON_Outpost"] remoteExec ["A3A_fnc_scheduler",2];
		};
	};

	case "DES": {
		//find apropriate sites
		_possibleMarkers = [airportsX] call _findIfNearAndHostile;
		_possibleMarkers = _possibleMarkers select {spawner getVariable _x == 2};

		private _controlsX = [controlsX] call _findIfNearAndHostile;
		private _nearbyFriendlyMarkers = markersX select {
			(getMarkerPos _x inArea [getMarkerPos respawnTeamPlayer, distanceMission+distanceSPWN, distanceMission+distanceSPWN, 0, false])
			and (sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer)
		};
		_nearbyFriendlyMarkers deleteAt (_nearbyFriendlyMarkers find "Synd_HQ");
		{
			private _pos = getmarkerPos _x;
			if !(isOnRoad _pos) then {
				if (_nearbyFriendlyMarkers findIf {getMarkerPos _x distance _pos < distanceSPWN} != -1) then {
					_possibleMarkers pushBack _x
				};
			};
		} forEach _controlsX;

		//append occupants antennas to list
		{
			private _nearbyMarker = [markersX, getPos _x] call BIS_fnc_nearestPosition;
			if (
				(sidesX getVariable [_nearbyMarker,sideUnknown] == Occupants)
				&& (getPos _x distance getMarkerPos respawnTeamPlayer < distanceMission)
				) then {_possibleMarkers pushBack _x};
		}forEach antennas;

		if (count _possibleMarkers == 0) then {
			if (!_autoSelect) then {
				[petros,"globalChat","I have no destroy missions for you. Move our HQ closer to the enemy"] remoteExec ["A3A_fnc_commsMP",_requester];
				[petros,"hint","Destroy Missions require Airbases or Radio Towers closer than 4Km from your HQ.", "Missions"] remoteExec ["A3A_fnc_commsMP",_requester];
			};
		} else {
			private _site = selectRandom _possibleMarkers;
			switch (true) do {
				case (_site in airportsX): {
					if (random 10 < 8) then {
						[[_site],"A3A_fnc_DES_Vehicle"] remoteExec ["A3A_fnc_scheduler",2];
					} else {
						[[_site],"A3A_fnc_DES_Heli"] remoteExec ["A3A_fnc_scheduler",2];
					};
				};
				case (_site in antennas): {
					[[_site],"A3A_fnc_DES_antenna"] remoteExec ["A3A_fnc_scheduler",2];
				};
				case (_site in controlsX): {
					[[_site],"A3A_fnc_DES_Artillery"] remoteExec ["A3A_fnc_scheduler",2];
				};
			};
		};
	};

	case "LOG": {
		//find apropriate sites
		_possibleMarkers = [Seaports + outposts] call _findIfNearAndHostile;
		{
			private _prestige = server getVariable _x;
			if (((_prestige select 2) + (_prestige select 3)) < 90) then {_possibleMarkers pushBack _x};
		}forEach ([citiesX - destroyedSites] call _findIfNearAndHostile);

		//append banks in hostile cities
		if (random 100 < 20) then {
			{
				private _nearbyMarker = [markersX, getPos _x] call BIS_fnc_nearestPosition;
				if ((sidesX getVariable [_nearbyMarker,sideUnknown] != teamPlayer) && (getPos _x distance getMarkerPos respawnTeamPlayer < distanceMission)) then {
					_possibleMarkers pushBack _x
				};
			}forEach banks;
		};

		if (count _possibleMarkers == 0) then {
			if (!_autoSelect) then {
				[petros,"globalChat","I have no logistics missions for you. Move our HQ closer to the enemy"] remoteExec ["A3A_fnc_commsMP",_requester];
				[petros,"hint","Logistics Missions require Outposts, Cities or Banks closer than 4Km from your HQ.", "Missions"] remoteExec ["A3A_fnc_commsMP",_requester];
			};
		} else {
			private _site = selectRandom _possibleMarkers;
			switch(true) do {
                case(_site in citiesX): {
                    [[_site],"A3A_fnc_LOG_Supplies"] remoteExec ["A3A_fnc_scheduler", 2];
                };
                case(_site in outposts): {
                    [[_site],"A3A_fnc_LOG_Ammo"] remoteExec ["A3A_fnc_scheduler", 2];
                };
                case(_site in banks): {
                    [[_site],"A3A_fnc_LOG_Bank"] remoteExec ["A3A_fnc_scheduler", 2];
                };
                case(_site in Seaports): {
                    [[_site],"A3A_fnc_LOG_Salvage"] remoteExec ["A3A_fnc_scheduler", 2];
                };
                case(_site in controlsX): {
					private _roll = random 100;
					if(_roll < 50) then {
						[[_site],"A3A_fnc_LOG_Airdrop"] remoteExec ["A3A_fnc_scheduler",2];
					} else {
						[[_site],"A3A_fnc_LOG_Helicrash"] remoteExec ["A3A_fnc_scheduler", 2];
					};
                };
                default {};
            };
		};
	};

	case "RES": {
		_possibleMarkers = [citiesX] call _findIfNearAndHostile;
		{
			private _spawner = spawner getVariable _x;
			if (_spawner == 2) then {_possibleMarkers pushBack _x};
		} forEach ([airportsX + outposts] call _findIfNearAndHostile);

		if (count _possibleMarkers == 0) then {
			if (!_autoSelect) then {
				[petros,"globalChat","I have no rescue missions for you. Move our HQ closer to the enemy"] remoteExec ["A3A_fnc_commsMP",_requester];
				[petros,"hint","Rescue Missions require Cities or Airports closer than 4Km from your HQ.", "Missions"] remoteExec ["A3A_fnc_commsMP",_requester];
			};
		} else {
			private _site = selectRandom _possibleMarkers;
			private _shipwreckRoll = random 100;
			if(_shipwreckRoll < 15) then {
				[[_site],"A3A_fnc_RES_Shipwreck"] remoteExec ["A3A_fnc_scheduler",2];
			} else {
				if (_site in citiesX) then {
					[[_site],"A3A_fnc_RES_Refugees"] remoteExec ["A3A_fnc_scheduler",2]
				} else {
					[[_site],"A3A_fnc_RES_Prisoners"] remoteExec ["A3A_fnc_scheduler",2]
				};
			};
		};
	};

	case "CONVOY": {
		if (bigAttackInProgress) exitWith {
			if (!_autoSelect) then {
				[petros,"globalChat","There is a big battle around, I don't think the enemy will send any convoy"] remoteExec ["A3A_fnc_commsMP",_requester];
				[petros,"hint","Convoy Missions require a calmed status around the island, and now it is not the proper time.", "Missions"] remoteExec ["A3A_fnc_commsMP",_requester];
			};
		};
		//prety mutch untuched, not mutch in common with the others
		private _Markers = (airportsX + resourcesX + factories + seaports + outposts + milbases - blackListDest);
		_Markers = _Markers select {sidesX getVariable [_x,sideUnknown] != teamPlayer};
		if (count _Markers > 0) then {
			for "_i" from 0 to ((count _Markers) - 1) do {
				private _site = _Markers select _i;
				private _pos = getMarkerPos _site;
				private _base = [_site] call A3A_fnc_findBasesForConvoy;
				if ((_pos distance (getMarkerPos respawnTeamPlayer) < (distanceMission*2)) and (_base !="")) then {
					if (
						((sidesX getVariable [_site,sideUnknown] == Occupants) and (sidesX getVariable [_base,sideUnknown] == Occupants))
						or ((sidesX getVariable [_site,sideUnknown] == Invaders) and (sidesX getVariable [_base,sideUnknown] == Invaders))
					) then {_possibleMarkers pushBack _site};
				};
			};
		};

		if (count _possibleMarkers == 0) then
		{
			if (!_autoSelect) then {
				[petros,"globalChat","I have no Convoy missions for you. Move our HQ closer to the enemy"] remoteExec ["A3A_fnc_commsMP",_requester];
				[petros,"hint","Convoy Missions require Airports or Cities closer than 5Km from your HQ, and they must have an idle friendly base in their surroundings.", "Missions"] remoteExec ["A3A_fnc_commsMP",_requester];
			};
		} else {
			private _site = selectRandom _possibleMarkers;
			private _base = [_site] call A3A_fnc_findBasesForConvoy;
			[[_site,_base],"A3A_fnc_convoy"] remoteExec ["A3A_fnc_scheduler",2];
		};
	};

	default {
		[1, format ["%1 is not an accepted task type", _type], _filename] call A3A_fnc_log;
	};
};
if ((count _possibleMarkers > 0) and (!_autoSelect)) then {[petros,"globalChat","I have a mission for you"] remoteExec ["A3A_fnc_commsMP",_requester]};

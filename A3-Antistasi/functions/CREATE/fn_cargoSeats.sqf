private ["_veh","_sideX","_return","_totalSeats","_crewSeats","_cargoSeats","_countX"];
_veh = _this select 0;
_sideX = _this select 1;

_return = "";
_totalSeats = [_veh, true] call BIS_fnc_crewCount; // Number of total seats: crew + non-FFV cargo/passengers + FFV cargo/passengers
_crewSeats = [_veh, false] call BIS_fnc_crewCount; // Number of crew seats only
_cargoSeats = _totalSeats - _crewSeats;

if (_cargoSeats <= 2) exitwith {diag_log format ["Error en cargoseats al intentar buscar para un %1",_veh];_return};
if ((_cargoSeats >= 2) and (_cargoSeats < 4)) then
	{
	switch (_sideX) do
		{
		case Occupants: {
			_return = call SCRT_fnc_unit_getCurrentGroupNATOSentry;
			};
		case Invaders: {_return = groupsCSATSentry};
		};
	} else {
	if ((_cargoSeats >= 4) and (_cargoSeats < 8)) then
		{
		switch (_sideX) do
			{
			case Occupants: {
				_squad = call SCRT_fnc_unit_getCurrentGroupNATOMid;
				_return = selectRandom _squad;
				};
			case Invaders: {_return = selectRandom groupsCSATmid};
			};
		}
	else
		{
		switch (_sideX) do
			{
			case Occupants:
				{
				_return = call SCRT_fnc_unit_getCurrentNATOSquad;
/*				if (_cargoSeats > 8) then {
					_countX = _cargoSeats - (count _return);
					for "_i" from 1 to _countX do
						{
						    if (random 10 < (tierWar + difficultyCoef)) then {
						        if(hasTieredUnitConfigs) then {
                                    switch (true) do {
                                        case (tierWar < 5):
                                        {
                                            _grunt = NATOGrunt select 0;
                                            _return pushBack _grunt;
                                        };
                                        case (tierWar < 8 && {tierWar > 4}):
                                        {
                                            _grunt = NATOGrunt select 1;
                                            _return pushBack _grunt;
                                        };
                                        case (tierWar > 7):
                                        {
                                            _grunt = NATOGrunt select 2;
                                            _return pushBack _grunt;
                                        };
                                    };
                                } else {
                                    _grunt =  NATOGrunt select 0;
                                    _return pushBack _grunt;
                                };
						    };
						};
					};
*/				};
			case Invaders:
				{
				_return = selectRandom groupsCSATSquad;
/*				if (_cargoSeats > 8) then
					{
					_countX = _cargoSeats - (count _return);
					for "_i" from 1 to _countX do
						{
						if (random 10 < (tierWar + difficultyCoef)) then {_return pushBack CSATGrunt};
						};
					};
*/				};
			};
		};
	};
_return
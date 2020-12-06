private _worldName = nil;

switch (toLower worldName) do {
	case "cup_chernarus_a3":
	{
		_worldName = "Chernarus";
	};
	default
	{
	    _worldName = toUpper([worldName, 0, 0] call BIS_fnc_trimString) + ([worldName, 1, count worldName] call BIS_fnc_trimString);
	};
};

_worldName
private ["_pos"];

if (["outpostTask"] call BIS_fnc_taskExists) exitWith {
	["Outposts/Roadblocks", "We can only deploy / delete one Observation Post or Roadblock at a time."] call A3A_fnc_customHint;
};
if (!([player] call A3A_fnc_hasRadio)) exitWith {
	["Radio Required", "You need a radio in your inventory to be able to give orders to other squads"] call A3A_fnc_customHint;
};

private _outpostType = _this select 0;

if (!visibleMap) then {
	openMap true
};

["Outposts", "Click on map to establish Observation Post, Roadblock, AA Emplacement or AT Emplacement."] call A3A_fnc_customHint;

positionTel = [];

onMapSingleClick "positionTel = _pos;";

waitUntil {sleep 1; (count positionTel > 0) or (not visiblemap)};
onMapSingleClick "";

if (!visibleMap) exitWith {};

private _positionTel = positionTel;
_pos = [];

switch (true) do {
	case (_outpostType == "watchpost"): {
		[_positionTel] call SCRT_fnc_outpost_createWatchpost;
	};
	case (_outpostType == "roadblock"): {
		[_positionTel] call SCRT_fnc_outpost_createRoadblock;
	};
	case (_outpostType == "aa"): {
		[_positionTel] call SCRT_fnc_outpost_createAa;
	};
	case (_outpostType == "at"): {
		[_positionTel] call SCRT_fnc_outpost_createAt;
	};
	default {
		[1, "Bad outpost type.", "outpostDialog"] call A3A_fnc_log;
	};
};

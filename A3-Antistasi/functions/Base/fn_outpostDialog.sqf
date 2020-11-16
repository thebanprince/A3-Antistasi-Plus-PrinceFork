private ["_pos"];

if (["outpostTask"] call BIS_fnc_taskExists) exitWith {
	["Outposts/Roadblocks", "We can only deploy / delete one Observation Post or Roadblock at a time."] call A3A_fnc_customHint;
};
if (!([player] call A3A_fnc_hasRadio)) exitWith {
	["Radio Required", "You need a radio in your inventory to be able to give orders to other squads"] call A3A_fnc_customHint;
};

private _actionType = _this select 0;
private _outpostType = _this select 1;

if (!visibleMap) then {
	openMap true
};
if (_actionType != "delete") then {
	["Outposts", "Click on the position you wish to build the Observation Post or Roadblock. <br/><br/> Remember: to build Roadblocks you must click exactly on a road map section"] call A3A_fnc_customHint;
} else {
	["Outposts", "Click on the Observation Post, Roadblock, AA Emplacement, AT Emplacement to delete."] call A3A_fnc_customHint;
};

positionTel = [];

onMapSingleClick "positionTel = _pos;";

waitUntil {sleep 1; (count positionTel > 0) or (not visiblemap)};
onMapSingleClick "";

if (!visibleMap) exitWith {};

private _positionTel = positionTel;
_pos = [];

if (_actionType == "delete") then {
	[_positionTel] call SCRT_fnc_outpost_delete;
} else {
	switch (true) do {
        case (_outpostType == "watchpost"): {
			[_positionTel] call SCRT_fnc_outpost_createWatchpost;
		};
        case (_outpostType == "roadblock"): {
		};
        case (_outpostType == "aa"): {
		};
        case (_outpostType == "at"): {
		};
		default {
			[1, "Bad outpost type.", "outpostDialog"] call A3A_fnc_log;
		};
    };
};
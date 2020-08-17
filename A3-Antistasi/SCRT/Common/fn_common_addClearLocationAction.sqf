params ["_object"];

_object addAction ["Clear Nearby Forest", {[_this select 0] call SCRT_fnc_common_clearLocationFromTrees}, nil, 0, false, true, "", "(side _this == independent)", 6];
params ["_reason"];

private _timeBeforeEnd = time + 30;

waitUntil {sleep 1; time > _timeBeforeEnd};

[campaignID, worldName] call A3A_fnc_deleteSave;
if (_reason == "PETROS") then {
    "ironManPetros" call BIS_fnc_endMissionServer;
} else {
    "ironManCommander" call BIS_fnc_endMissionServer;
};
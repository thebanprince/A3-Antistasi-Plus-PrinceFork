if (player != theBoss) exitWith {
    ["Clean Forest", "Only Commanders can order to clean the forest"] call A3A_fnc_customHint;
};

if (!isMultiplayer) then {
    { _x hideObject true } foreach (nearestTerrainObjects [getMarkerPos respawnTeamPlayer,["tree","bush"],70]);
} else {
    {[_x,true] remoteExec ["hideObjectGlobal",2]} foreach (nearestTerrainObjects [getMarkerPos respawnTeamPlayer,["tree","bush"],70]);
};

chopForest = true; 
publicVariable "chopForest";

["Clean Forest", "You've cleared the surroundings of HQ from trees and bushes"] call A3A_fnc_customHint;
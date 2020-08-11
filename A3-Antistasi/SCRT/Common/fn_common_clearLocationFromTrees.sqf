params ["_object"];

if (!isMultiplayer) then {
    { 
        _x hideObject true 
    } foreach (nearestTerrainObjects [position _object,["tree","bush"],70])} 
else {
    {
        [_x,true] remoteExec ["hideObjectGlobal",2]
    } foreach (nearestTerrainObjects [position _object,["tree","bush"],70])
};

["Clean Forest", "You've cleared the surroundings of trees and bushes"] call A3A_fnc_customHint;



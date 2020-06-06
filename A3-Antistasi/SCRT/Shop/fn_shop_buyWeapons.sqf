_cost = 2000;
_resourcesFIA = server getVariable "resourcesFIA";
if (_resourcesFIA < _cost) exitWith {hint format ["You do not have enough money! %1 € required",_cost]};
if ([player,300] call A3A_fnc_enemyNearCheck) exitWith {Hint "You cannot buy supplies with enemies nearby"};
[0,(-1* _cost)] spawn A3A_fnc_resourcesFIA;
_positionX = position player;

_boxX = objNull;
_boxX = NATOAmmoBox createVehicle _positionX;
[_boxX] spawn A3A_fnc_fillLootCrate;
_boxX call jn_fnc_logistics_addAction;
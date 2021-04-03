
params ["_class", "_pos", ["_dir", 0], ["_special", "CAN_COLLIDE"], "_object"];
_pos set [2, 0];
_object = createVehicle [_class, _pos, [], 0, _special];		
_object setDir _dir;

_object
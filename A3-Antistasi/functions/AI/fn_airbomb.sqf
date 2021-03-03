private _filename = "fn_airbomb";
[3, format ["Executing on: %1", clientOwner], _filename, true] call A3A_fnc_log;
private ["_countX","_plane","_typeX","_ammo","_cluster","_sleep","_bomb"];
_plane = vehicle (_this select 0);
_typeX = _this select 1;
_countX = 4;
_cluster = false;

switch (_typeX) do {
    case ("HE"): {
        _ammo = "Bo_Mk82";
		_sleep = 0.25
    };
	case ("CLUSTER"): {
		_ammo = "BombCluster_03_Ammo_F";
		_sleep = 0.5
	};
	case ("NAPALM"): {
		_ammo = "ammo_Bomb_SDB";
		_sleep = 0.5
	};
	case ("CHEMICAL"): {
		_ammo = "Land_GarbageBarrel_02_F";
		_sleep = 0.1
	};

	default {
		[1, "Invalid bomb type", _filename] call A3A_fnc_log;
	};
};

if(typeOf _plane == vehSDKPlane) then {
	_countX = round (_countX / 2);
};

sleep random [0,3,5];

[3, format ["Dropping %1 bombs of type %2 at %3 (near %4)", _countX, _typeX, getPos _plane,text nearestLocation [getPos _plane, "NameCity"]], _filename, true] call A3A_fnc_log;

if (_typeX == "CHEMICAL") then {
	sleep _sleep;
	if (alive _plane) then {
		_bomb = _ammo createvehicle ([getPos _plane select 0,getPos _plane select 1,(getPos _plane select 2)- 5]);
		waituntil {!isnull _bomb};
		_bomb setDir (getDir _plane);
		_bomb setPos [getPos _bomb select 0, getPos _bomb select 1,(getPos _plane select 2 ) - 5]; //prop requires reposition after creating
		_bomb setVectorDirAndUp [[0,0.66,-0.33], [0,0.33,0.66]];
		sleep 0.01;
		_bomb setVelocity [8,0,0];

		_nul = [_bomb] spawn {
			params ["_lBomb"];

			waitUntil {
				sleep 0.1; 
				(position _lBomb) select 2 < 1;
			};

			private _chemicalSpreadingSounds = [
				"A3\Sounds_f\weapons\smokeshell\smoke_1.wss",
				"A3\Sounds_f\weapons\smokeshell\smoke_2.wss",
				"A3\Sounds_f\weapons\smokeshell\smoke_3.wss"
			];

			_pos = getPosASL _lBomb;

			playSound3D ["A3\Sounds_f\weapons\explosion\explosion_mine_1.wss", _lBomb];
			sleep 1;
			playSound3D [(selectRandom _chemicalSpreadingSounds), _lBomb];

			[_pos, _lBomb] remoteExec  ["SCRT_fnc_support_chemicalBomb"];
		};
	};
} else {
	for "_i" from 1 to _countX do {
		sleep _sleep;
		if (alive _plane) then {
			_bomb = _ammo createvehicle ([getPos _plane select 0,getPos _plane select 1,(getPos _plane select 2)- 5]);
			waituntil {!isnull _bomb};
			_bomb setDir (getDir _plane);
			_bomb setVelocity [0,0,-50];

			if(_typeX == "NAPALM") then {
					[_bomb] spawn {
					_bomba = _this select 0;
					_pos = [];
					while {!isNull _bomba} do {
						_pos = getPosASL _bomba;
						sleep 0.1;
					};
					[_pos] remoteExec  ["A3A_fnc_napalm"];
				};
			};
		};
	};
};

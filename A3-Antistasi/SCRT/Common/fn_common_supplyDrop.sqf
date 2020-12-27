private _filename = "fn_common_supplyDrop";
[3, format ["Executing on: %1", clientOwner], _filename, true] call A3A_fnc_log;
private ["_countX","_plane","_typeX","_ammo"];
_plane = vehicle (_this select 0);
_countX = 1;

sleep random 5;

[3, format ["Dropping %1 supply crates at %2 (near %3)", _countX, getPos _plane, text nearestLocation [getPos _plane, "NameCity"]], _filename, true] call A3A_fnc_log;
for "_i" from 1 to _countX do {
	if (alive _plane) then {
        private _supplyDrop = createVehicle ["IG_supplyCrate_F", [getPos _plane select 0,getPos _plane select 1,(getPos _plane select 2)- 5], [], 0, "NONE"];
		waituntil {!isnull _supplyDrop};
        sleep 1.5;
        private _para = createVehicle ["B_parachute_02_F", [0,0,0], [], 0, "FLY"];
        _para setDir getDir _supplyDrop;
        _para setPos getPos _supplyDrop;
        _supplyDrop attachTo [_para, [0, 0, -1.2]];

        [_supplyDrop, _para] spawn {
            params ["_obj","_para"];

            private _smokeShellVariants = ["SmokeShellRed", "SmokeShellGreen", "SmokeShellYellow", "SmokeShellPurple", "SmokeShellBlue", "SmokeShellOrange"];
                
            waitUntil {
                sleep 0.01;
                ((position _obj) select 2) < 2 
                || 
                isNull _para 
                || 
                (count (lineIntersectsWith [getPosASL _obj, (getPosASL _obj) vectorAdd [0, 0, -0.5], _obj, _para])) > 0
            };
                
            _para disableCollisionWith _obj;
            _obj setVectorUp [0,0,1];
            _obj setVelocity [0,0,0];
            detach _obj;
            
            // mark landing with smoke
            _smokeShell = (selectRandom _smokeShellVariants) createVehicle (position _obj);
            
            if (!isNull _para) then {deleteVehicle _para};
        };
    };
};

//TODO: fill with ammo
//общая идея такова - два-три массива с оружием разных типов
//проверять есть ли пушка в арсенале, и если есть, то добавлять текущий присоединённый магазин в арсенал
//если магазин не присоединён - закидывать любой рандомный ствол
//плюс сверху отсыпать аптечек, дымовух и так далее

params ["_pos", "_barrel"];

if (isNil "_pos") exitWith {};
if (count _pos == 0) exitWith {};
if (isServer) then {
	if (!chemicalCurrent) then {chemicalCurrent = true; publicVariable "chemicalCurrent"};
};

if (hasInterface) then {
    private _pos = position _barrel;

    private _gasEffect = "#particlesource" createVehicleLocal _pos; 
    _gasEffect setParticleCircle [0, [0, 0, 0]]; 
    _gasEffect setParticleRandom [0, [0.5, 0.5, 0], [0.2, 0.2, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0]; 
    _gasEffect setParticleParams [ 
        ["\Ca\Data\ParticleEffects\FireAndSmokeAnim\SmokeAnim.p3d", 8, 3, 1],  
        "",  
        "Billboard",  
        1,  
        32,  
        [0, 0, 0],  
        [0, 0, 0.5],  
        0,  
        10.2,  
        7.9,  
        0.5,  
        [8, 24, 32],  
        [[0.450, 0.556, 0.215, 0.5], [0.662, 0.768, 0.411, 0.25], [0.921, 0.960, 0.811, 0]],  
        [0.125],  
        1,  
        0,  
        "",  
        "",  
        _barrel 
    ];  
    _gasEffect setDropInterval 0.4; 
    _gasEffect attachTo [_barrel, [0, 0, -0.5]]; 

    sleep 8;
    [_barrel] spawn SCRT_fnc_common_chemicalDamage;

	sleep 160;
	deletevehicle _gasEffect;
} else {
	sleep 8;
	[_barrel] spawn SCRT_fnc_common_chemicalDamage;
};

if (isServer) then {
	sleep 135;
	if (chemicalCurrent) then {
        chemicalCurrent = false; 
        publicVariable "chemicalCurrent";
    };
    
    [[200, 60], [200, 60]] remoteExec ["A3A_fnc_prestige",2];
};
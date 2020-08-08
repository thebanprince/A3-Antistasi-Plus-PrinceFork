//	Author: Socrates
// 
//	Description:
//	Attachs the light to an object.
//
//	Returns:
//	Nothing
//
// 	How to use: 
// 	[object, _lightPosition] spawn scrt_fnc_attachLightSource;
//


_object = _this select 0;
_lightPos = _this select 1;

_light = createVehicle ["#lightpoint", getPos _object, [], 0, "NONE"];
_light lightAttachObject [_object, _lightPos];

_light setLightBrightness 0.4;
_light setLightAmbient [1.0, 1.0, 1.0];
_light setLightColor [1.0, 1.0, 1.0];

// waitUntil {sleep 1; !alive _object};
// deleteVehicle _light;

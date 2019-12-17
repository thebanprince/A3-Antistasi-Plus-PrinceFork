/* Function Logistics Append
 * Author: Caleb S. Serafin
 * Date Created: 17-12-2019
 * Date Modified: 17-12-2019
 * 
 * Allows templates to add their own Cargo Carriers, Cargo Crates, and Mountable Statics.
 * This completely removes code modification to JNL and helps make templates plug-n-play.
 *
 * Call with an original fn_logistics_init array name, and an array of items you would like to add to it.
 * ["jnl_vehicleHardpoints",[...]] call A3A_fnc_logistics_append;
 */

params[["_JNLArrayName","nil",["string"]],"_additionalArray"];
diag_log format ["%1: [Antistasi] | INFO | fn_logistics_append.sqf | %2; %3",servertime, _JNLArrayName,_additionalArray];
switch (_JNLArrayName) do {
	case "jnl_vehicleHardpoints": { 
		if (isNil "jnl_vehicleHardpoints_append") then {jnl_vehicleHardpoints_append = []};
		jnl_vehicleHardpoints_append append _additionalArray;
	};
	case "jnl_allowedWeapons": { 
		if (isNil "jnl_allowedWeapons_append") then {jnl_allowedWeapons_append = []};
		jnl_allowedWeapons_append append _additionalArray;
	};
	case "jnl_attachmentOffset": { 
		if (isNil "jnl_attachmentOffset_append") then {jnl_attachmentOffset_append = []};
		jnl_attachmentOffset_append append _additionalArray;
	};
	default {
		diag_log format ["%1: [Antistasi] | ERROR | fn_logistics_append.sqf | %2 is an invalid _JNLArrayName name passed to fn_logistics_append.",servertime, _JNLArrayName];
		throw "Invalid _JNLArrayName name passed to fn_logistics_append.";
	};
};


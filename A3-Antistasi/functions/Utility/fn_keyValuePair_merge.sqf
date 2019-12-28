/* Function Key Value Pair Merge A3A_fnc_keyValuePair_merge
 * Author: Caleb S. Serafin
 * Date Created: 27-12-2019
 * Date Modified: 28-12-2019
 * 
 * This returns a keyValuePair of the merge of two keyValuePairs while favouring duplicates from the second keyValuePair.
 * If both arrays nil returns empty array.
 * 
 * keyValuePair: An array with basic structure of: [["label",...]...]
 * _conflictAction: one of the following:
 * 		"overwrite"		-Replaces key pair in thr first array with the conflicting key pair in second array.
 * 		"exclude"		-Excludes both key pairs completely.
 * 		"intersect"		-Only returns conflicts.
 * 		"valueAdd"		-Performs addition on the conflicting keys' values. Requires type to match otherwise defaults "overwrite" per case.
 * 		"valuePushBackUnique"	-Adds the conflicting keys' values if it is an array and only adds unique sub elements. 
 * 		recursion may be added in the future depending on demand.
 * 		default: "overwrite"	
 * 
 * Call with two arrays. All must be in keyValuePair format. Returns false if _conflictAction is invalid.
 * [_array1, _array2] call A3A_fnc_keyValuePair_merge; or
 * [_array1, _array2, _conflictAction] call A3A_fnc_keyValuePair_merge; 
 */
private _fileName = "fn_keyValuePair_merge.sqf";

params [
	["_array1", [], [[],nil]],
	["_array2", [], [[],nil]],
	["_conflictAction", "overwrite", [""]]
];

if (isNil "_array1") then {_array1 = []};
if (isNil "_array2") then {_array2 = []};

_array1Labels = [];
_array2Labels = [];
{_array1Labels pushBack (_x select 0)} forEach _array1;
{_array2Labels pushBack (_x select 0)} forEach _array2;
_collisions = _array1Labels arrayIntersect _array2Labels;
_arrayFinal = _array1 select {(_collisions find (_x select 0)) < 0};

switch (_conflictAction) do {
	case "overwrite": { _arrayFinal append _array2; };
	case "exclude": {_arrayFinal append (_array2 select {(_collisions find (_x select 0)) < 0})};
	case "intersect": {
		_arrayFinal = _array1 select {(_collisions find (_x select 0)) >= 0};
		_arrayFinal append (_array2 select {(_collisions find (_x select 0)) >= 0})
	};
	case "valueAdd": { 
		_arrayFinal append (_array2 select {(_collisions find (_x select 0)) < 0});
		{
			_collision = _x;
			val1 = ((_array1 select {(_x select 0) isEqualTo _collision}) select 0) select 1;
			keyVal2 = (_array2 select {(_x select 0) isEqualTo _collision}) select 0;
			key2 = keyVal2 select 0;
			val2 = keyVal2 select 1;

			if (val1 isEqualType val2) then {
				_arrayFinal append [[key2, val1 + val2]];
			} else {	//Different types cannot be added
				_arrayFinal append [keyVal2];
			};
		} forEach _collisions;
	};
	case "valuePushBackUnique": { 
		_arrayFinal append (_array2 select {(_collisions find (_x select 0)) < 0});
			{
				_collision = _x;
				valFinal = +((_array1 select {(_x select 0) isEqualTo _collision}) select 0) select 1; //+ avoids pointing to array
				keyVal2 = (_array2 select {(_x select 0) isEqualTo _collision}) select 0;
				key2 = keyVal2 select 0;
				val2 = keyVal2 select 1;
				if ( valFinal isEqualType [] && val2 isEqualType []) then {
					{valFinal pushBackUnique _x} foreach val2;
					_arrayFinal append [[key2, valFinal]]
				} else {	//Non array elements cannot be pushed back.
					_arrayFinal append [keyVal2];
				};
			} forEach _collisions;
	};
	default {_arrayFinal = false; [1,format["Unexpected _conflictAction = %1",_conflictAction],_fileName] call A3A_fnc_log};
};
_arrayFinal;
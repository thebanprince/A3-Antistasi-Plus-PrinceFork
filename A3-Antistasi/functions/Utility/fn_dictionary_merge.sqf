/* Function Dictionary Merge A3A_fnc_dictionary_merge
 * Author: Caleb S. Serafin
 * Date Created: 27-12-2019
 * Date Modified: 29-12-2019
 * 
 * Returns a merge of two dictionaries and handles conflicts.
 * If either dictionaries is nil, it is substituted with an empty array. 
 * Returns false if the specified conflict action is invalid. 
 * Crashes if supplied rubbish data (non dictionaries). Verifying input would add at least +n worth overhead to the execution.
 * 
 * Valid elements in a dictionary are key-pairs: ["key1",value] or ["key2",[value, value,...]]
 * 
 * The conflict action can one of the following:
 * 		"overwrite"				-Prefers the second dictionary's element in a merge conflict.
 * 		"exclude"				-Excludes both elements completely.
 * 		"intersect"				-Only returns conflicting elements from both dictionaries.
 * 		"valueAdd"				-Performs addition on the conflicting elements' values. Requires the conflicting element type to match, otherwise overwrites.
 * 		"valuePushBackUnique"	-Attempts to merge the values of a conflict, if either values are non-array it overwrites. 
 * 			recursion may be added in the future depending on demand.
 * 		default: "overwrite"	
 * 
 * Call with two dictionaries. All elements should be in key-value pair format. 
 * _dict3 = [_dict1, _dict2] call A3A_fnc_dictionary_merge; or
 * _dict3 = [_dict1, _dict2, _conflictAction] call A3A_fnc_dictionary_merge; 
 */
private _fileName = "fn_dictionary_merge.sqf";

params [
	["_dict1", [], [[],nil]],
	["_dict2", [], [[],nil]],
	["_conflictAction", "overwrite", [""]]
];

if (isNil "_dict1") then {_dict1 = []};
if (isNil "_dict2") then {_dict2 = []};

_dict1Labels = [];
_dict2Labels = [];
{_dict1Labels pushBack (_x select 0)} forEach _dict1;
{_dict2Labels pushBack (_x select 0)} forEach _dict2;
_collisions = _dict1Labels arrayIntersect _dict2Labels;
//Saves lines of code as conflict actions don't apply to non conflicts. 
//Does not do the 2nd Dictionary as this would hurt performance for overwrite mode.
_dictFinal = _dict1 select {(_collisions find (_x select 0)) < 0};	

switch (_conflictAction) do {
	case "overwrite": { _dictFinal append _dict2; };
	case "exclude": {_dictFinal append (_dict2 select {(_collisions find (_x select 0)) < 0})};
	case "intersect": {
		_dictFinal = _dict1 select {(_collisions find (_x select 0)) >= 0};
		_dictFinal append (_dict2 select {(_collisions find (_x select 0)) >= 0})
	};
	case "valueAdd": { 
		_dictFinal append (_dict2 select {(_collisions find (_x select 0)) < 0});
		{
			_collision = _x;
			val1 = ((_dict1 select {(_x select 0) isEqualTo _collision}) select 0) select 1;
			element2 = (_dict2 select {(_x select 0) isEqualTo _collision}) select 0;
			key2 = element2 select 0;
			val2 = element2 select 1;

			if (val1 isEqualType val2) then {
				_dictFinal append [[key2, val1 + val2]];
			} else {	//Different types cannot be added
				_dictFinal append [element2];
			};
		} forEach _collisions;
	};
	case "valuePushBackUnique": { 
		_dictFinal append (_dict2 select {(_collisions find (_x select 0)) < 0});
			{
				_collision = _x;
				valFinal = +((_dict1 select {(_x select 0) isEqualTo _collision}) select 0) select 1; //+ avoids pointing to array
				element2 = (_dict2 select {(_x select 0) isEqualTo _collision}) select 0;
				key2 = element2 select 0;
				val2 = element2 select 1;
				if ( valFinal isEqualType [] && val2 isEqualType []) then {
					{valFinal pushBackUnique _x} foreach val2;
					_dictFinal append [[key2, valFinal]]
				} else {	//Non array elements cannot be pushed back.
					_dictFinal append [element2];
				};
			} forEach _collisions;
	};
	default {_dictFinal = false; [1,format["Unexpected _conflictAction = %1",_conflictAction],_fileName] call A3A_fnc_log};
};
_dictFinal;
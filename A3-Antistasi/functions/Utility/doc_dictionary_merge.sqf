/* Documentation Dictionary Merge A3A_fnc_keyValuePair_merge
 * Author: Caleb S. Serafin
 * Date Created: 27-12-2019
 * Date Modified: 29-12-2019
 * 
 * Provides examples and performance tests for dictionary_merge
 */

// Typical use cases with JNL arrays
_array1 = [["no", ["truck"]],["maybe",["van"]],["yes", ["car"]]];
_array2 = [["no", ["truck"]],["yes",["plane"]],["hmm",["boat"]]];

[_array1, _array2, "overwrite"] call A3A_fnc_keyValuePair_merge;			// [["maybe",["van"]],["no",["truck"]],["yes",["plane"]],["hmm",["boat"]]]
[_array1, _array2, "exclude"] call A3A_fnc_keyValuePair_merge;				// [["maybe",["van"]],["hmm",["boat"]]]
[_array1, _array2, "intersect"] call A3A_fnc_keyValuePair_merge;			// [["no",["truck"]],["yes",["car"]],["no",["truck"]],["yes",["plane"]]]
[_array1, _array2, "valueAdd"] call A3A_fnc_keyValuePair_merge;				// [["maybe",["van"]],["hmm",["boat"]],["no",["truck","truck"]],["yes",["car","plane"]]]
[_array1, _array2, "valuePushBackUnique"] call A3A_fnc_keyValuePair_merge;	// [["maybe",["van"]],["hmm",["boat"]],["no",["truck"]],["yes",["car","plane"]]]

// Other use cases
_array1 = [["oofs", 1],["oofs", 1],["msg","Hello"],["oh no", [[1],[[2],["Ah"]],[3]]  ]];
_array2 = [["oofs", 2],["msg","World"],["oh no", [[1],[1],[[2],["Gh"]]]  ]];

[_array1, _array2, "overwrite"] call A3A_fnc_keyValuePair_merge;			// [["oofs",2],["msg","World"],["oh no",[[1],[1],[[2],["Gh"]]]]]
[_array1, _array2, "exclude"] call A3A_fnc_keyValuePair_merge;				// []
[_array1, _array2, "intersect"] call A3A_fnc_keyValuePair_merge;			// ["msg","World"],["oh no",[[1],[1],[[2],["Gh"]]]]]
[_array1, _array2, "valueAdd"] call A3A_fnc_keyValuePair_merge;				// [["oofs",3],["msg","HelloWorld"],["oh no",[[1],[[2],["Ah"]],[3],[1],[1],[[2],["Gh"]]]]]
[_array1, _array2, "valuePushBackUnique"] call A3A_fnc_keyValuePair_merge;	// [["oofs",2],["msg","World"],["oh no",[[1],[[2],["Ah"]],[3],[[2],["Gh"]]]]]


// Incorrect formats have wild effects
_array1 = [["no", "truck", "45 kph"],["maybe",["van","10 kph"],["train","60 kph"]],["yes", [["car","90 kph"]]]];
_array2 = [["no", "truck", "50 kph"],["yes",["plane","90 kph"]],["hmm",["boat",50,"knots"]]];

[_array1, _array2, "overwrite"] call A3A_fnc_keyValuePair_merge;			// [["maybe",["van","10 kph"],["train","60 kph"]],["no","truck","50 kph"],["yes",["plane","90 kph"]],["hmm",["boat",50,"knots"]]],
[_array1, _array2, "exclude"] call A3A_fnc_keyValuePair_merge;				// [["maybe",["van","10 kph"],["train","60 kph"]],["hmm",["boat",50,"knots"]]],
[_array1, _array2, "intersect"] call A3A_fnc_keyValuePair_merge;			// [["no","truck","45 kph"],["yes",[["car","90 kph"]]],["no","truck","50 kph"],["yes",["plane","90 kph"]]],
[_array1, _array2, "valueAdd"] call A3A_fnc_keyValuePair_merge;				// [["maybe",["van","10 kph"],["train","60 kph"]],["hmm",["boat",50,"knots"]],["no","trucktruck"],["yes",[["car","90 kph"],"plane","90 kph"]]],
[_array1, _array2, "valuePushBackUnique"] call A3A_fnc_keyValuePair_merge;	// [["maybe",["van","10 kph"],["train","60 kph"]],["hmm",["boat",50,"knots"]],["no","truck","50 kph"],["yes",[["car","90 kph"],"plane","90 kph"]]]






//Test Output Console Program 
_conflictActions = ["overwrite","exclude","intersect","valueAdd","valuePushBackUnique"]; 
_arraySets= 
[ 
	[ 
		[["no", ["truck"]],["maybe",["van"]],["yes", ["car"]]], 
		[["no", ["truck"]],["yes",["plane"]],["hmm",["boat"]]] 
	], 
	[ 
		[["oofs", 1],["oofs", 1],["msg","Hello"],["oh no", [[1],[[2],["Ah"]],[3]]  ]], 
		[["oofs", 2],["msg","World"],["oh no", [[1],[1],[[2],["Gh"]]]  ]] 
	], 
	[ 
		[["no", "truck", "45 kph"],["maybe",["van","10 kph"],["train","60 kph"]],["yes", [["car","90 kph"]]]], 
		[["no", "truck", "50 kph"],["yes",["plane","90 kph"]],["hmm",["boat",50,"knots"]]] 
	] 
]; 
 
_testOut = [];
{
	_array1 = _x # 0; 
	_array2 = _x # 1; 
	_arrayCurrentSet = [];
	{
		_arrayCurrentSet append [[_array1, _array2, _x] call A3A_fnc_keyValuePair_merge]; 
	} forEach _conflictActions;
	_testOut append [_arrayCurrentSet];
} forEach _arraySets;
_testOut;


// Test Bench Consol Program
// Simple ["Key",["Value"]]
// Each Dictionary:
// 64 Elements
// 50% Unique Keys.
// 25% Unique Value Conflicts
// 25% Duplicate Value Conflicts
_conflictActions = ["overwrite","exclude","intersect","valueAdd","valuePushBackUnique"]; 

_dict1Unique = [];
_dict2Unique = [];
for "_i" from 0 to 31 step 1 do {
	_dict1Unique pushBack [ str _i, ["test"]];
	_dict2Unique pushBack [ str (_i + 32), ["test"]];
};

_indexString = "";
_dict1ValueUnique = [];
_dict2ValueUnique = [];
for "_i" from 64 to 79 step 1 do {
	_indexString = str _i;
	_indexStringB = str (_i + 16);
	_dict1ValueUnique pushBack [ _indexString, [_indexString]];
	_dict2ValueUnique pushBack [ _indexString, [_indexStringB]];
};

_dict1ValueDuplicate = [];
_dict2ValueDuplicate = [];
for "_i" from 80 to 96 step 1 do {
	_indexString = str _i;
	_dict1ValueDuplicate pushBack [ _indexString, [_indexString]];
	_dict2ValueDuplicate pushBack [ _indexString, [_indexString]];
};

_dict1 = +_dict1Unique;
_dict1 append _dict1ValueUnique;
_dict1 append _dict1ValueDuplicate;
_dict2 = +_dict2Unique;
_dict2 append _dict2ValueUnique;
_dict2 append _dict2ValueDuplicate;

_result = [];
{
	conflictAction = _x;
	_args = [_dict1, _dict2, conflictAction];
	_result append [[conflictAction,diag_codePerformance [{_this call A3A_fnc_dictionary_merge;}, _args]]];
	_result;
} forEach _conflictActions;
_result;
/*
[
	["overwrite",[0.354233,2823]],
	["exclude",[0.481464,2077]],
	["intersect",[0.613121,1631]],
	["valueAdd",[5.35829,187]],
	["valuePushBackUnique",[5.54144,181]]
]
*/
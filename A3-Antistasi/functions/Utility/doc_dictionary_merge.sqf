/* Documentation Key Value Pair Merge A3A_fnc_keyValuePair_merge
 * Author: Caleb S. Serafin
 * Date Created: 27-12-2019
 * Date Modified: 28-12-2019
 * 
 * This returns a keyValuePair of the merge of two keyValuePairs while favouring duplicates from the second keyValuePair.
 * If both arrays nil returns empty array. 
 *
 * Returns false if _conflictAction is invalid. This will crash if given rubbish data (non arrays). Verifying input would add at least +n worth overhead to the execution.
 * 
 * keyValuePair an element in a dictionary, map or hash table: ["key1",value] or ["key2",[values,...]]
 * _conflictAction: one of the following:
 * 		"overwrite"		-Replaces key pair in thr first array with the conflicting key pair in second array.
 * 		"exclude"		-Excludes both key pairs completely.
 * 		"intersect"		-Only returns conflicts.
 * 		"valueAdd"		-Performs addition on the conflicting keys' values. Requires type to match otherwise defaults "overwrite" per case.
 * 		"valuePushBackUnique"	-Adds the conflicting keys' values if it is an array and only adds unique sub elements. 
 * 		recursion may be added in the future depending on demand.
 * 		default: "overwrite"	
 * 
 * Call with two arrays. All elements should be in keyValuePair format. 
 * [_array1, _array2] call A3A_fnc_keyValuePair_merge; or
 * [_array1, _array2, _conflictAction] call A3A_fnc_keyValuePair_merge; 
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






//Test Bench Console Program 
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
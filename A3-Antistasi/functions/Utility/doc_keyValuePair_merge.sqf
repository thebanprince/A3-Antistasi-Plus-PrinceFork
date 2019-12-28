/* Documentation Key Value Pair Merge A3A_fnc_keyValuePair_merge
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
 * Call with two arrays. All must be in keyValuePair format.
 * [_array1, _array2] call A3A_fnc_keyValuePair_merge; or
 * [_array1, _array2, _conflictAction] call A3A_fnc_keyValuePair_merge; 
 */

// Typical use cases with JNL arrays
_array1 = [["no", ["truck"]],["maybe",["van"]],["yes", ["car"]]];
_array2 = [["no", ["truck"]],["yes",["plane"]],["hmm",["boat"]]];

[_array1, _array2, "overwrite"] call A3A_fnc_keyValuePair_merge;			// [["maybe",["van"]],["no",["truck"]],["yes",["plane"]],["hmm",["boat"]]]
[_array1, _array2, "exclude"] call A3A_fnc_keyValuePair_merge;				// [["maybe",["van"]],["hmm",["boat"]]]
[_array1, _array2, "intersect"] call A3A_fnc_keyValuePair_merge;			// [["no",["truck"]],["yes",["car"]],["no",["truck"]],["yes",["plane"]]]
[_array1, _array2, "valueAdd"] call A3A_fnc_keyValuePair_merge;				// [["maybe",["van"]],["hmm",["boat"]],["no",["truck","truck"]],["yes",["plane","car"]]]
[_array1, _array2, "valuePushBackUnique"] call A3A_fnc_keyValuePair_merge;	// [["maybe",["van"]],["hmm",["boat"]],["no",["truck"]],["yes",["plane","car"]]]

// Other use cases
_array1 = [["oofs", 1],["oofs", 1],["msg","Hello"],["oh no", [[1],[[2],["Ah"]],[3]]  ]];
_array2 = [["oofs", 2],["msg","World"],["oh no", [[1],[1],[[2],["Gh"]]]  ]];

[_array1, _array2, "overwrite"] call A3A_fnc_keyValuePair_merge;			// [["oofs",2],["msg","World"],["oh no",[[1],[1],[[2],["Gh"]]]]]
[_array1, _array2, "exclude"] call A3A_fnc_keyValuePair_merge;				// []
[_array1, _array2, "intersect"] call A3A_fnc_keyValuePair_merge;			// [["oofs",1],["oofs",1],["msg","Hello"],["oh no",[[1],[[2],["Ah"]],[3]]],["oofs",2],["msg","World"],["oh no",[[1],[1],[[2],["Gh"]]]]]
[_array1, _array2, "valueAdd"] call A3A_fnc_keyValuePair_merge;				// [["oofs",3],["msg","WorldHello"],["oh no",[[1],[1],[[2],["Gh"]],[1],[[2],["Ah"]],[3]]]]
[_array1, _array2, "valuePushBackUnique"] call A3A_fnc_keyValuePair_merge;	// [["oofs",1],["msg","Hello"],["oh no",[[1],[1],[[2],["Gh"]],[[2],["Ah"]],[3]]]]
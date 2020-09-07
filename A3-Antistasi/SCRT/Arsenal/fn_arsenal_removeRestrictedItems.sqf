//	Author: Socrates
// 
//	Description:
//	Removes forbidden items from arsenal.
//
//	Returns:
//	Modified array of items.
//
// 	How to use: 
// 	[_items] call SCRT_fnc_arsenal_removeRestrictedItems;

params ["_items"];

if(_items isEqualTo [] || {count _items < 1}) exitWith {};

private _indexesToRemove = [];

//banknotes check
{
    if(_x in arrayMoney) then {
        _indexesToRemove pushback _forEachIndex;
    };
} forEach _items;

{
    _items deleteAt _x;
} forEach _indexesToRemove;

_items
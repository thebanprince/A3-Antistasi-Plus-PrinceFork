//	Author: Socrates
// 
//	Description:
//	Finds all similar weapons using it's base classnames.
//
//	Returns:
//	Array of weapons and it's quantity inherited from all parent classes presented in this array.
//
// 	How to use: 
// 	[_weapons] call SCRT_fn_common_geSimilarWeapons;

params ["_weapons"];

if(!areSimilarWeaponsUnlocks || {_weapons isEqualTo []} || {count _weapons < 1}) exitWith {};

//these should be in sync!
_baseInputClassNames = [];
_baseInputClassQuantity = [];

//get base classes and it's quantity
{
	private _item = _x select 0;
	private _quantity = _x select 1;

	_baseConfig = inheritsFrom (configFile >> "CfgWeapons" >> _item);
	_cfgName = configName _baseConfig;

	_baseConfigIndex = _baseInputClassNames find _cfgName;

	if(_baseConfigIndex != -1) then {
		_previousValue = _baseInputClassQuantity select _baseConfigIndex;
		_baseInputClassQuantity set [_baseConfigIndex, _previousValue + _quantity];
	} else {
		_baseInputClassNames pushBack _cfgName;
		_baseInputClassQuantity pushBack _quantity;
	};
} forEach _weapons;

//merge base classes and quantity into one array
_mergedBaseClasses = [];
{
	_arrayItem = [_x, _baseInputClassQuantity select _forEachIndex];
	_mergedBaseClasses pushBack _arrayItem;
} forEach _baseInputClassNames;

_moreThanMinWeapons = _mergedBaseClasses select {_x select 1 >= minWeaps};
_result = [];

//if some array exceeds minimum weapons threshold - grab every class that has same parent and make it pending to infinite on next arsenal tick
if(count _moreThanMinWeapons > 0) then {
   _weaponConfigs = "getNumber(_x >> 'scope') isEqualTo 2 && {getNumber(_x >> 'type') in [1,2,4,4096]}" configClasses(configFile >> "CfgWeapons") apply { configName _x };

	{
		_baseItem = _x select 0;
		_similarClassnames = _weaponConfigs select { 
			_weaponConfig = inheritsFrom (configFile >> "CfgWeapons" >> _x);
			configName _weaponConfig == _baseItem
		};

		{
			_result pushBack [_x, minWeaps + 1];
		} forEach _similarClassnames;
	} forEach _moreThanMinWeapons;
	
};

//remove duplicates
{
	_item = _x select 0;
	_originWeaponIndex = _weapons findIf {(_x select 0) == _item;};
	if(_originWeaponIndex != -1) then {
		_weapons deleteAt _originWeaponIndex;
	}
} forEach _result;

_result = _result + _weapons;

_result
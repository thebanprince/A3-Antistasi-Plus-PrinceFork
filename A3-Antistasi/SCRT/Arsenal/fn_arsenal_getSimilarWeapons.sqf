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

if(_weapons isEqualTo [] || {count _weapons < 1}) exitWith {};

private _weaponConfigs = "getNumber(_x >> 'scope') isEqualTo 2 && {getNumber(_x >> 'type') in [1,4,4096]}" configClasses(configFile >> "CfgWeapons") apply { configName _x };

//these should be in sync!
private _possibleClassesMapKeys = [];
private _possibleClassesMapValues = [];

//these should be in sync!
_baseInputClassNames = [];
_baseInputClassQuantity = [];

//get base classes and it's quantity
{
	private _item = _x select 0;
	private _quantity = _x select 1;

	_baseConfig = inheritsFrom (configFile >> "CfgWeapons" >> _item);
	_cfgName = configName _baseConfig;

	private _similarClassnames = _weaponConfigs select { 
		_weaponConfig = inheritsFrom (configFile >> "CfgWeapons" >> _x);
		configName _weaponConfig == _cfgName
	};

	// exclude weapons with attached scopes, muzzles, etc - they're appears as dupes in arsenal
	_similarClassnames = _similarClassnames select {
		private _linkedOptics = getText(configFile >> "CfgWeapons" >> _x >> "LinkedItems" >> "LinkedItemsOptic" >> "item");
		private _linkedMuzzle = getText(configFile >> "CfgWeapons" >> _x >> "LinkedItems" >> "LinkedItemsMuzzle" >> "item" );        	
		private	_linkedAccs = getText(configFile >> "CfgWeapons" >> _x >> "LinkedItems" >> "LinkedItemsAcc" >> "item");
		private	_linkedUnderbarrel = getText(configFile >> "CfgWeapons" >> _x >> "LinkedItems" >> "LinkedItemsUnder" >> "item");
		_linkedOptics == "" && _linkedMuzzle == "" && _linkedAccs == "" && _linkedUnderbarrel == ""
	};

	private _originItemFireModes = getArray (configFile >> "CfgWeapons" >> _item >> "modes");
	private _originItemMuzzles = count (getArray (configfile >> "CfgWeapons" >> _item >> "muzzles"));
	private _originItemOpticSystem = getText(configFile >> "CfgWeapons" >> _item >> "LinkedItems" >> "LinkedItemsOptic" >> "slot");

	//exclude weapons with different fire modes and muzzle count because some of them are, you know, totally different weapons
	_similarClassnames = _similarClassnames select {
		private _weapon = _x;
		private _weaponFireModes = getArray (configFile >> "CfgWeapons" >> _weapon >> "modes");
		private _weaponMuzzles = count (getArray (configfile >> "CfgWeapons" >> _weapon >> "muzzles"));
		private _weaponSystem = getText(configFile >> "CfgWeapons" >> _weapon >> "LinkedItems" >> "LinkedItemsOptic" >> "slot");
		_originItemFireModes isEqualTo _weaponFireModes && _weaponMuzzles == _originItemMuzzles && _originItemOpticSystem == _weaponSystem
	};

	_possibleClassesMapKeys pushBack _cfgName;
	_possibleClassesMapValues pushBack _similarClassnames;


	private _baseConfigIndex = _baseInputClassNames find _cfgName;

	if(_baseConfigIndex != -1) then {
		_previousValue = _baseInputClassQuantity select _baseConfigIndex;
		_baseInputClassQuantity set [_baseConfigIndex, _previousValue + _quantity];
	} else {
		_baseInputClassNames pushBack _cfgName;
		_baseInputClassQuantity pushBack _quantity;
	};
} forEach _weapons;

//no longer needed, let's free them
_weaponConfigs = nil;

//merge base classes and quantity into one array
_mergedBaseClasses = [];
{
	_arrayItem = [_x, _baseInputClassQuantity select _forEachIndex];
	_mergedBaseClasses pushBack _arrayItem;
} forEach _baseInputClassNames;

private _moreThanMinWeapons = _mergedBaseClasses select {_x select 1 >= minWeaps};
private _result = [];

//if some array exceeds minimum weapons threshold - grab every class that has same parent and make it pending to infinite on next arsenal tick
if(count _moreThanMinWeapons > 0) then {
	{
		private _baseItem = _x select 0;
		private _index = _possibleClassesMapKeys find _baseItem;

		if(_index != -1) then {
			private _similarClassnames = _possibleClassesMapValues select _index;

			{
				_result pushBack [_x, minWeaps + 1];
			} forEach _similarClassnames;
		};
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
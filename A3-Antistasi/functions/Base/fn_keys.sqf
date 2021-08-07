#define KEY_Y 21
#define KEY_HOME 199
#define KEY_END 207
#define KEY_TAB 15
#define KEY_INSERT 210

_handled = false;
if (player getVariable ["incapacitated",false]) exitWith {_handled};
if (player getVariable ["owner",player] != player) exitWith {_handled};
_key = _this select 1;

switch (true) do {
	case (_key == KEY_Y): {
		if (isNil "garageVeh") then {
			if !(_this select 2) then {
				closeDialog 0;
				createDialog "radioComm";
			};
		};
	};
	case (_key == KEY_INSERT): {
		if (isNull (uiNameSpace getVariable "H8erHUD")) exitWith {};
		private _display = uiNameSpace getVariable "H8erHUD";
		private _stringControl = _display displayCtrl 1001;
		if (ctrlShown _stringControl) then {
			["Information String", "You've turned off top information string. To enable it, press INSERT.", false] call A3A_fnc_customHint; 
			_stringControl ctrlShow false; 
		} else { 
			["Information String", "You've turned on top information string. To disable it, press INSERT.", false] call A3A_fnc_customHint; 
			_stringControl ctrlShow true;
		};
	};
	case (_key == KEY_END): {
		if (!A3A_hasACEHearing) then {
			if (soundVolume <= 0.5) then {
				0.5 fadeSound 1;
				["Ear Plugs", "You've taken out your ear plugs.", false] call A3A_fnc_customHint;
			}
			else {
				0.5 fadeSound 0.1;
				["Ear Plugs", "You've inserted your ear plugs.", false] call A3A_fnc_customHint;
			};
		};
	};
	case (_key == KEY_HOME): {
		[] call SCRT_fnc_ui_toggleCommanderMenu;
	};
	case (_key == KEY_TAB): {
		if (!(isNil "isProjectileLaunched") && {isProjectileLaunched}) then {
			isProjectileInterrupted = true;
		};
	};
};

_handled
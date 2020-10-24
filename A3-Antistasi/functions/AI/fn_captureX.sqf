private _unit = _this select 0;
private _playerX = _this select 1;
private _recruiting = _this select 3;

[_unit,"remove"] remoteExec ["A3A_fnc_flagaction",[teamPlayer,civilian],_unit];

if (!alive _unit) exitWith {};

private _sideX = side (group _unit);
private _interrogated = _unit getVariable ["interrogated", false];

private _modAggroOcc = [0, 0];
private _modAggroInv = [0, 0];
private _modHR = false;
private _response = "";
private _fleeSide = _sideX;


if (_recruiting) then {
	_playerX globalChat localize "STR_recruit_text";

	private _chance = 0;
	if (_sideX == Occupants) then {
        _modAggroOcc = [1, 30];
		if (faction _unit == factionFIA) then { _chance = 60;}
		else { _chance = 20;};
	}
	else {
        _modAggroInv = [1, 30];
		if (faction _unit == factionFIA) then { _chance = 60;}
		else { _chance = 40;};
	};
	if (_interrogated) then { _chance = _chance / 2 };

	if (random 100 < _chance) then
    {
		_response = localize "STR_recruit_success_text";
		_modHR = true;
		_fleeSide = teamPlayer;
	}
	else
    {
		_response =  localize "STR_screw_fail_text";
		_modAggroOcc = [0, 0];
		_modAggroInv = [0, 0];
	};
}
else {
	_playerX globalChat localize "STR_release_request_text";
	_response = selectRandom [
		localize "STR_release_response_one_text",
		localize "STR_release_response_two_text",
		localize "STR_release_response_three_text"
	];


	if (_sideX == Occupants) then {
    	_modAggroOcc = [-3, 30];

		[player, Occupants, _unit] call SCRT_fnc_common_givePrisonerReleasePaycheck;
	}
	else {
        _modAggroInv = [-3, 30];
	};
};


sleep 2;
_unit globalChat _response;

[_unit, _fleeSide] remoteExec ["A3A_fnc_fleeToSide", _unit];

private _group = group _unit;		// Group should be surrender-specific now
sleep 100;
if (alive _unit && {!(_unit getVariable ["incapacitated", false])}) then
{
	[_modAggroOcc,_modAggroInv] remoteExec ["A3A_fnc_prestige",2];
	if (_modHR) then { [1,0] remoteExec ["A3A_fnc_resourcesFIA",2] };
};

deleteVehicle _unit;
deleteGroup _group;

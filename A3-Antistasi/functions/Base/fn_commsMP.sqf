if (!hasInterface) exitWith {};
if (isNil "initVar") exitWith {};
if ((side player != teamPlayer) and (side player != civilian)) exitWith {};
private ["_unit","_typeX","_textX","_display","_setText"];

params [["_unit", objNull], ["_typeX", ""], ["_textX", ""], ["_titleX", ""]];

if (_typeX == "sideChat") then {
	_unit sideChat format ["%1", _textX];
};
if (_typeX == "hint") then {[_titleX, format ["%1",_textX]] call A3A_fnc_customHint;};
if (_typeX == "hintCS") then {hintC format ["%1",_textX]};
if (_typeX == "hintS") then {[_titleX, format ["%1",_textX], true] call A3A_fnc_customHint;};
if (_typeX == "intelError") then {[_titleX, format ["Download error:<br/>%1",_textX]] call A3A_fnc_customHint;};
if (_typeX == "globalChat") then {
	_unit globalChat format ["%1", _textX];
};

if (_typeX == "income") then {
	waitUntil {sleep 0.2; !incomeRep};
	incomeRep = true;
	//playSound3D ["a3\sounds_f\sfx\beep_target.wss", player];
	playSound "3DEN_notificationDefault";
	//[_textX,0.8,0.5,5,0,0,2] spawn bis_fnc_dynamicText;
	[_textX, [safeZoneX + (0.8 * safeZoneW), (0.2 * safeZoneW)], 0.5, 5, 0, 0, 2] spawn bis_fnc_dynamicText;
	incomeRep = false;

	[] spawn A3A_fnc_statistics;
};

if (_typeX == "countdown") then {
	_textX = format ["Time Remaining: %1 secs",_textX];
	["Countdown", format ["%1",_textX]] call A3A_fnc_customHint;
};

if (_typeX == "taxRep") then {
	incomeRep = true;
	playSound "3DEN_notificationDefault";
	[_textX, [safeZoneX + (0.8 * safeZoneW), (0.2 * safeZoneW)], 0.5, 5, 0, 0, 2] spawn bis_fnc_dynamicText;
	sleep 10;
	incomeRep = false;

	[] spawn A3A_fnc_statistics;
};
if (_typeX == "tier") then {
	waitUntil {sleep 0.2; !incomeRep};
	incomeRep = true;
	playSound "3DEN_notificationDefault";

	_textX = format ["War Level Changed<br/><br/>Current Level: %1",tierWar];
	if(tierWar > 3 && {!isPowPaycheckAnnounced}) then {
		_textX = _textX + format ["<br/><br/><t size='0.6'>Resistance has been recognized by <t size='0.6' color='#FFA500'>IDAP</t>, an third party peace-keeping organization and agreement has been made - <br/><t size='0.6' color='#FFA500'>IDAP</t> will pay <t size='0.6' color='#008000'>%1</t> for freeing <t size='0.6' color='#0033CC'>%2</t> soldiers.</t>", nameTeamPlayer, nameOccupants];
		isPowPaycheckAnnounced = true; 
		publicVariable "isPowPaycheckAnnounced";
	};

	private _tierStockUpdate = false;

	if(tierWar > 3 && {!isMarketUpgradeAnnounced}) then {
		_textX = _textX + format ["<br/><br/><t size='0.6'>Vehicle Market stock has been updated with Tier 2 vehicles.</t>"];
		_tierStockUpdate = true; 
	};

	if(tierWar > 8 && {!isMarketUpgradeAnnounced}) then {
		_textX = _textX + format ["<br/><br/><t size='0.6'>Vehicle Market stock has been updated with Tier 3 vehicles.</t>"];
		_tierStockUpdate = true; 
	};

	if(_tierStockUpdate) then {
		isMarketUpgradeAnnounced = true; 
		publicVariable "isMarketUpgradeAnnounced";
	};

	[_textX, [safeZoneX + (0.8 * safeZoneW), (0.2 * safeZoneW)], 0.5, 5, 0, 0, 2] spawn bis_fnc_dynamicText;
	incomeRep = false;

	[] spawn A3A_fnc_statistics;
};

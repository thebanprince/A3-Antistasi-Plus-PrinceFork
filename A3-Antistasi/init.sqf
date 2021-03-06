diag_log format ["%1: [Antistasi] | INFO | Init Started.",servertime];
//Arma 3 - Antistasi - Warlords of the Pacific by Barbolani & The Official AntiStasi Community
//Do whatever you want with this code, but credit me for the thousand hours spent making this.
private _fileName = "init.sqf";
scriptName "init.sqf";

if (isNil "logLevel") then {logLevel = 2};
if (isNil "isSystemChatPostingAllowed") then {isSystemChatPostingAllowed = false};
[2,"Init SQF started",_fileName] call A3A_fnc_log;

if (!isMultiplayer) then {
	["noSinglplayer",false,1,false,false] call BIS_fnc_endMission;
};

enableSaving [false,false];
mapX setObjectTexture [0, "Pictures\Mission\whiteboard.jpg"];

[2,"Init finished",_fileName] call A3A_fnc_log;
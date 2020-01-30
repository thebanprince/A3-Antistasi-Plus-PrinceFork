if (player != theBoss) exitWith {hint localize "STR_antistasi_dialogs_clearForest_text_1"};
if (!isMultiplayer) then {{ _x hideObject true } foreach (nearestTerrainObjects [getMarkerPos respawnTeamPlayer,["tree","bush"],70])} else {{[_x,true] remoteExec ["hideObjectGlobal",2]} foreach (nearestTerrainObjects [getMarkerPos respawnTeamPlayer,["tree","bush"],70])};
hint localize "STR_antistasi_dialogs_clearForest_text_2";
chopForest = true; publicVariable "chopForest";

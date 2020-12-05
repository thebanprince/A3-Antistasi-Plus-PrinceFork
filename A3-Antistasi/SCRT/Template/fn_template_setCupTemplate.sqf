private _occupantFaction = "occupantFactionCup" call BIS_fnc_getParamValue;
// 0 - CDF
// 1 - EUROFOR

switch(true) do {
    case (terrainName in temperatemaps): {
        if(_occupantFaction == 0) then {
            call compile preProcessFileLineNumbers "Templates\Cup\CUP_Occ_CDF_Temp.sqf";
        } else {
            call compile preProcessFileLineNumbers "Templates\Cup\CUP_Occ_EUROFOR_Temp.sqf";
        };
        call compile preProcessFileLineNumbers "Templates\Cup\CUP_Reb_NAPA_Temp.sqf";
        call compile preProcessFileLineNumbers "Templates\Cup\CUP_Inv_RU_Temp.sqf";
    };
    default {
        call compile preProcessFileLineNumbers "Templates\Cup\CUP_Reb_FIA_Arid.sqf";
        call compile preProcessFileLineNumbers "Templates\Cup\CUP_Occ_EUROFOR_Temp.sqf";
        call compile preProcessFileLineNumbers "Templates\Cup\CUP_Inv_RU_Temp.sqf";
    };
};

call compile preProcessFileLineNumbers "Templates\Cup\CUP_Civ.sqf";
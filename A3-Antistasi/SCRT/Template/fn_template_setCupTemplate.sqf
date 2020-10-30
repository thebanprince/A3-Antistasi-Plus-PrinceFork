switch(true) do {
    case (terrainName in temperatemaps): {
        call compile preProcessFileLineNumbers "Templates\Cup\CUP_Reb_NAPA_Temp.sqf";
        call compile preProcessFileLineNumbers "Templates\Cup\CUP_Occ_CDF_Temp.sqf";
        call compile preProcessFileLineNumbers "Templates\Cup\CUP_Inv_RU_Temp.sqf";
    };
    default {
        call compile preProcessFileLineNumbers "Templates\Cup\CUP_Reb_FIA_Arid.sqf";
        call compile preProcessFileLineNumbers "Templates\Vanilla\Vanilla_Occ_NATO_Altis.sqf";
        call compile preProcessFileLineNumbers "Templates\Vanilla\Vanilla_Inv_CSAT_Altis.sqf";
    };
};

call compile preProcessFileLineNumbers "Templates\Cup\CUP_Civ.sqf";
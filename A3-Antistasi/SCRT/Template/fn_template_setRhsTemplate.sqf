switch(true) do {
    case (terrainName in temperatemaps): {
        call compile preProcessFileLineNumbers "Templates\Rhs\RHS_Occ_NATOCDF_Temp.sqf";
        call compile preProcessFileLineNumbers "Templates\Rhs\RHS_Reb_NAPA_Temp.sqf";
        call compile preProcessFileLineNumbers "Templates\Rhs\RHS_Inv_AFRF_Temp.sqf";
    };
    case (terrainName in tropicalmaps): {
        call compile preProcessFileLineNumbers "Templates\Rhs\RHS_Reb_NAPA_Temp.sqf";
        call compile preProcessFileLineNumbers "Templates\Rhs\RHS_Occ_USAF_Temp.sqf";
        call compile preProcessFileLineNumbers "Templates\Rhs\RHS_Inv_AFRF_Temp.sqf";
    };
    default {
        call compile preProcessFileLineNumbers "Templates\Rhs\RHS_Reb_NAPA_Arid.sqf";
        call compile preProcessFileLineNumbers "Templates\Rhs\RHS_Occ_USAF_Arid.sqf";
        call compile preProcessFileLineNumbers "Templates\Rhs\RHS_Inv_AFRF_Arid.sqf";
    };
};

call compile preProcessFileLineNumbers "Templates\Rhs\RHS_Civ.sqf";
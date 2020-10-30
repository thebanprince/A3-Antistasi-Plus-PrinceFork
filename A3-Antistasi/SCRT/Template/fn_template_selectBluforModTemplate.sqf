switch(true) do {
    case (hasRHS): {
        call compile preProcessFileLineNumbers "Templates\Rhs\RHS_Reb_HIDF_Arid.sqf";
        call compile preProcessFileLineNumbers "Templates\Rhs\RHS_Occ_CDF_Arid.sqf";
        call compile preProcessFileLineNumbers "Templates\Rhs\RHS_Inv_AFRF_Arid.sqf";
        call compile preProcessFileLineNumbers "Templates\Rhs\RHS_Civ.sqf";
    };
    case (hasAU): {
        call compile preprocessFileLineNumbers "Templates\Au\AU_Reb_FIA_Arid_B.sqf";
        call compile preprocessFileLineNumbers "Templates\Au\AU_Occ_AAF_Arid.sqf";
        call compile preprocessFileLineNumbers "Templates\Au\AU_Inv_CSAT_Arid.sqf";
        call compile preProcessFileLineNumbers "Templates\Cup\CUP_Civ.sqf";
    };
    case (hasAegis): {
        call compile preprocessFileLineNumbers "Templates\Aegis\Aegis_Reb_FIA_B_Altis.sqf";
        call compile preprocessFileLineNumbers "Templates\Aegis\Aegis_Occ_AAF_Altis.sqf";
        call compile preprocessFileLineNumbers "Templates\Aegis\Aegis_Inv_RUS_Woodland.sqf";
        call compile preProcessFileLineNumbers "Templates\Aegis\Aegis_Civ.sqf";
    };
    case (hasCup): {
        call compile preProcessFileLineNumbers "Templates\Cup\CUP_Reb_FIA_Arid_B.sqf";
        call compile preProcessFileLineNumbers "Templates\Cup\CUP_Occ_AAF_Arid_B.sqf";
        call compile preProcessFileLineNumbers "Templates\Cup\CUP_Inv_RU_Arid.sqf";
        call compile preProcessFileLineNumbers "Templates\Cup\CUP_Civ.sqf";
    };
    default {
        call compile preProcessFileLineNumbers "Templates\Vanilla\Vanilla_Reb_FIA_B_Altis.sqf";
        call compile preProcessFileLineNumbers "Templates\Vanilla\Vanilla_Occ_AAF_Altis.sqf";
        call compile preProcessFileLineNumbers "Templates\Vanilla\Vanilla_Inv_CSAT_Altis.sqf";
        call compile preProcessFileLineNumbers "Templates\Vanilla\Vanilla_Civ.sqf";
    };
};
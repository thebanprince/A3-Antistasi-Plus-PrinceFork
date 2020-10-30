switch(true) do {//This one (vanilla) works differently so that we don't get DLC kit on modded maps.
    case (terrainName == "enoch"): {
        call compile preProcessFileLineNumbers "Templates\Vanilla\Vanilla_Reb_FIA_Enoch.sqf";
        call compile preProcessFileLineNumbers "Templates\Vanilla\Vanilla_Occ_NATO_Temp.sqf";
        call compile preProcessFileLineNumbers "Templates\Vanilla\Vanilla_Inv_CSAT_Enoch.sqf";
    };
    case (terrainName == "tanoa"): {
        call compile preProcessFileLineNumbers "Templates\Vanilla\Vanilla_Reb_SDK_Tanoa.sqf";
        call compile preProcessFileLineNumbers "Templates\Vanilla\Vanilla_Occ_NATO_Tanoa.sqf";
        call compile preProcessFileLineNumbers "Templates\Vanilla\Vanilla_Inv_CSAT_Tanoa.sqf";
    };
    case (terrainName in temperatemaps): {
        call compile preProcessFileLineNumbers "Templates\Vanilla\Vanilla_Reb_FIA_Altis.sqf";
        call compile preProcessFileLineNumbers "Templates\Vanilla\Vanilla_Occ_NATO_Temp.sqf";
        call compile preProcessFileLineNumbers "Templates\Vanilla\Vanilla_Inv_CSAT_Altis.sqf";
    };
    default {
        call compile preProcessFileLineNumbers "Templates\Vanilla\Vanilla_Reb_FIA_Altis.sqf";
        call compile preProcessFileLineNumbers "Templates\Vanilla\Vanilla_Occ_NATO_Altis.sqf";
        call compile preProcessFileLineNumbers "Templates\Vanilla\Vanilla_Inv_CSAT_Altis.sqf";
    };
};

call compile preProcessFileLineNumbers "Templates\Vanilla\Vanilla_Civ.sqf";
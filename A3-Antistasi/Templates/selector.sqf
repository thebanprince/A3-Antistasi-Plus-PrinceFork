/*
    This file controls the selection of templates based on the mods loaded and map used.
    When porting new mods/maps be sure to add them to their respective sections!
*/

//Map checker
aridmaps = ["Altis","Kunduz","Malden","tem_anizay"];
tropicalmaps = ["Tanoa"];
temperatemaps = ["Enoch","chernarus_summer","vt7","taviana","Tembelan"];
arcticmaps = ["Chernarus_Winter"];
//Mod selector

if(teamplayer != independent) then {//This section is for Altis Blufor ONLY!
  switch(true) do {
    case (hasRHS): {
      call compile preProcessFileLineNumbers "Templates\Rhs\RHS_Reb_CDF_Arid.sqf";
      call compile preProcessFileLineNumbers "Templates\Rhs\RHS_Occ_CDF_Arid.sqf";
      call compile preProcessFileLineNumbers "Templates\Rhs\RHS_Inv_AFRF_Arid.sqf";
      call compile preProcessFileLineNumbers "Templates\Rhs\RHS_Civ.sqf";
    };
    default {
      call compile preProcessFileLineNumbers "Templates\Vanilla\Vanilla_Reb_FIA_B_Altis.sqf";
      call compile preProcessFileLineNumbers "Templates\Vanilla\Vanilla_Occ_AAF_Altis.sqf";
      call compile preProcessFileLineNumbers "Templates\Vanilla\Vanilla_Inv_CSAT_Altis.sqf";
      call compile preProcessFileLineNumbers "Templates\Vanilla\Vanilla_Civ.sqf";
    };
  };
} else {//This is for non-blufor (THE ONE THAT MATTERS!!)
  switch(true) do{
    case (hasAU): {
      call compile preprocessFileLineNumbers "Templates\Au\AU_Reb_TAPA_Wdl.sqf";
      call compile preprocessFileLineNumbers "Templates\Au\AU_Occ_TAF_Wdl.sqf";
      call compile preprocessFileLineNumbers "Templates\Au\AU_Inv_CSAT_Wdl.sqf";
      call compile preProcessFileLineNumbers "Templates\Vanilla\Vanilla_Civ.sqf";
    };
    case (hasAegis): {
      call compile preprocessFileLineNumbers "Templates\Aegis\Aegis_Reb_FIA_Woodland.sqf";
      call compile preprocessFileLineNumbers "Templates\Aegis\Aegis_Occ_NATO_Woodland.sqf";
      call compile preprocessFileLineNumbers "Templates\Aegis\Aegis_Inv_CSAT_Woodland.sqf";
      call compile preProcessFileLineNumbers "Templates\Aegis\Aegis_Civ.sqf";
    };
    case (hasRHS): {
      switch(true) do {
        case (worldName in arcticmaps): {
          call compile preProcessFileLineNumbers "Templates\Rhs\RHS_Reb_NAPA_Temp.sqf";
          call compile preProcessFileLineNumbers "Templates\Rhs\RHS_Occ_USAF_Temp.sqf";
          call compile preProcessFileLineNumbers "Templates\Rhs\RHS_Inv_AFRF_Temp.sqf";
        };
        case (worldName in temperatemaps): {
          if ("infantryUnitTiers" call BIS_fnc_getParamValue == 1) then {
            call compile preProcessFileLineNumbers "Templates\Rhs\RHS_Occ_NATOCDF_Temp.sqf";
          } else {
            call compile preProcessFileLineNumbers "Templates\Rhs\RHS_Occ_USAF_Temp.sqf";
          };
          call compile preProcessFileLineNumbers "Templates\Rhs\RHS_Reb_NAPA_Temp.sqf";
          call compile preProcessFileLineNumbers "Templates\Rhs\RHS_Inv_AFRF_Temp.sqf";
        };
        case (worldName in tropicalmaps): {
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
    };
    default {
      switch(true) do {//This one (vanilla) works differently so that we don't get DLC kit on modded maps.
        case (worldName == "Enoch"): {
          call compile preProcessFileLineNumbers "Templates\Vanilla\Vanilla_Reb_FIA_Enoch.sqf";
          call compile preProcessFileLineNumbers "Templates\Vanilla\Vanilla_Occ_NATO_Temp.sqf";
          call compile preProcessFileLineNumbers "Templates\Vanilla\Vanilla_Inv_CSAT_Enoch.sqf";
        };
        case (worldName == "Tanoa"): {
          call compile preProcessFileLineNumbers "Templates\Vanilla\Vanilla_Reb_SDK_Tanoa.sqf";
          call compile preProcessFileLineNumbers "Templates\Vanilla\Vanilla_Occ_NATO_Tanoa.sqf";
          call compile preProcessFileLineNumbers "Templates\Vanilla\Vanilla_Inv_CSAT_Tanoa.sqf";
        };
        case (worldName in temperatemaps): {
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
    };
  };
};

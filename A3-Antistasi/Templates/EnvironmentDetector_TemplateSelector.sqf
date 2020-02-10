/*System for selecting the correct environment template for the map.

To add detection for a new map:

To add detection for a new set of templates:

*/

//Map detection
//Arid
switch (worldName) do {
  case ("Altis"): {environmentID = 0};
  case ("Malden"): {environmentID = 0};
  case ("anizay"): {environmentID = 0};
  case ("Kunduz"): {environmentID = 0};
  case ("takistan"): {environmentID = 0};
//Temperate
  case ("Enoch"): {environmentID = 1};
  case ("chernarus_summer"): {environmentID = 1};
  case ("Tembelan"): {environmentID = 1};
  case ("vt7"): {environmentID = 1};
//Tropical
  case ("Tanoa"): {environmentID = 2};
//Arctic
  case ("chernarus_winter"): {environmentID = 3};
};

//Template selection
if (!activeGREF && !activeUSAF && !activeAFRF && !has3CB && !hasIFA){
  if (worldName != "Altis"){
    switch (worldName){
      case ("Tanoa"){
        call compile preProcessFileLineNumbers "Templates\Vanilla_Reb_SDK_Tanoa.sqf";
        call compile preProcessFileLineNumbers "Templates\Vanilla_Occ_NATO_Tanoa.sqf";
        call compile preProcessFileLineNumbers "Templates\Vanilla_Inv_CSAT_Tanoa.sqf";
      };
      case ("Enoch"){
        call compile preProcessFileLineNumbers "Templates\Vanilla_Reb_FIA_Enoch.sqf";
        call compile preProcessFileLineNumbers "Templates\Vanilla_Occ_NATO_Enoch.sqf";
        call compile preProcessFileLineNumbers "Templates\Vanilla_Inv_CSAT_Enoch.sqf";
      };
    };
  }else{
    if(teamPlayer != independent) {call compile preProcessFileLineNumbers "Templates\Vanilla_Reb_FIA_B_Altis.sqf"} else {call compile preProcessFileLineNumbers "Templates\Vanilla_Reb_FIA_Altis.sqf"};
    if(teamPlayer != independent) {call compile preProcessFileLineNumbers "Templates\Vanilla_Occ_AAF_Altis.sqf"} else {call compile preProcessFileLineNumbers "Templates\Vanilla_Occ_NATO_Altis.sqf"};
    call compile preProcessFileLineNumbers "Templates\Vanilla_Inv_CSAT_Altis.sqf";
  };
}else{
  switch (environmentID) do {
    case (0){//Arid
      //Rebel Templates
    	switch (true) do {
    	 case (has3CB): {if(teamPlayer != independent) {call compile preProcessFileLineNumbers "Templates\3CB_Reb_TPGM_Arid.sqf"} else {call compile preProcessFileLineNumbers "Templates\3CB_Reb_TTF_Arid.sqf"}};
    	 case (activeGREF): {if(teamPlayer != independent) {call compile preProcessFileLineNumbers "Templates\RHS_Reb_CDF_Arid.sqf"} else {call compile preProcessFileLineNumbers "Templates\RHS_Reb_NAPA_Arid.sqf"}};
       case (hasIFA): {call compile preProcessFileLineNumbers "Templates\IFA_Reb_POL_Arid.sqf"};
    	};
    	//Occupant Templates
    	switch (true) do {
    	 case (has3CB): {if(teamPlayer != independent) {call compile preProcessFileLineNumbers "Templates\3CB_Occ_TKA_Arid.sqf"} else {call compile preProcessFileLineNumbers "Templates\BAF_Occ_BAF_Arid.sqf"}};
    	 case (activeUSAF): {if(teamPlayer != independent) {call compile preProcessFileLineNumbers "Templates\RHS_Occ_CDF_Arid.sqf"} else {call compile preProcessFileLineNumbers "Templates\RHS_Occ_USAF_Arid.sqf"}};
       case (hasIFA): {call compile preProcessFileLineNumbers "Templates\IFA_Occ_WEH_Arid.sqf"};
    	};
    	//Invader Templates
    	switch (true) do {
    	 case (has3CB): {call compile preProcessFileLineNumbers "Templates\3CB_Inv_TKM_Arid.sqf"};
    	 case (activeAFRF): {call compile preProcessFileLineNumbers "Templates\RHS_Inv_AFRF_Arid.sqf"};
       case (hasIFA): {call compile preProcessFileLineNumbers "Templates\IFA_Inv_SOV_Arid.sqf"};
    	};
    };//Close Case 0
    case(1) {//Temperate
      //Rebel Templates
    	switch (true) do {
    	 case (has3CB): {call compile preProcessFileLineNumbers "Templates\3CB_Reb_CNM_Temp.sqf"};
    	 case (activeGREF): {call compile preProcessFileLineNumbers "Templates\RHS_Reb_NAPA_Wdl.sqf"};
       case (hasIFA): {call compile preProcessFileLineNumbers "Templates\IFA_Reb_POL_Temp.sqf"};
    	};
    	//Occupant Templates
    	switch (true) do {
    	 case (has3CB): {call compile preProcessFileLineNumbers "Templates\BAF_Occ_BAF_Trop.sqf"};//Needs a new template
    	 case (activeUSAF): {call compile preProcessFileLineNumbers "Templates\RHS_Occ_USAF_Wdl.sqf"};
       case (hasIFA): {call compile preProcessFileLineNumbers "Templates\IFA_Occ_WEH_Temp.sqf"};
    	};
    	//Invader Templates
    	switch (true) do {
    	 case (has3CB): {call compile preProcessFileLineNumbers "Templates\3CB_Inv_TKM_Arid.sqf"};//Needs a new template
    	 case (activeAFRF): {call compile preProcessFileLineNumbers "Templates\RHS_Inv_AFRF_Temp.sqf"};
       case (hasIFA): {call compile preProcessFileLineNumbers "Templates\IFA_Inv_SOV_Temp.sqf"};
    	};
    };//Close case 1
    case(2){//Tropical
      //Rebel Templates
      switch (true) do {
        case (has3CB): {call compile preProcessFileLineNumbers "Templates\3CB_Reb_CNM_Trop.sqf"};
        case (activeGREF): {call compile preProcessFileLineNumbers "Templates\RHS_Reb_NAPA_Wdl.sqf"};
        case (hasIFA): {call compile preProcessFileLineNumbers "Templates\IFA_Reb_POL_Temp.sqf"};
      };
      //Occupant Templates
      switch (true) do {
        case (has3CB): {call compile preProcessFileLineNumbers "Templates\BAF_Occ_BAF_Trop.sqf"};
        case (activeUSAF): {call compile preProcessFileLineNumbers "Templates\RHS_Occ_USAF_Wdl.sqf"};
        case (hasIFA): {call compile preProcessFileLineNumbers "Templates\IFA_Occ_WEH_Temp.sqf"};
      };
      //Invader Templates
      switch (true) do {
        case (has3CB): {call compile preProcessFileLineNumbers "Templates\3CB_Inv_TKM_Arid.sqf"};//Needs a new template
        case (activeAFRF): {call compile preProcessFileLineNumbers "Templates\RHS_Inv_AFRF_Temp.sqf"};
        case (hasIFA): {call compile preProcessFileLineNumbers "Templates\IFA_Inv_SOV_Temp.sqf"};
      };
    };//Close case 2
    case(3) {//Arctic
      //Rebel Templates
      switch (true) do {
        case (has3CB): {call compile preProcessFileLineNumbers "Templates\3CB_Reb_CNM_Temp.sqf"};//Needs new template
        case (activeGREF): {call compile preProcessFileLineNumbers "Templates\RHS_Reb_NAPA_Wdl.sqf"};
        case (hasIFA): {call compile preProcessFileLineNumbers "Templates\IFA_Reb_POL_Arct.sqf"};
      };
      //Occupant Templates
      switch (true) do {
        case (has3CB): {call compile preProcessFileLineNumbers "Templates\BAF_Occ_BAF_Trop.sqf"};//Needs a new template
        case (activeUSAF): {call compile preProcessFileLineNumbers "Templates\RHS_Occ_USAF_Wdl.sqf"};
        case (hasIFA): {call compile preProcessFileLineNumbers "Templates\IFA_Occ_WEH_Arct.sqf"};
      };
      //Invader Templates
      switch (true) do {
        case (has3CB): {call compile preProcessFileLineNumbers "Templates\3CB_Inv_TKM_Arid.sqf"};//Needs a new template
        case (activeAFRF): {call compile preProcessFileLineNumbers "Templates\RHS_Inv_AFRF_Temp.sqf"};
        case (hasIFA): {call compile preProcessFileLineNumbers "Templates\IFA_Inv_SOV_Arct.sqf"};
      };
    };//close case 3
  };//close environmentID Switch
};//close ELSE

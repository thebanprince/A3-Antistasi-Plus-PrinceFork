////////////////////////////////////
//      Uniforms Sorting        ///
////////////////////////////////////
{
	private _originUnit = getText (configfile >> "CfgWeapons" >> _x >> "ItemInfo" >> "uniformClass");
	private _uniformSide = getNumber (configfile >> "CfgVehicles" >> _originUnit >> "side");
	switch (_uniformSide) do {
		case 3: {allCivilianUniforms pushBack _x};
	};
} forEach allUniforms;

{
	private _originUnit = getText (configfile >> "CfgWeapons" >> _x >> "ItemInfo" >> "uniformClass");
	private _uniformFaction = getText (configfile >> "CfgVehicles" >> _originUnit >> "faction");
	switch (_uniformFaction) do {
		//RHS
		case "rhsgref_faction_nationalist": {if (nameTeamPlayer isEqualTo "NAPA") then {allRebelUniforms pushBack _x};};
		case "rhsgref_faction_hidf": {if (nameTeamPlayer isEqualTo "Rebels") then {allRebelUniforms pushBack _x};};
		//Tanoa/ApexDLC
		case "IND_C_F": {if (teamPlayer isEqualTo resistance) then {allRebelUniforms pushBack _x};};
		//Contact DLC Looters
		case "IND_L_F": {if (teamPlayer isEqualTo resistance) then {allRebelUniforms pushBack _x};};
		//BLUFOR used because O/I Gueriilla uniforms 'scope' = 1 ----> Added Green Via Templates.
		case "BLU_G_F": {if (teamPlayer isEqualTo west) then {allRebelUniforms pushBack _x};};
		case "CUP_I_NAPA": {if (teamPlayer isEqualTo independent) then {allRebelUniforms pushBack _x};};
	};
} forEach allUniforms;

allCivilianUniforms deleteAt (allCivilianUniforms find "U_C_Protagonist_VR");
allCivilianUniforms deleteAt (allCivilianUniforms find "U_LIB_CIV_Priest");
allCivilianUniforms deleteAt (allCivilianUniforms find "U_C_PriestBody");
allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_CHC_B_U_PRIEST_03");
allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_CHC_B_U_PRIEST_02");
allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_CHC_B_U_PRIEST_01");
allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_CHC_C_U_PRIEST_03");
allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_CHC_C_U_PRIEST_02");
allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_CHC_C_U_PRIEST_01");
allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_CHC_I_U_PRIEST_03");
allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_CHC_I_U_PRIEST_02");
allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_CHC_I_U_PRIEST_01");
allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_CHC_O_U_PRIEST_03");
allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_CHC_O_U_PRIEST_02");
allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_CHC_O_U_PRIEST_01");
allCivilianUniforms deleteAt (allCivilianUniforms find "gm_ge_pol_uniform_suit_80_grn");
allCivilianUniforms deleteAt (allCivilianUniforms find "gm_gc_pol_uniform_dress_80_blu");
allCivilianUniforms deleteAt (allCivilianUniforms find "gm_ge_pol_uniform_blouse_80_blk");
allCivilianUniforms deleteAt (allCivilianUniforms find "gm_ge_ff_uniform_man_80_orn");
allCivilianUniforms deleteAt (allCivilianUniforms find "U_I_L_Uniform_01_camo_F");
allCivilianUniforms deleteAt (allCivilianUniforms find "U_I_L_Uniform_01_deserter_F");
allCivilianUniforms deleteAt (allCivilianUniforms find "U_I_L_Uniform_01_tshirt_olive_F");
allCivilianUniforms deleteAt (allCivilianUniforms find "U_I_L_Uniform_01_tshirt_sport_F");
allCivilianUniforms deleteAt (allCivilianUniforms find "U_I_L_Uniform_01_tshirt_black_F");
allCivilianUniforms deleteAt (allCivilianUniforms find "U_I_L_Uniform_01_tshirt_skull_F");
allCivilianUniforms deleteAt (allCivilianUniforms find "U_C_IDAP_Man_shorts_F");
allCivilianUniforms deleteAt (allCivilianUniforms find "U_C_IDAP_Man_casual_F");
allCivilianUniforms deleteAt (allCivilianUniforms find "U_C_IDAP_Man_cargo_F");
allCivilianUniforms deleteAt (allCivilianUniforms find "U_C_IDAP_Man_Tee_F");
allCivilianUniforms deleteAt (allCivilianUniforms find "U_C_IDAP_Man_Jeans_F");
allCivilianUniforms deleteAt (allCivilianUniforms find "U_C_IDAP_Man_TeeShorts_F");
allRebelUniforms deleteAt (allRebelUniforms find "U_I_G_Story_Protagonist_F");
allRebelUniforms deleteAt (allRebelUniforms find "U_I_G_resistanceLeader_F");
allRebelUniforms deleteAt (allRebelUniforms find "U_BG_GhillieSuit");
allRebelUniforms deleteAt (allRebelUniforms find "CUP_U_I_Ghillie_Top");
allRebelUniforms deleteAt (allRebelUniforms find "gm_ge_pol_uniform_pilot_grn");
allRebelUniforms deleteAt (allRebelUniforms find "gm_ge_pol_uniform_pilot_rolled_grn");
allRebelUniforms deleteAt (allRebelUniforms find "gm_ge_dbp_uniform_suit_80_blu");
allRebelUniforms deleteAt (allRebelUniforms find "gm_ge_pol_uniform_pilot_grn");
allRebelUniforms deleteAt (allRebelUniforms find "gm_ge_pol_uniform_pilot_grn");
allRebelUniforms deleteAt (allRebelUniforms find "gm_ge_pol_uniform_pilot_grn");
allRebelUniforms deleteAt (allRebelUniforms find "gm_ge_pol_uniform_pilot_grn");

if (A3A_has3CBFactions) then {
	allRebelUniforms deleteAt (allRebelUniforms find "UK3CB_CW_US_B_LATE_U_SF_CombatUniform_01_BLK");
	allRebelUniforms deleteAt (allRebelUniforms find "UK3CB_CW_US_B_LATE_U_SF_CombatUniform_02_BLK");
	allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_ADC_C_U_01");
	allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_ADC_C_U_01_B");
	allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_ADC_C_U_01_C");
	allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_ADC_C_U_01_D");
	allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_ADC_C_U_01_E");
	allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_ADC_C_U_01_F");
	allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_ADC_C_U_01_G");
	allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_ADC_C_U_01_H");
	allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_ADC_C_U_01_I");
	allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_ADC_C_U_01_J");
	allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_ADC_C_U_01_K");
	allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_TKC_C_U_01");
	allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_TKC_C_U_01_B");
	allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_TKC_C_U_01_C");
	allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_TKC_C_U_01_D");
	allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_TKC_C_U_01_E");
	allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_TKC_C_U_02");
	allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_TKC_C_U_02_B");
	allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_TKC_C_U_02_C");
	allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_TKC_C_U_02_D");
	allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_TKC_C_U_02_E");
	allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_TKC_C_U_03");
	allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_TKC_C_U_03_B");
	allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_TKC_C_U_03_C");
	allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_TKC_C_U_03_D");
	allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_TKC_C_U_03_E");
	allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_TKC_C_U_06");
	allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_TKC_C_U_06_B");
	allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_TKC_C_U_06_C");
	allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_TKC_C_U_06_D");
	allCivilianUniforms deleteAt (allCivilianUniforms find "UK3CB_TKC_C_U_06_E");
};

////////////////////////////////////
//      Backpacks Sorting        ///
////////////////////////////////////
{
	private _itemFaction = getText (configfile >> "CfgVehicles" >> _x >> "faction");
	switch (_itemFaction) do {
		case "Default": {allBackpacksEmpty pushBack _x};
		default {allBackpacksTool pushBack _x};
	};
} forEach allBackpacks;

allBackpacksEmpty deleteAt (allBackpacksEmpty find "B_AssaultPack_Kerry");
allBackpacksEmpty deleteAt (allBackpacksEmpty find "B_CombinationUnitRespirator_01_F");

{
	switch (true) do {
		case ((getText (configfile >> "CfgVehicles" >> _x >> "assembleInfo" >> "assembleTo")) != ""): {
			if !((getArray (configfile >> "CfgVehicles" >> _x >> "assembleInfo" >> "base")) isEqualTo []) then {
				allBackpacksStatic pushBack _x;
			}
			else {
				allBackpacksDevice pushback _x;
			};
		};
		case ((getText (configfile >> "CfgVehicles" >> _x >> "assembleInfo" >> "assembleTo")) == ""): {
			if ((getText (configfile >> "CfgVehicles" >> _x >> "assembleInfo" >> "base")) == "") then {
				allBackpacksStatic pushBack _x;
			};
		};
	};
} forEach allBackpacksTool;

{
	private _faction = getText (configfile >> "CfgVehicles" >> _x >> "faction");
	private _side = getNumber (configfile >> "CfgFactionClasses" >> _faction >> "side");
	switch (_side) do {
		case 0: {invaderBackpackDevice pushBack _x};
		case 1: {occupantBackpackDevice pushBack _x};
		case 2: {rebelBackpackDevice pushBack _x};
		case 3: {civilianBackpackDevice pushBack _x};
	};
} forEach allBackpacksDevice;

////////////////////////////////////
//   ARMORED VESTS LIST          ///
////////////////////////////////////
//WHY is there no clean list?
//allArmoredVests = allVests select {getNumber (configfile >> "CfgWeapons" >> _x >> "ItemInfo" >> "HitpointsProtectionInfo" >> "Chest" >> "armor") > 5};
allCivilianVests = allVests - allArmoredVests;

allCivilianVests deleteAt (allCivilianVests find "V_RebreatherB");
allCivilianVests deleteAt (allCivilianVests find "V_RebreatherIR");
allCivilianVests deleteAt (allCivilianVests find "V_RebreatherIA");

////////////////////////////////////
//   ARMORED HELMETS LIST        ///
////////////////////////////////////
//WHY is there no clean list?
//allArmoredHeadgear = allHeadgear select {getNumber (configfile >> "CfgWeapons" >> _x >> "ItemInfo" >> "HitpointsProtectionInfo" >> "Head" >> "armor") > 0};
allCivilianHeadgear = allHeadgear - allArmoredHeadgear;

allCivilianHeadgear deleteAt (allCivilianHeadgear find "H_Beret_Colonel");
allCivilianHeadgear deleteAt (allCivilianHeadgear find "H_Beret_02");
allCivilianHeadgear deleteAt (allCivilianHeadgear find "H_Beret_CSAT_01_F");

if (A3A_hasGlobMob) then {
	{
		allCivilianHeadgear deleteAt (allCivilianHeadgear find _x);
	} forEach [
		"gm_gc_army_headgear_crewhat_80_blk", "gm_gc_pol_headgear_cap_80_blu", "gm_gc_army_headgear_cap_80_gry", "gm_gc_army_headgear_hat_80_grn", "gm_gc_bgs_headgear_hat_80_gry",
		"gm_gc_headgear_zsh3_orn", "gm_gc_headgear_zsh3_wht", "gm_gc_headgear_zsh3_blu", "gm_gc_headgear_fjh_model4_oli", "gm_gc_headgear_fjh_model4_wht",
		"gm_gc_headgear_beret_blk", "gm_gc_headgear_beret_orn", "gm_gc_headgear_beret_str", "gm_gc_headgear_beret_officer_blk", "gm_gc_headgear_beret_officer_orn", "gm_gc_headgear_beret_officer_str", "gm_ge_headgear_beret_mrb", "gm_ge_headgear_beret_un", "gm_ge_headgear_beret_bdx_armyaviation", "gm_ge_headgear_beret_bdx_lrrp", "gm_ge_headgear_beret_bdx_paratrooper", "gm_ge_headgear_beret_bdx_specop",
    	"gm_ge_headgear_beret_blk_antitank", "gm_ge_headgear_beret_blk_armor", "gm_ge_headgear_beret_blk_armorrecon", "gm_ge_headgear_beret_blk_recon", "gm_ge_headgear_beret_grn_guardbtl", "gm_ge_headgear_beret_grn_infantry", "gm_ge_headgear_beret_grn_mechinf",
    	"gm_ge_headgear_beret_grn_music", "gm_ge_headgear_beret_red_antiair", "gm_ge_headgear_beret_red_artillery", "gm_ge_headgear_beret_red_engineer", "gm_ge_headgear_beret_red_geoinfo", "gm_ge_headgear_beret_red_maintenance", "gm_ge_headgear_beret_red_militarypolice",
    	"gm_ge_headgear_beret_red_nbc", "gm_ge_headgear_beret_red_opcom", "gm_ge_headgear_beret_red_signals", "gm_ge_headgear_beret_red_supply", "gm_ge_headgear_beret_blu_medical", "gm_ge_headgear_beret_crew_bdx_paratrooper", "gm_ge_headgear_beret_crew_blk_antitank", "gm_ge_headgear_beret_crew_blk_armor", "gm_ge_headgear_beret_crew_blk_armorrecon",
    	"gm_ge_headgear_beret_crew_blk_recon", "gm_ge_headgear_beret_crew_grn_mechinf", "gm_ge_headgear_beret_crew_red_antiair", "gm_ge_headgear_beret_crew_red_artillery", "gm_ge_headgear_beret_crew_red_engineer", "gm_ge_headgear_beret_crew_red_maintenance", "gm_ge_headgear_beret_crew_red_militarypolice", "gm_ge_headgear_beret_crew_red_nbc",
    	"gm_ge_headgear_beret_crew_red_opcom", "gm_ge_headgear_beret_crew_red_signals", "gm_ge_headgear_beret_crew_red_supply", "gm_ge_headgear_hat_80_oli", "gm_ge_headgear_hat_80_m62_oli", "gm_ge_headgear_hat_80_gry",
    	"gm_ge_headgear_hat_90_flk", "gm_ge_headgear_hat_90_trp", "gm_ge_headgear_hat_boonie_oli", "gm_ge_headgear_hat_boonie_wdl", "gm_ge_headgear_hat_boonie_flk", "gm_ge_headgear_hat_boonie_trp", "gm_ge_headgear_hat_beanie_blk", "gm_ge_headgear_winterhat_80_oli", "gm_ge_headgear_headset_crew_oli",
    	"gm_ge_headgear_crewhat_80_blk", "gm_ge_pol_headgear_cap_80_grn", "gm_ge_pol_headgear_cap_80_wht", "gm_ge_dbp_headgear_cap_80_blu", "gm_ge_headgear_sph4_oli", "gm_pl_army_headgear_cap_80_moro",
    	"gm_pl_headgear_beret_bdx", "gm_pl_headgear_beret_blu", "gm_pl_headgear_beret_blk", "gm_dk_headgear_hat_boonie_m84"
	];
};

if (A3A_hasCup) then {
	{
		allCivilianHeadgear deleteAt (allCivilianHeadgear find _x);
	} forEach [
		"CUP_H_BAF_PARA_BERET", "CUP_H_BAF_PARA_PRROVER_BERET", "CUP_H_BAF_PARA_PRRUNDER_BERET", "CUP_H_Ger_Boonie_desert", "CUP_H_Ger_Boonie2_desert", "CUP_H_Ger_Boonie_Flecktarn", "CUP_H_Ger_Boonie2_Flecktarn", "CUP_H_Ger_Cap_EP_Tan1", "CUP_H_Ger_Cap_EP_Tan2", "CUP_H_Ger_Cap_EP_Grn1",
		"CUP_H_Ger_Cap_EP_Grn2", "CUP_H_Ger_Cap_Grn1", "CUP_H_Ger_Cap_Grn2", "CUP_H_Ger_Cap_Tan1", "CUP_H_Ger_Cap_Tan2", "CUP_H_Ger_Beret_INF_Grn", "CUP_H_Ger_Beret_KSK_Red", "CUP_H_Ger_Beret_ARM_Grn", "CUP_H_Ger_Beret_ARM_Blk", "CUP_H_Ger_Beret_TankCommander_Grn", "CUP_H_Ger_Beret_TankCommander_Blk",
		"CUP_H_PMC_PRR_Headset", "CUP_H_PMC_EP_Headset", "CUP_H_PMC_Cap_Grey", "CUP_H_PMC_Cap_Tan", "CUP_H_PMC_Cap_Burberry", "CUP_H_PMC_Cap_Back_Grey", "CUP_H_PMC_Cap_Back_Tan", "CUP_H_PMC_Cap_Back_Burberry", "CUP_H_PMC_Cap_PRR_Grey", "CUP_H_PMC_Cap_PRR_Tan", "CUP_H_PMC_Cap_PRR_Burberry", "CUP_H_PMC_Cap_Back_PRR_Grey",
		"CUP_H_PMC_Cap_Back_PRR_Tan", "CUP_H_PMC_Cap_Back_PRR_Burberry", "CUP_H_PMC_Cap_EP_Grey", "CUP_H_PMC_Cap_EP_Tan", "CUP_H_PMC_Cap_Back_EP_Grey", "CUP_H_PMC_Cap_Back_EP_Tan", "CUP_H_PMC_Beanie_Khaki", "CUP_H_PMC_Beanie_Winter", "CUP_H_PMC_Beanie_Black", "CUP_H_PMC_Beanie_Headphones_Khaki", "CUP_H_PMC_Beanie_Headphones_Winter", "CUP_H_PMC_Beanie_Headphones_Black", "CUP_H_RUS_Cap_EMR", "CUP_H_RUS_Cap_ATACSFG",
		"CUP_H_RUS_Cap_ATACSAU", "CUP_H_RUS_Bandana_HS", "CUP_H_RUS_Beret_VDV", "CUP_H_RUS_Beret_Spetsnaz", "CUP_H_RUS_GSSh01_Headphones_black", "CUP_H_RUS_GSSh01_Headphones_brown", "CUP_H_RUS_GSSh01_Headphones_grey", "CUP_H_RUS_GSSh01_Headphones_green", "CUP_H_RUS_Balaclava_Ratnik_Headphones", "CUP_H_RUS_Balaclava_Ratnik_Headphones_v2", "CUP_H_RUS_Balaclava_Ratnik_Headphones_winter", "CUP_H_RUS_Balaclava_Ratnik_Headphones_winter_v2", "CUP_H_RUS_Bandana_GSSh_Headphones",
		"CUP_H_TK_Lungee", "CUP_H_TK_Beret", "CUP_H_TKI_Lungee_01", "CUP_H_TKI_Lungee_02", "CUP_H_TKI_Lungee_03", "CUP_H_TKI_Lungee_04", "CUP_H_TKI_Lungee_05", "CUP_H_TKI_Lungee_06", "CUP_H_TKI_Lungee_Open_01", "CUP_H_TKI_Lungee_Open_02", "CUP_H_TKI_Lungee_Open_03", "CUP_H_TKI_Lungee_Open_04", "CUP_H_TKI_Lungee_Open_05",
		"CUP_H_TKI_Lungee_Open_06", "CUP_H_TKI_Pakol_1_01", "CUP_H_TKI_Pakol_1_02", "CUP_H_TKI_Pakol_1_03", "CUP_H_TKI_Pakol_1_04", "CUP_H_TKI_Pakol_1_05", "CUP_H_TKI_Pakol_1_06", "CUP_H_TKI_Pakol_2_01", "CUP_H_TKI_Pakol_2_02", "CUP_H_TKI_Pakol_2_03", "CUP_H_TKI_Pakol_2_04", "CUP_H_TKI_Pakol_2_05", "CUP_H_TKI_Pakol_2_06", "CUP_H_USMC_Officer_Cap", "CUP_H_FR_Cap_Headset_Green",
		"CUP_H_FR_Cap_Officer_Headset", "CUP_H_FR_BandanaGreen", "CUP_H_FR_BandanaWdl", "CUP_H_FR_BoonieMARPAT", "CUP_H_FR_Boonie_DES", "CUP_H_FR_BoonieWDL", "CUP_H_FR_BeanieGreen", "CUP_H_FR_Headset", "CUP_H_FR_Bandana_Headset", "CUP_H_FR_Headband_Headset", "CUP_H_FR_PRR_BoonieWDL", "CUP_H_USMC_BOONIE_WDL", "CUP_H_USMC_BOONIE_2_DES", "CUP_H_USMC_BOONIE_PRR_WDL",
		"CUP_H_USMC_BOONIE_PRR_DES", "CUP_H_USMC_CAP_WDL", "CUP_H_USMC_CAP_DES", "CUP_H_USMC_CAP_PRR_WDL", "CUP_H_USMC_CAP_PRR_DES", "CUP_H_C_MAGA_01", "CUP_H_C_Policecap_01", "CUP_H_CZ_Booniehat_vz95_des", "CUP_H_CZ_Cap_Headphones", "CUP_H_CZ_Cap_Headphones_des", "CUP_H_CZ_Booniehat_fold_des", "CUP_H_CZ_Patrol_Cap", "CUP_H_CZ_Pakol_headset_b_grey", "CUP_H_CZ_Pakol_headset_f_brown",
		"CUP_H_CDF_OfficerCap_MNT", "CUP_H_CDF_OfficerCap_DST", "CUP_H_CDF_OfficerCap_FST", "CUP_H_CDF_OfficerCap_SNW", "CUP_H_CDF_OfficerCap_UN", "CUP_H_CDF_Beret_UN", "CUP_H_SLA_OfficerCap", "CUP_H_SLA_SLCap", "CUP_H_SLA_Boonie", "CUP_H_SLA_Boonie_DES", "CUP_H_SLA_Boonie_URB", "CUP_H_SLA_Beret", "CUP_H_SLA_BeanieGreen",
		"CUP_H_SLA_BeretRed", "CUP_H_USArmy_Boonie_UCP", "CUP_H_USArmy_Boonie_hs_UCP", "CUP_H_USArmy_Boonie_OCP", "CUP_H_USArmy_Boonie_hs_OCP", "CUP_H_USArmy_Boonie_OEFCP", "CUP_H_USArmy_Boonie_hs_OEFCP", "CUP_H_USA_Boonie_wdl", "CUP_H_USA_Cap_Mcam_DEF", "CUP_H_USA_Cap_AU_DEF", "CUP_H_USA_Cap_UT_DEF", "CUP_H_USA_Cap_NY_DEF",
		"CUP_H_USA_Cap_PUNISHER_DEF", "CUP_H_USA_Cap_TREAD_DEF", "CUP_H_USA_Cap_MARSOC_DEF", "CUP_H_USA_Cap_MCAM", "CUP_H_USA_Cap_M81", "CUP_H_USArmy_Helmet_Protec", "CUP_H_USArmy_Helmet_Protec_Gog", "CUP_H_USArmy_Helmet_Protec_Gog_Strb", "CUP_H_USArmy_Helmet_Protec_NVG", "CUP_H_US_patrol_cap_WDL", "CUP_H_US_patrol_cap_OD", "CUP_H_US_patrol_cap_winter",
		"CUP_H_US_patrol_cap_desert", "CUP_H_US_patrol_cap_ERDL", "CUP_H_US_patrol_cap_ERDL_highland", "CUP_H_US_patrol_cap_tigerstripe", "CUP_H_US_patrol_cap_Tpattern", "CUP_H_US_patrol_cap_urban", "CUP_H_US_patrol_cap_DCU", "CUP_H_US_patrol_cap_UCP", "CUP_H_US_patrol_cap_OCP", "CUP_H_US_patrol_cap_OEFCP", "CUP_H_US_BOONIE_Alpenflage", "CUP_H_US_patrol_cap_alpenflage",
		"CUP_H_Booniehat_CCE", "CUP_H_Booniehat_TTS", "CUP_H_Beret_HIL","CUP_H_TKI_SkullCap_01", "CUP_H_TKI_SkullCap_02", "CUP_H_TKI_SkullCap_03", "CUP_H_TKI_SkullCap_04", "CUP_H_TKI_SkullCap_05", "CUP_H_TKI_SkullCap_06",
		"CUP_H_CZ_Hat01", "CUP_H_CZ_Hat02", "CUP_H_CZ_Hat04", "CUP_H_CZ_Hat03", "CUP_H_CZ_Cap_rgr", "CUP_H_CZ_Cap_flag", "CUP_H_CZ_Cap_khk", "CUP_H_ChDKZ_Beret", "CUP_H_ChDKZ_Beanie", "CUP_H_ChDKZ_Cap", "CUP_H_RACS_Beret_Blue"
	];
};

//////////////////
//   Glasses   ///
//////////////////
allCivilianGlasses append allGlasses;

allCivilianGlasses deleteAt (allCivilianGlasses find "None");
allCivilianGlasses deleteAt (allCivilianGlasses find "G_Goggles_VR");
allCivilianGlasses deleteAt (allCivilianGlasses find "G_I_Diving");
allCivilianGlasses deleteAt (allCivilianGlasses find "G_O_Diving");
allCivilianGlasses deleteAt (allCivilianGlasses find "G_B_Diving");
allCivilianGlasses deleteAt (allCivilianGlasses find "LIB_Glasses");
allCivilianGlasses deleteAt (allCivilianGlasses find "G_RegulatorMask_F");
allCivilianGlasses deleteAt (allCivilianGlasses find "G_AirPurifyingRespirator_02_olive_F");
allCivilianGlasses deleteAt (allCivilianGlasses find "G_AirPurifyingRespirator_02_sand_F");
allCivilianGlasses deleteAt (allCivilianGlasses find "G_AirPurifyingRespirator_02_black_F");
allCivilianGlasses deleteAt (allCivilianGlasses find "G_AirPurifyingRespirator_01_F");
allCivilianGlasses deleteAt (allCivilianGlasses find "G_Tactical_Clear");
allCivilianGlasses deleteAt (allCivilianGlasses find "G_Tactical_Black");
allCivilianGlasses deleteAt (allCivilianGlasses find "G_Balaclava_combat");
allCivilianGlasses deleteAt (allCivilianGlasses find "G_Combat");

////////////////
//   Radios   //
////////////////
If (A3A_hasTFAR || A3A_hasTFARBeta) then {
private _encryptRebel = if (teamPlayer == west) then { ["tf_west_radio_code"] } else { ["tf_guer_radio_code", "tf_independent_radio_code"] };
allRadios = allRadios select {
    private _encrypt = getText (configFile >> "CfgWeapons" >> _x >> "tf_encryptionCode");
    (_encrypt in _encryptRebel);
};

private _encrypthostile = if (teamPlayer == west) then { ["tf_guer_radio_code", "tf_independent_radio_code", "tf_east_radio_code"] } else { ["tf_west_radio_code", "tf_east_radio_code"] };
private _allHostileRadio = [];
{
    private _encrypt = getText (configFile >> "CfgVehicles" >> _x >> "tf_encryptionCode");
  	if (_encrypt in _encryptRebel) then {allBackpacksRadio pushBack _x};
    if (_encrypt in _encrypthostile) then {_allHostileRadio pushBack _x};
} forEach allBackpacksEmpty;

//Removes Radios from allBackpacksEmpty
allBackpacksEmpty = allBackpacksEmpty - _allHostileRadio - allBackpacksRadio;
};
/////////////////
// UAVTerminal //
/////////////////
private _encryptRebel = if (teamPlayer == west) then { 1 } else { 2 };
allUAVTerminals = allUAVTerminals select {
    private _encrypt = getNumber  (configFile >> "CfgWeapons" >> _x >> "ItemInfo" >> "side");
    (_encrypt isEqualTo "") or (_encrypt isEqualTo _encryptRebel);
};

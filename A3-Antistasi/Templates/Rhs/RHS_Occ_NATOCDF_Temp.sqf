////////////////////////////////////
//       NAMES AND FLAGS         ///
////////////////////////////////////
//Name Used for notifications
nameOccupants = "CDF/NATO";

//Police Faction
factionGEN = "BLU_GEN_F";
//SF Faction
factionMaleOccupants = "rhs_faction_socom";
//Miltia Faction
if (gameMode != 4) then {factionFIA = "rhsgref_faction_hidf"};

//Flag Images
NATOFlag = "Flag_Green_F";
NATOFlagTexture = "\ca\data\flag_chernarus_co.paa";
flagNATOmrk = "Faction_CDF";
if (isServer) then {"NATO_carrier" setMarkerText "NATO Carrier"};

//Loot Crate
NATOAmmobox = "B_supplyCrate_F";

////////////////////////////////////
//   PVP LOADOUTS AND VEHICLES   ///
////////////////////////////////////
//PvP Loadouts
NATOPlayerLoadouts = [
	//Team Leader
	["rhs_usaf_teamLeader"] call A3A_fnc_getLoadout,
	//Medic
	["rhs_usaf_medic"] call A3A_fnc_getLoadout,
	//Autorifleman
	["rhs_usaf_machineGunner"] call A3A_fnc_getLoadout,
	//Marksman
	["rhs_usaf_marksman"] call A3A_fnc_getLoadout,
	//Anti-tank Scout
	["rhs_usaf_AT"] call A3A_fnc_getLoadout,
	//AT2
	["rhs_usaf_rifleman"] call A3A_fnc_getLoadout
];

//PVP Player Vehicles
vehNATOPVP = ["rhsusf_m1025_w_s","rhsusf_m998_w_s_2dr","rhsusf_m998_w_s_2dr_fulltop","rhsusf_m998_w_s_4dr","rhsusf_m1025_w_s_m2","rhsusf_mrzr4_w_mud","rhsusf_m1240a1_m240_usmc_wd"];

////////////////////////////////////
//             UNITS             ///
////////////////////////////////////
//Military Units
NATOMarksman = ["rhsgref_cdf_b_reg_marksman","rhsgref_cdf_b_para_marksman","rhsusf_usmc_marpat_wd_marksman"];
NATOOfficer = "rhsusf_usmc_marpat_wd_officer";
NATOOfficer2 = "rhsgref_cdf_b_ngd_officer";
NATOBodyG = "rhsusf_usmc_lar_marpat_wd_rifleman_light";
NATOCrew = "rhsgref_cdf_b_reg_crew";
NATOUnarmed = "B_G_Survivor_F";
staticCrewOccupants = "rhsgref_cdf_b_reg_rifleman_lite";
NATOPilot = "rhsusf_airforce_jetpilot";

//Militia Units
if (gameMode != 4) then
	{
	FIARifleman = "rhsgref_hidf_rifleman";
	FIAMarksman = "rhsgref_hidf_marksman";
	};

//Police Units
policeOfficer = "rhsusf_army_ucp_rifleman_m590";
policeGrunt = "rhsusf_army_ucp_rifleman_82nd";


////////////////////////////////////
//            GROUPS             ///
////////////////////////////////////
//Military Groups
//Teams
groupsNATOSentryT1 = ["rhsgref_cdf_b_reg_grenadier", "rhsgref_cdf_b_reg_rifleman"];
groupsNATOSentryT2 = ["rhsgref_cdf_b_para_grenadier", "rhsgref_cdf_b_para_rifleman"];
groupsNATOSentryT3 = ["rhsusf_usmc_marpat_wd_grenadier", "rhsusf_usmc_marpat_wd_rifleman"];
groupsNATOSpecOpSmall = [
		["rhsusf_army_ucp_sniper", "rhsusf_army_ucp_riflemanl"],
		["rhsusf_usmc_lar_marpat_wd_autorifleman", "rhsusf_usmc_lar_marpat_wd_marksman"],
		["rhsusf_usmc_marpat_wd_autorifleman", "rhsusf_usmc_marpat_wd_autorifleman_m249_ass"]
];

groupsNATOSniper = ["rhsusf_socom_marsoc_sniper","rhsusf_socom_marsoc_cso_mk17_light"];

//Fireteams
groupsNATOAAT1 = ["rhsgref_cdf_b_reg_squadleader","rhsgref_cdf_b_reg_machinegunner","rhsgref_cdf_b_reg_rifleman","rhsgref_cdf_b_reg_specialist_aa"];
groupsNATOAAT2 = ["rhsgref_cdf_b_para_squadleader","rhsgref_cdf_b_para_machinegunner","rhsgref_cdf_b_para_rifleman","rhsgref_cdf_b_para_specialist_aa"];
groupsNATOAAT3 = ["rhsusf_usmc_marpat_wd_teamleader","rhsusf_usmc_marpat_wd_autorifleman_m249","rhsusf_usmc_marpat_wd_riflemanat","rhsusf_usmc_marpat_wd_stinger"];

groupsNATOATT1 = ["rhsgref_cdf_b_reg_squadleader","rhsgref_cdf_b_reg_machinegunner","rhsgref_cdf_b_reg_rifleman_rpg75","rhsgref_cdf_b_reg_grenadier_rpg"];
groupsNATOATT2 = ["rhsgref_cdf_b_para_squadleader","rhsgref_cdf_b_para_machinegunner","rhsgref_cdf_b_para_rifleman","rhsgref_cdf_b_para_grenadier_rpg"];
groupsNATOATT3 = ["rhsusf_usmc_marpat_wd_teamleader","rhsusf_usmc_marpat_wd_autorifleman_m249","rhsusf_usmc_marpat_wd_riflemanat","rhsusf_usmc_marpat_wd_smaw"];

groupsNATOFTT1 = ["rhsgref_cdf_b_reg_squadleader","rhsgref_cdf_b_reg_machinegunner","rhsgref_cdf_b_reg_rifleman_akm","rhsgref_cdf_b_reg_rifleman_rpg75"];
groupsNATOFTT2 = ["rhsgref_cdf_b_para_squadleader","rhsgref_cdf_b_para_machinegunner","rhsgref_cdf_b_para_autorifleman","rhsgref_cdf_b_para_grenadier_rpg"];
groupsNATOFTT3 = ["rhsusf_usmc_marpat_wd_teamleader","rhsusf_usmc_marpat_wd_autorifleman","rhsusf_usmc_marpat_wd_autorifleman","rhsusf_usmc_marpat_wd_riflemanat"];
groupsNATOSpecOpMid = [
	["rhsusf_army_ucp_teamleader","rhsusf_army_ucp_arb_autorifleman","rhsusf_army_ucp_arb_autoriflemana","rhsusf_army_ucp_arb_grenadier"],
    ["rhsusf_usmc_recon_marpat_wd_teamleader_fast","rhsusf_usmc_recon_marpat_wd_autorifleman_fast","rhsusf_usmc_recon_marpat_wd_marksman_fast","rhsusf_usmc_recon_marpat_wd_rifleman_at_fast"],
	["rhsgref_hidf_teamleader","rhsgref_hidf_rifleman_m72","rhsgref_hidf_rifleman_m72","rhsgref_hidf_grenadier"],
	["rhsusf_usmc_marpat_wd_autorifleman","rhsusf_usmc_marpat_wd_autorifleman_m249_ass","rhsusf_usmc_marpat_wd_teamleader","rhsusf_usmc_marpat_wd_riflemanat"]
];

//Squads
NATOSquadT1 = ["rhsgref_cdf_b_reg_squadleader","rhsgref_cdf_b_reg_machinegunner","rhsgref_cdf_b_reg_rifleman_rpg75","rhsgref_cdf_b_reg_rifleman_akm","rhsgref_cdf_b_reg_grenadier","rhsgref_cdf_b_reg_grenadier_rpg","rhsgref_cdf_b_reg_marksman","rhsgref_cdf_b_reg_medic"];
NATOSquadT2 = ["rhsgref_cdf_b_para_squadleader","rhsgref_cdf_b_para_autorifleman","rhsgref_cdf_b_para_grenadier","rhsgref_cdf_b_para_rifleman","rhsgref_cdf_b_para_grenadier","rhsgref_cdf_b_para_grenadier_rpg","rhsgref_cdf_b_para_marksman","rhsgref_cdf_b_para_medic"];
NATOSquadT3 = ["rhsusf_usmc_marpat_wd_squadleader","rhsusf_usmc_marpat_wd_teamleader","rhsusf_usmc_marpat_wd_riflemanat","rhsusf_usmc_marpat_wd_machinegunner","rhsusf_usmc_marpat_wd_machinegunner_ass","rhsusf_usmc_marpat_wd_marksman","rhsusf_usmc_marpat_wd_smaw","rhsusf_navy_marpat_wd_medic"];

NATOSpecOp = ["rhsusf_socom_marsoc_teamleader","rhsusf_socom_marsoc_teamchief","rhsusf_socom_marsoc_cso_mk17","rhsusf_socom_marsoc_marksman","rhsusf_socom_marsoc_cso_breacher","rhsusf_socom_marsoc_cso_eod","rhsusf_socom_marsoc_cso_grenadier","rhsusf_socom_marsoc_sarc"];

//Militia Groups
if (gameMode != 4) then
	{
	//Teams
	groupsFIASmall =
		[
		["rhsgref_hidf_grenadier","rhsgref_hidf_rifleman"],
		["rhsgref_hidf_marksman","rhsgref_hidf_rifleman"]
		];
	//Fireteams
	groupsFIAMid =
		[
		["rhsgref_hidf_teamleader","rhsgref_hidf_machinegunner","rhsgref_hidf_machinegunner_assist","rhsgref_hidf_grenadier"],
		["rhsgref_hidf_teamleader","rhsgref_hidf_rifleman_m72","rhsgref_hidf_rifleman_m72","rhsgref_hidf_grenadier"]
		];
	//Squads
	FIASquad = ["rhsgref_hidf_squadleader","rhsgref_hidf_machinegunner","rhsgref_hidf_machinegunner_assist","rhsgref_hidf_rifleman","rhsgref_hidf_rifleman_m72","rhsgref_hidf_rifleman_m72","rhsgref_hidf_grenadier","rhsgref_hidf_medic"];
	groupsFIASquad = [FIASquad];
	};

//Police Groups
//Teams
groupsNATOGen = [policeOfficer,policeGrunt];

////////////////////////////////////
//           VEHICLES            ///
////////////////////////////////////
//Military Vehicles
//Lite
vehNATOBike = "B_Quadbike_01_F";
vehNATOLightArmed = ["rhsgref_cdf_b_ural_Zu23","rhsusf_m1043_w_s_m2","rhsusf_m1045_w_s","rhsusf_CGRCAT1A2_M2_usmc_wd","rhsusf_M1232_MC_M2_usmc_wd","rhsusf_m1240a1_m2_usmc_wd","rhsusf_m1240a1_m240_usmc_wd", "rhsgref_cdf_b_reg_uaz_ags","rhsgref_cdf_b_reg_uaz_dshkm","rhsgref_cdf_b_reg_uaz_spg9","rhsgref_BRDM2_b","rhsgref_BRDM2_HQ_b"];
vehNATOLightUnarmed = ["rhsusf_CGRCAT1A2_usmc_wd","rhsusf_m998_w_s_2dr_fulltop","rhsusf_m1043_w_s","rhsusf_m1240a1_usmc_wd","rhsgref_BRDM2UM_b","rhsgref_cdf_b_reg_uaz"];
vehNATOTrucks = ["rhsgref_cdf_b_gaz66","rhsgref_cdf_b_ural","rhsgref_cdf_b_zil131_open","rhsgref_cdf_b_ural_open","rhsgref_cdf_b_gaz66o","rhsusf_M1078A1P2_B_M2_WD_fmtv_usarmy"];
vehNATOCargoTrucks = ["rhsgref_cdf_b_zil131_flatbed_cover","rhsgref_cdf_b_zil131_flatbed","rhsusf_M1083A1P2_B_M2_WD_flatbed_fmtv_usarmy"];
vehNATOFlatbedTrucks = ["rhsgref_cdf_b_gaz66o_flat", "rhsgref_cdf_b_zil131_flatbed"];
vehNATOAmmoTruck = "rhsgref_cdf_b_gaz66_ammo";
vehNATORepairTruck = "rhsgref_cdf_b_gaz66_repair";
//Armored
vehNATOAPC = ["rhsusf_stryker_m1126_m2_wd","rhsusf_stryker_m1126_mk19_wd","rhsusf_stryker_m1134_wd","rhsusf_m113_usarmy","rhsusf_m113_usarmy_MK19","rhsusf_M1117_W","RHS_M2A2_wd","RHS_M2A2_BUSKI_WD","rhsgref_cdf_b_bmd1pk","rhsgref_cdf_b_bmp1","rhsgref_cdf_b_bmp2d","rhsgref_cdf_b_bmd2","rhsgref_cdf_b_bmp2e","rhsgref_BRDM2_ATGM_b"];
vehNATOTanks = ["rhsgref_cdf_b_t80bv_tv", "rhsgref_cdf_b_t72ba_tv","rhsgref_cdf_b_t80b_tv","rhsgref_cdf_b_t72bb_tv","rhsusf_m1a1hc_wd", "rhsusf_m1a2sep1tuskiiwd_usarmy", "rhsusf_m1a1aim_tuski_wd", "rhsusf_m1a1aimwd_usarmy"];
vehNATOAA = "rhsgref_cdf_b_zsu234";
vehNATOAttack = vehNATOAPC + vehNATOTanks;
//Boats
vehNATOBoat = "rhsusf_mkvsoc";
vehNATORBoat = "rhsgref_hidf_rhib";
vehNATOBoats = [vehNATOBoat,vehNATORBoat,"rhsgref_hidf_m113a3_m2","rhsgref_hidf_m113a3_mk19","rhsgref_BRDM2_b","rhsgref_BRDM2_HQ_b"];
//Planes
vehNATOPlane = "RHS_A10_AT";
vehNATOPlaneAA = "rhsusf_f22";
vehNATOTransportPlanes = ["RHS_C130J"];
//Heli
vehNATOPatrolHeli = "RHS_MELB_MH6M";
vehNATOTransportHelis = ["rhsgref_cdf_b_reg_Mi8amt","rhsusf_CH53E_USMC_GAU21","RHS_UH1Y_UNARMED","RHS_UH60M","RHS_CH_47F",vehNATOPatrolHeli];
vehNATOAttackHelis = ["RHS_AH1Z_wd","RHS_AH64D_wd","RHS_UH1Y","rhsgref_cdf_b_reg_Mi17Sh","rhsgref_cdf_b_Mi35","rhsgref_b_mi24g_CAS"];
//UAV
vehNATOUAV = "B_UAV_02_F";
vehNATOUAVSmall = "B_UAV_01_F";
//Artillery
vehNATOMRLS = "rhsgref_cdf_b_reg_BM21";
vehNATOMRLSMags = "rhs_mag_9m28f_1";
//Combined Arrays
vehNATOLight = vehNATOLightArmed + vehNATOLightUnarmed;
vehNATONormal = vehNATOLight + vehNATOTrucks + [vehNATOAmmoTruck, vehNATORepairTruck];
vehNATOAir = vehNATOTransportHelis + vehNATOAttackHelis + [vehNATOPlane,vehNATOPlaneAA] + vehNATOTransportPlanes;

//Militia Vehicles
if (gameMode != 4) then
	{
	vehFIAArmedCar = "rhsgref_hidf_m1025_m2";
	vehFIATruck = "rhsusf_M1078A1P2_WD_fmtv_usarmy";
	vehFIACar = "rhsgref_hidf_m998_4dr";
	};

//Police Vehicles
vehPoliceCar = "rhsusf_mrzr4_w_mud";

////////////////////////////////////
//        STATIC WEAPONS         ///
////////////////////////////////////
//Assembled Statics
NATOMG = "RHS_M2StaticMG_USMC_WD";
staticATOccupants = "RHS_TOW_TriPod_USMC_WD";
staticAAOccupants = ["RHS_Stinger_AA_pod_WD", "rhsgref_cdf_b_ZU23"];
NATOMortar = "RHS_M252_USMC_WD";

NATOAARadar = "B_Radar_System_01_F";
NATOAACiws = "B_AAA_System_01_F";
NATOAASam = "B_SAM_System_03_F";
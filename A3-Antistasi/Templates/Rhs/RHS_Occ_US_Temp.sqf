////////////////////////////////////
//       NAMES AND FLAGS         ///
////////////////////////////////////
//Name Used for notifications
nameOccupants = "USAF";

//Police Faction
factionGEN = "BLU_GEN_F";
//SF Faction
factionMaleOccupants = "rhs_faction_socom";
//Miltia Faction
if (gameMode != 4) then {factionFIA = "rhsgref_faction_hidf"};

//Flag Images
NATOFlag = "Flag_US_F";
NATOFlagTexture = "\A3\Data_F\Flags\flag_us_CO.paa";
flagNATOmrk = "flag_USA";
if (isServer) then {"NATO_carrier" setMarkerText "USAF Carrier"};

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
NATOMarksman = ["rhsusf_army_ucp_sniper", "rhsusf_army_ucp_marksman" ,"rhsusf_usmc_marpat_wd_marksman"];
NATOOfficer = "rhsusf_usmc_marpat_wd_officer";
NATOOfficer2 = "B_G_officer_F";
NATOBodyG = "rhsusf_socom_marsoc_cso_mk17_light";
NATOCrew = "rhsusf_army_ucp_crewman";
NATOUnarmed = "B_G_Survivor_F";
staticCrewOccupants = "rhsusf_army_ucp_riflemanl";
NATOPilot = "rhsusf_army_ucp_helipilot";

//Militia Units
if (gameMode != 4) then {
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
groupsNATOSentryT1 = ["rhsusf_army_ucp_rifleman_101st", "rhsusf_army_ucp_jfo"];
groupsNATOSentryT2 = ["rhsusf_army_ucp_grenadier", "rhsusf_army_ucp_rifleman_m16"];
groupsNATOSentryT3 = ["rhsusf_usmc_marpat_wd_rifleman", "rhsusf_usmc_marpat_wd_grenadier"];
groupsNATOSpecOpSmall = [
		["rhsusf_army_ucp_sniper", "rhsusf_army_ucp_rifleman_arb_m16"],
        ["rhsusf_usmc_marpat_wd_sniper", "rhsusf_usmc_marpat_wd_spotter"],
		["rhsusf_socom_marsoc_sniper", "rhsusf_socom_marsoc_spotter"]
];

groupsNATOSniper = ["rhsusf_socom_marsoc_sniper_m107", "rhsusf_socom_marsoc_spotter"];

//Fireteams
groupsNATOAAT1 = ["rhsusf_army_ucp_teamleader","rhsusf_army_ucp_rifleman_m16","rhsusf_army_ucp_rifleman","rhsusf_army_ucp_aa"];
groupsNATOAAT2 = ["rhsusf_army_ucp_teamleader","rhsusf_army_ucp_rifleman_m16","rhsusf_army_ucp_aa","rhsusf_army_ucp_aa"];
groupsNATOAAT3 = ["rhsusf_usmc_marpat_wd_teamleader", "rhsusf_usmc_marpat_wd_riflemanat","rhsusf_usmc_marpat_wd_javelin", "rhsusf_usmc_marpat_wd_javelin_assistant"];

groupsNATOATT1 = ["rhsusf_army_ucp_teamleader","rhsusf_army_ucp_rifleman_m16","rhsusf_army_ucp_riflemanat","rhsusf_army_ucp_maaws"];
groupsNATOATT2 = ["rhsusf_army_ucp_teamleader","rhsusf_army_ucp_riflemanat","rhsusf_army_ucp_riflemanat","rhsusf_army_ucp_maaws"];
groupsNATOATT3 = ["rhsusf_usmc_marpat_wd_teamleader", "rhsusf_usmc_marpat_wd_stinger","rhsusf_usmc_marpat_wd_stinger", "rhsusf_usmc_marpat_wd_stinger"];

groupsNATOFTT1 = ["rhsusf_army_ucp_teamleader","rhsusf_army_ucp_rifleman_m16","rhsusf_army_ucp_autorifleman","rhsusf_army_ucp_maaws"];
groupsNATOFTT2 = ["rhsusf_army_ucp_teamleader","rhsusf_army_ucp_grenadier","rhsusf_army_ucp_autorifleman","rhsusf_army_ucp_maaws"];
groupsNATOFTT3 = ["rhsusf_usmc_marpat_wd_teamleader","rhsusf_usmc_marpat_wd_grenadier","rhsusf_usmc_marpat_wd_machinegunner","rhsusf_usmc_marpat_wd_smaw"];
groupsNATOSpecOpMid = [
	["rhsusf_usmc_recon_marpat_wd_teamleader_fast","rhsusf_usmc_recon_marpat_wd_machinegunner","rhsusf_usmc_recon_marpat_wd_marksman","rhsusf_usmc_recon_marpat_wd_grenadier_m32"],
    ["rhsusf_usmc_recon_marpat_wd_teamleader_fast","rhsusf_usmc_recon_marpat_wd_autorifleman_fast","rhsusf_usmc_recon_marpat_wd_marksman_fast","rhsusf_usmc_recon_marpat_wd_rifleman_at_fast"],
	["rhsusf_usmc_lar_marpat_wd_teamleader","rhsusf_usmc_lar_marpat_wd_autorifleman","rhsusf_usmc_lar_marpat_wd_riflemanat","rhsusf_usmc_lar_marpat_wd_marksman"]
];

//Squads
NATOSquadT1 = ["rhsusf_army_ucp_squadleader","rhsusf_army_ucp_rifleman_m16","rhsusf_army_ucp_maaws","rhsusf_army_ucp_grenadier","rhsusf_army_ucp_rifleman_m16","rhsusf_army_ucp_autorifleman","rhsusf_army_ucp_autoriflemana","rhsusf_army_ucp_medic"];
NATOSquadT2 = ["rhsusf_army_ucp_squadleader","rhsusf_army_ucp_riflemanat","rhsusf_army_ucp_machinegunner","rhsusf_army_ucp_machinegunnera","rhsgref_cdf_b_para_grenadier","rhsusf_army_ucp_maaws","rhsusf_army_ucp_marksman","rhsusf_army_ucp_medic"];
NATOSquadT3 = ["rhsusf_usmc_marpat_wd_squadleader","rhsusf_usmc_marpat_wd_grenadier","rhsusf_usmc_marpat_wd_riflemanat","rhsusf_usmc_marpat_wd_machinegunner","rhsusf_usmc_marpat_wd_marksman","rhsusf_usmc_marpat_wd_javelin","rhsusf_usmc_marpat_wd_javelin_assistant","rhsusf_navy_marpat_wd_medic"];

NATOSpecOp = ["rhsusf_socom_marsoc_teamleader","rhsusf_socom_marsoc_teamchief","rhsusf_socom_marsoc_cso_mk17","rhsusf_socom_marsoc_marksman","rhsusf_socom_marsoc_cso_breacher","rhsusf_socom_marsoc_cso_eod","rhsusf_socom_marsoc_cso_grenadier","rhsusf_socom_marsoc_sarc"];

//Militia Groups
if (gameMode != 4) then {
	//Teams
	groupsFIASmall = [
		["rhsgref_hidf_grenadier","rhsgref_hidf_rifleman"],
		["rhsgref_hidf_marksman","rhsgref_hidf_rifleman"]
	];
	//Fireteams
	groupsFIAMid = [
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
vehNATOLightArmed = [
    "rhsusf_m1025_w_m2",
    "rhsusf_m1043_w_m2",
    "rhsusf_m1045_w",
    "rhsusf_m1151_m2crows_usarmy_wd",
    "rhsusf_m1151_m2_v1_usarmy_wd",
    "rhsusf_m1151_m2_lras3_v1_usarmy_wd",
    "rhsusf_m1151_m240_v1_usarmy_wd",
    "rhsusf_m1151_m2_v2_usarmy_wd",
    "rhsusf_m1151_m240_v2_usarmy_wd",
    "rhsusf_m966_w",
    "rhsusf_M1117_W",
    "rhsusf_M1220_M153_M2_usarmy_wd",
    "rhsusf_M1220_M2_usarmy_wd",
    "rhsusf_M1230_M2_usarmy_wd",
    "rhsusf_M1232_M2_usarmy_wd",
    "rhsusf_M1237_M2_usarmy_wd",
    "rhsusf_m1240a1_m2_usarmy_wd",
    "rhsusf_m1240a1_m240_usarmy_wd",
    "rhsusf_m1240a1_m2_uik_usarmy_wd",
    "rhsusf_m1240a1_m240_uik_usarmy_wd",
    "rhsusf_m1240a1_m2crows_usarmy_wd",
    "rhsusf_m1151_m240_v3_usmc_wd",
    "rhsusf_m1151_m2_v3_usmc_wd",
    "rhsusf_m1151_m2crows_usmc_wd",
    "rhsusf_CGRCAT1A2_M2_usmc_wd",
    "rhsusf_M1232_MC_M2_usmc_wd"
];

vehNATOLightUnarmed = [
    "rhsusf_m1025_w",
    "rhsusf_m1043_w",
    "rhsusf_m998_w_2dr_fulltop",
    "rhsusf_m998_w_2dr_halftop",
    "rhsusf_m998_w_2dr",
    "rhsusf_m998_w_4dr_fulltop",
    "rhsusf_m998_w_4dr_halftop",
    "rhsusf_m998_w_4dr",
    "rhsusf_m1151_usarmy_wd",
    "rhsusf_m1152_usarmy_wd",
    "rhsusf_m1152_rsv_usarmy_wd",
    "rhsusf_m1165_usarmy_wd",
    "rhsusf_M1220_usarmy_wd",
    "rhsusf_M1232_usarmy_wd",
    "rhsusf_m1240a1_usarmy_wd",
    "rhsusf_CGRCAT1A2_usmc_wd"
];

vehNATOTrucks = ["rhsusf_M1078A1P2_WD_fmtv_usarmy","rhsusf_M1078A1P2_B_WD_fmtv_usarmy","rhsusf_M1078A1P2_B_M2_WD_fmtv_usarmy","rhsusf_M1083A1P2_WD_fmtv_usarmy","rhsusf_M1083A1P2_B_WD_fmtv_usarmy","rhsusf_M1083A1P2_B_M2_WD_fmtv_usarmy"];
vehNATOCargoTrucks = ["rhsusf_M1078A1P2_WD_flatbed_fmtv_usarmy","rhsusf_M1078A1P2_B_WD_flatbed_fmtv_usarmy","rhsusf_M1078A1P2_B_M2_WD_flatbed_fmtv_usarmy","rhsusf_M1083A1P2_B_WD_flatbed_fmtv_usarmy","rhsusf_M1083A1P2_B_M2_WD_flatbed_fmtv_usarmy","rhsusf_M1084A1P2_WD_fmtv_usarmy","rhsusf_M1084A1P2_B_M2_WD_fmtv_usarmy","rhsusf_M977A4_usarmy_wd","rhsusf_M977A4_BKIT_usarmy_wd"];
vehNATOFlatbedTrucks = ["rhsusf_M1078A1P2_WD_flatbed_fmtv_usarmy","rhsusf_M1078A1P2_B_WD_flatbed_fmtv_usarmy","rhsusf_M1078A1P2_B_M2_WD_flatbed_fmtv_usarmy","rhsusf_M1083A1P2_B_WD_flatbed_fmtv_usarmy","rhsusf_M1083A1P2_B_M2_WD_flatbed_fmtv_usarmy","rhsusf_M1084A1P2_WD_fmtv_usarmy","rhsusf_M1084A1P2_B_M2_WD_fmtv_usarmy","rhsusf_M977A4_usarmy_wd","rhsusf_M977A4_BKIT_usarmy_wd"];
vehNATOAmmoTruck = "rhsusf_M977A4_AMMO_BKIT_usarmy_wd";
vehNATORepairTruck = "rhsusf_M977A4_REPAIR_usarmy_wd";
//Armored
vehNATOAPC = ["rhsusf_stryker_m1126_m2_wd", "rhsusf_stryker_m1127_m2_wd", "rhsusf_stryker_m1132_m2_np_wd", "rhsusf_stryker_m1132_m2_wd", "rhsusf_stryker_m1134_wd", "rhsusf_m113_usarmy_supply", "rhsusf_m113_usarmy","rhsusf_m113_usarmy_M2_90","rhsusf_m113_usarmy_M240", "RHS_M2A2_wd","RHS_M2A2_BUSKI_WD","RHS_M2A3_wd","RHS_M2A3_BUSKI_wd","RHS_M2A3_BUSKIII_wd"];
vehNATOTanks = ["rhsusf_m1a1fep_wd", "rhsusf_m1a1fep_od", "rhsusf_m1a1hc_wd", "rhsusf_m1a1aimwd_usarmy", "rhsusf_m1a1aim_tuski_wd", "rhsusf_m1a2sep1wd_usarmy", "rhsusf_m1a2sep1tuskiwd_usarmy","rhsusf_m1a2sep1tuskiiwd_usarmy"];
vehNATOAA = "RHS_M6_wd";
vehNATOAttack = vehNATOAPC + vehNATOTanks;
//Boats
vehNATOBoat = "rhsusf_mkvsoc";
vehNATORBoat = "rhsgref_hidf_rhib";
vehNATOBoats = [vehNATOBoat,vehNATORBoat,"rhsgref_hidf_m113a3_m2","rhsgref_hidf_m113a3_mk19","rhsgref_BRDM2_b"];
//Planes
vehNATOPlane = "RHS_A10_AT";
vehNATOPlaneAA = "rhsusf_f22";
vehNATOTransportPlanes = ["RHS_C130J"];
//Heli
vehNATOPatrolHeli = "RHS_MELB_MH6M";
vehNATOTransportHelis = ["RHS_UH60M","RHS_UH60M_ESSS2","RHS_CH_47F","rhsusf_CH53E_USMC_GAU21","RHS_UH1Y",vehNATOPatrolHeli];
vehNATOAttackHelis = ["RHS_AH1Z_wd","RHS_UH1Y","RHS_AH64D_wd"];
//UAV
vehNATOUAV = "B_UAV_02_F";
vehNATOUAVSmall = "B_UAV_01_F";
//Artillery
vehNATOMRLS = "rhsusf_m109d_usarmy";
vehNATOMRLSMags = "rhs_mag_155mm_m795_28";
//Combined Arrays
vehNATOLight = vehNATOLightArmed + vehNATOLightUnarmed;
vehNATONormal = vehNATOLight + vehNATOTrucks + [vehNATOAmmoTruck, vehNATORepairTruck, "rhsusf_M978A4_BKIT_usarmy_d", "rhsusf_M1085A1P2_B_WD_Medical_fmtv_usarmy"];
vehNATOAir = vehNATOTransportHelis + vehNATOAttackHelis + [vehNATOPlane,vehNATOPlaneAA] + vehNATOTransportPlanes;

//Militia Vehicles
if (gameMode != 4) then {
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
staticAAOccupants = ["RHS_Stinger_AA_pod_WD"];
NATOMortar = "RHS_M252_USMC_WD";

NATOAARadar = "B_Radar_System_01_F";
NATOAACiws = "B_AAA_System_01_F";
NATOAASam = "B_SAM_System_03_F";
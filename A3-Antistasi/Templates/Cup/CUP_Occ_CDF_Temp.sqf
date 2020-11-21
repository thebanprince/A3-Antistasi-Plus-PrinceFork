////////////////////////////////////
//       NAMES AND FLAGS         ///
////////////////////////////////////
//Name Used for notifications
nameOccupants = "CDF";

//Police Faction
factionGEN = "BLU_GEN_F";
//SF Faction
factionMaleOccupants = "CUP_B_CZ";
//Miltia Faction
if (gameMode != 4) then {factionFIA = "CUP_B_HIL_Soldier_Res"};

//Flag Images
NATOFlag = "Flag_Blue_F";
NATOFlagTexture = "\A3\Data_F\Flags\Flag_Blue_CO.paa";
flagNATOmrk = "flag_EAF";
if (isServer) then {"NATO_carrier" setMarkerText "CDF Carrier"};

//Loot Crate
NATOAmmobox = "B_supplyCrate_F";

////////////////////////////////////
//   PVP LOADOUTS AND VEHICLES   ///
////////////////////////////////////
//PvP Loadouts
NATOPlayerLoadouts = [
	//Team Leader
	["cup_blufor_teamLeader_temp"] call A3A_fnc_getLoadout,
	//Medic
	["cup_blufor_medic_temp"] call A3A_fnc_getLoadout,
	//Autorifleman
	["cup_blufor_machineGunner_temp"] call A3A_fnc_getLoadout,
	//Marksman
	["cup_blufor_marksman_temp"] call A3A_fnc_getLoadout,
	//Anti-tank Scout
	["cup_blufor_AT_temp"] call A3A_fnc_getLoadout,
	//AT2
	["cup_blufor_AT2_temp"] call A3A_fnc_getLoadout
];

//PVP Player Vehicles
vehNATOPVP = ["CUP_B_UAZ_Unarmed_CDF", "CUP_B_UAZ_Open_CDF", "CUP_B_UAZ_MG_CDF"];

////////////////////////////////////
//             UNITS             ///
////////////////////////////////////
//Military Units
NATOOfficer = "CUP_B_CDF_Commander_FST";
NATOOfficer2 = "CUP_B_CDF_Officer_FST";
NATOBodyG = "CUP_B_CZ_Soldier_Light_WDL";
NATOCrew = "CUP_B_CDF_Crew_FST";
NATOUnarmed = "B_G_Survivor_F";
NATOMarksman = ["CUP_B_CDF_Soldier_Marksman_FST", "CUP_B_CDF_Sniper_FST", "CUP_B_CZ_Soldier_Marksman_WDL"];
staticCrewOccupants = "CUP_B_CDF_Militia_FST";
NATOPilot = "CUP_B_CDF_Pilot_FST";

//Militia Units
if (gameMode != 4) then
	{
	FIARifleman = "CUP_B_HIL_Soldier_Res";
	FIAMarksman = "CUP_B_HIL_M_Res";
	};

//Police Units
policeOfficer = "B_GEN_Commander_F";
policeGrunt = "B_GEN_Soldier_F";

////////////////////////////////////
//            GROUPS             ///
////////////////////////////////////
//Military Groups
//Teams
groupsNATOSentryT1 = ["CUP_B_CDF_Soldier_GL_FST", "CUP_B_CDF_Militia_FST"];
groupsNATOSentryT2 = ["CUP_B_CDF_Soldier_GL_MNT", "CUP_B_CDF_Soldier_RPG18_MNT"];
groupsNATOSentryT3 = ["CUP_B_CZ_Soldier_Light_WDL", "CUP_B_CZ_Soldier_805_GL_WDL"];
groupsNATOSpecOpSmall = [
		["CUP_B_CZ_SpecOps_MG_WDL", "CUP_B_CZ_SpecOps_Scout_WDL"],
		["CUP_B_CZ_SpecOps_Scout_WDL","CUP_B_CZ_SpecOps_Recon_WDL"],
		["CUP_B_CZ_SpecOps_GL_WDL","CUP_B_CZ_SpecOps_Scout_WDL"]
];

groupsNATOSniper = ["CUP_B_CZ_Sniper_WDL", "CUP_B_CZ_Spotter_WDL"];
//Fireteams
groupsNATOAAT1 = ["CUP_B_CDF_Soldier_TL_FST", "CUP_B_CDF_Soldier_AR_FST", "CUP_B_CDF_Soldier_AA_FST", "CUP_B_CDF_Soldier_AA_FST"];
groupsNATOAAT2 = ["CUP_B_CDF_Soldier_TL_MNT", "CUP_B_CDF_Soldier_MG_MNT", "CUP_B_CDF_Soldier_AA_MNT", "CUP_B_CDF_Soldier_AA_MNT"];
groupsNATOAAT3 = ["CUP_B_CZ_Soldier_SL_WDL", "CUP_B_CZ_Soldier_AR_WDL", "CUP_B_CDF_Soldier_AA_MNT", "CUP_B_CDF_Soldier_AA_MNT"];

groupsNATOATT1 = ["CUP_B_CDF_Soldier_TL_FST", "CUP_B_CDF_Soldier_AAT_FST","CUP_B_CDF_Soldier_RPG18_FST","CUP_B_CDF_Soldier_LAT_FST"];
groupsNATOATT2 = ["CUP_B_CDF_Soldier_TL_MNT", "CUP_B_CDF_Soldier_RPG18_MNT","CUP_B_CDF_Soldier_LAT_MNT", "CUP_B_CDF_Soldier_LAT_MNT"];
groupsNATOATT3 = ["CUP_B_CZ_Soldier_SL_WDL", "CUP_B_CZ_Soldier_ARPG_WDL", "CUP_B_CZ_Soldier_AT_WDL","CUP_B_CZ_Soldier_RPG_WDL"];

groupsNATOFTT1 = ["CUP_B_CDF_Soldier_TL_FST", "CUP_B_CDF_Soldier_AR_FST", "CUP_B_CDF_Soldier_Marksman_FST", "CUP_B_CDF_Soldier_LAT_FST"];
groupsNATOFTT2 = ["CUP_B_CDF_Soldier_TL_MNT", "CUP_B_CDF_Soldier_MG_MNT", "CUP_B_CDF_Sniper_MNT", "CUP_B_CDF_Soldier_LAT_MNT"];
groupsNATOFTT3 = ["CUP_B_CZ_Soldier_SL_WDL", "CUP_B_CZ_Soldier_AR_WDL", "CUP_B_CZ_Soldier_Marksman_WDL", "CUP_B_CZ_Soldier_AT_WDL"];
groupsNATOSpecOpMid = [
	["CUP_B_CZ_SpecOps_TL_WDL","CUP_B_CZ_SpecOps_MG_WDL","CUP_B_CZ_SpecOps_Recon_WDL","CUP_B_CZ_SpecOps_Scout_WDL"],
	["CUP_B_CZ_SpecOps_TL_WDL", "CUP_B_CZ_SpecOps_GL_WDL", "CUP_B_CZ_SpecOps_Exp_WDL", "CUP_B_CZ_SpecOps_WDL"]
];

//Squads
NATOSquadT1 = ["CUP_B_CDF_Soldier_TL_FST","CUP_B_CDF_Soldier_MG_FST","CUP_B_CDF_Soldier_RPG18_FST","CUP_B_CDF_Soldier_LAT_FST","CUP_B_CDF_Soldier_GL_FST","CUP_B_CDF_Sniper_FST","CUP_B_CDF_Soldier_AR_FST","CUP_B_CDF_Medic_FST"];
NATOSquadT2 = ["CUP_B_CDF_Soldier_TL_MNT","CUP_B_CDF_Soldier_MG_MNT","CUP_B_CDF_Soldier_LAT_MNT","CUP_B_CDF_Soldier_LAT_MNT","CUP_B_CDF_Soldier_GL_MNT","CUP_B_CDF_Sniper_MNT","CUP_B_CDF_Soldier_AR_MNT","CUP_B_CDF_Medic_MNT"];
NATOSquadT3 = ["CUP_B_CZ_Soldier_SL_WDL","CUP_B_CZ_Soldier_805_GL_WDL","CUP_B_CZ_Soldier_AR_WDL","CUP_B_CZ_Soldier_MG_WDL","CUP_B_CZ_Soldier_Marksman_WDL","CUP_B_CZ_Soldier_AT_WDL","CUP_B_CZ_Soldier_RPG_WDL","CUP_B_CZ_Medic_WDL"];


NATOSpecOp = ["CUP_B_CZ_SpecOps_TL_WDL","CUP_B_CZ_SpecOps_Scout_WDL","CUP_B_CZ_SpecOps_Recon_WDL","CUP_B_CZ_SpecOps_MG_WDL","CUP_B_CZ_SpecOps_GL_WDL","CUP_B_CZ_SpecOps_Exp_WDL","CUP_B_CZ_SpecOps_WDL","CUP_B_CZ_Medic_WDL"];

//Militia Groups
if (gameMode != 4) then {
	//Teams
	groupsFIASmall = [
		["CUP_B_HIL_GL_Res", "CUP_B_HIL_Soldier_Res"],
		["CUP_B_HIL_M_Res", "CUP_B_HIL_Soldier_Res"],
		["CUP_B_HIL_Soldier_LAT_Res", "CUP_B_HIL_Soldier_Res"]
	];
	//Fireteams
	groupsFIAMid = [
		["CUP_B_HIL_SL_Res","CUP_B_HIL_M_Res","CUP_B_HIL_MMG_Res","CUP_B_HIL_Soldier_LAT_Res"],
		["CUP_B_HIL_SL_Res","CUP_B_HIL_GL_Res","CUP_B_HIL_MMG_Res","CUP_B_HIL_Soldier_LAT_Res"],
		["CUP_B_HIL_SL_Res","CUP_B_HIL_Soldier_MAT_Res","CUP_B_HIL_MMG_Res","CUP_B_HIL_Soldier_LAT_Res"]
	];
	//Squads
	FIASquad = ["CUP_B_HIL_SL_Res","CUP_B_HIL_MMG_Res","CUP_B_HIL_AMG_Res","CUP_B_HIL_Soldier_LAT_Res","CUP_B_HIL_GL_Res","CUP_B_HIL_M_Res","CUP_B_HIL_Soldier_HAT_Res","CUP_B_HIL_Medic_Res"];
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
vehNATOLightArmed = ["CUP_B_UAZ_MG_CDF", "CUP_B_UAZ_SPG9_CDF", "CUP_B_LR_MG_CZ_W", "CUP_B_Dingo_CZ_Wdl", "CUP_B_BRDM2_CDF", "CUP_B_BRDM2_HQ_CDF", "CUP_B_BRDM2_ATGM_CDF", "CUP_B_Ural_ZU23_CDF"];
vehNATOLightUnarmed = ["CUP_B_UAZ_Unarmed_CDF", "CUP_B_UAZ_Open_CDF", "CUP_B_LR_Transport_CZ_W"];
vehNATOTrucks = ["CUP_B_T810_Unarmed_CZ_WDL", "CUP_B_T810_Armed_CZ_WDL", "CUP_B_Kamaz_Open_CDF", "CUP_B_Kamaz_CDF", "CUP_B_Ural_Open_CDF", "CUP_B_Ural_CDF", "CUP_B_MTLB_pk_CDF"];
vehNATOCargoTrucks = ["CUP_B_Kamaz_Open_CDF", "CUP_B_Ural_Open_CDF"];
vehNATOFlatbedTrucks = ["CUP_B_Kamaz_Open_CDF", "CUP_B_Ural_Open_CDF"];
vehNATOAmmoTruck = "CUP_B_Kamaz_Reammo_CDF";
vehNATORepairTruck = "CUP_B_Kamaz_Repair_CDF";
vehNATOLight = vehNATOLightArmed + vehNATOLightUnarmed;
//Armored
vehNATOAPC = ["CUP_B_MTLB_pk_CDF","CUP_B_BMP2_CDF", "CUP_B_BTR60_CDF", "CUP_B_BTR80_CDF", "CUP_B_BTR80A_CDF"];
vehNATOTanks = ["CUP_B_T72_CDF", "CUP_B_T72_CZ"];
vehNATOAA = "CUP_B_ZSU23_CDF";
vehNATOAttack = vehNATOAPC + vehNATOTanks + ["CUP_B_ZSU23_Afghan_CDF"];
//Boats
vehNATOBoat = "B_Boat_Armed_01_minigun_F";
vehNATORBoat = "B_Boat_Transport_01_F";
vehNATOBoats = [vehNATOBoat,vehNATORBoat,"CUP_B_BRDM2_CDF","CUP_B_BRDM2_ATGM_CDF","CUP_B_BTR80_CDF","CUP_B_BTR80A_CDF"];
//Planes
vehNATOPlane = "CUP_B_Su25_Dyn_CDF";
vehNATOPlaneAA = "CUP_B_SU34_CDF";
vehNATOTransportPlanes = ["CUP_B_C130J_USMC"];
//Heli
vehNATOPatrolHeli = "CUP_B_Mi24_D_Dynamic_CDF";
vehNATOTransportHelis = ["CUP_B_MI6T_CDF","CUP_B_Mi17_CDF",vehNATOPatrolHeli];
vehNATOAttackHelis = ["CUP_B_Mi171Sh_CDF","CUP_B_Mi24_D_Dynamic_CDF"];
//UAV
vehNATOUAV = "B_UAV_02_F";
vehNATOUAVSmall = "B_UAV_01_F";
//Artillery
vehNATOMRLS = "CUP_B_BM21_CDF";
vehNATOMRLSMags = "CUP_40Rnd_GRAD_HE";
//Combined Arrays
vehNATONormal = vehNATOLight + vehNATOTrucks + [vehNATOAmmoTruck, "CUP_B_Kamaz_Refuel_CDF","CUP_B_S1203_Ambulance_CDF", vehNATORepairTruck];
vehNATOAir = vehNATOTransportHelis + vehNATOAttackHelis + [vehNATOPlane,vehNATOPlaneAA] + vehNATOTransportPlanes;

//Militia Vehicles
if (gameMode != 4) then {
	vehFIAArmedCar = "CUP_B_M151_M2_HIL";
	vehFIATruck = "CUP_B_MTVR_HIL";
	vehFIACar = "CUP_B_M151_HIL";
};

//Police Vehicles
vehPoliceCar = "B_GEN_Offroad_01_gen_F";

////////////////////////////////////
//        STATIC WEAPONS         ///
////////////////////////////////////
//Assembled Statics
NATOMG = "CUP_B_DSHKM_CDF";
staticATOccupants = "CUP_B_RBS70_ACR";
staticAAOccupants = ["CUP_B_Igla_AA_pod_CDF","CUP_B_ZU23_CDF"];
NATOMortar = "CUP_B_2b14_82mm_CDF";

NATOAARadar = "B_Radar_System_01_F";
NATOAACiws = "B_AAA_System_01_F";
NATOAASam = "B_SAM_System_03_F";
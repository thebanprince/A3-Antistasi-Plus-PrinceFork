////////////////////////////////////
//       NAMES AND FLAGS         ///
////////////////////////////////////
//Name Used for notifications
nameInvaders = "AFRF";

//SF Faction
factionMaleInvaders = "OPF_R_F";
//Miltia Faction
if (gameMode == 4) then {factionFIA = "CUP_O_SLA"};

//Flag Images
CSATFlag = "Flag_Red_F";
CSATFlagTexture = "\A3\Data_F\Flags\Flag_Red_CO.paa";
flagCSATmrk = "flag_Russia";
if (isServer) then {"CSAT_carrier" setMarkerText "Admiral Kuznetsov"};

//Loot Crate
CSATAmmoBox = "O_supplyCrate_F";

////////////////////////////////////
//   PVP LOADOUTS AND VEHICLES   ///
////////////////////////////////////
//PvP Loadouts
CSATPlayerLoadouts = [
	//Team Leader
	["cup_opfor_teamLeader_arid"] call A3A_fnc_getLoadout,
	//Medic
	["cup_opfor_medic_arid"] call A3A_fnc_getLoadout,
	//Autorifleman
	["cup_opfor_machineGunner_arid"] call A3A_fnc_getLoadout,
	//Marksman
	["cup_opfor_marksman_arid"] call A3A_fnc_getLoadout,
	//Anti-tank Scout
	["cup_opfor_AT_arid"] call A3A_fnc_getLoadout,
	//AT2
	["cup_opfor_AT2_arid"] call A3A_fnc_getLoadout
];

//PVP Player Vehicles
vehCSATPVP = ["CUP_O_UAZ_MG_RU", "CUP_O_UAZ_Open_RU", "CUP_O_UAZ_Unarmed_RU"];

////////////////////////////////////
//             UNITS             ///
////////////////////////////////////
//Military Units
CSATOfficer = "CUP_O_RU_Officer_VDV";
CSATBodyG = "CUP_O_MVD_Soldier";
CSATCrew = "CUP_O_RU_Crew_M_EMR";
CSATMarksman = "CUP_O_RU_Soldier_Marksman_Ratnik_BeigeDigital";
staticCrewInvaders = "CUP_O_RU_Soldier_Lite_Ratnik_BeigeDigital";
CSATPilot = "CUP_O_RU_Pilot_M_EMR";

//Militia Units
if (gameMode == 4) then {
	FIARifleman = "CUP_O_sla_soldier_desert";
	FIAMarksman = "CUP_O_sla_Sniper_desert";
};

////////////////////////////////////
//            GROUPS             ///
////////////////////////////////////
//Military Groups
//Teams
groupsCSATSentry = ["CUP_O_RU_Soldier_GL_Ratnik_BeigeDigital", "CUP_O_RU_Soldier_Ratnik_BeigeDigital"];
groupsCSATSniper = ["CUP_O_RU_Sniper_KSVK_VDV_EMR", "CUP_O_RU_Spotter_VDV_EMR"];
groupsCSATsmall = [groupsCSATSentry, ["CUP_O_RU_Soldier_MG_Ratnik_BeigeDigital", "CUP_O_RU_Soldier_AR_Ratnik_BeigeDigital"], groupsCSATSniper];
//Fireteams
groupsCSATAA = ["CUP_O_RU_Soldier_TL_Ratnik_BeigeDigital", "CUP_O_RU_Soldier_AA_Ratnik_BeigeDigital", "CUP_O_RU_Soldier_AA_Ratnik_BeigeDigital", "CUP_O_RU_Soldier_AR_Ratnik_BeigeDigital"];
groupsCSATAT = ["CUP_O_RU_Soldier_TL_Ratnik_BeigeDigital", "CUP_O_RU_Soldier_AT_Ratnik_BeigeDigital","CUP_O_RU_Soldier_AT_Ratnik_BeigeDigital", "CUP_O_RU_Soldier_A_Ratnik_BeigeDigital"];
groupsCSATmid = [["CUP_O_RU_Soldier_TL_Ratnik_BeigeDigital","CUP_O_RU_Soldier_MG_Ratnik_BeigeDigital","CUP_O_RU_Soldier_AR_Ratnik_BeigeDigital","CUP_O_RU_Soldier_AT_Ratnik_BeigeDigital"],groupsCSATAA,groupsCSATAT];
//Squads
CSATSquad = ["CUP_O_RU_Soldier_SL_Ratnik_BeigeDigital", "CUP_O_RU_Soldier_LAT_Ratnik_BeigeDigital", "CUP_O_RU_Soldier_AT_Ratnik_BeigeDigital", "CUP_O_RU_Soldier_Marksman_Ratnik_BeigeDigital", "CUP_O_RU_Soldier_TL_Ratnik_BeigeDigital", "CUP_O_RU_Soldier_MG_Ratnik_BeigeDigital", "CUP_O_RU_Soldier_A_Ratnik_BeigeDigital", "CUP_O_RU_Soldier_Medic_Ratnik_BeigeDigital"];
CSATSpecOp = ["O_R_recon_TL_F", "O_R_recon_JTAC_F", "O_R_recon_GL_F", "O_R_recon_exp_F", "O_R_recon_LAT_F", "O_R_recon_medic_F"];
groupsCSATSquad =
	[
	CSATSquad,
	["CUP_O_RU_Soldier_SL_Ratnik_BeigeDigital", "CUP_O_RU_Soldier_LAT_Ratnik_BeigeDigital", "CUP_O_RU_Soldier_AT_Ratnik_BeigeDigital", "CUP_O_RU_Soldier_Marksman_Ratnik_BeigeDigital", "CUP_O_RU_Soldier_AR_Ratnik_BeigeDigital", "CUP_O_RU_Soldier_MG_Ratnik_BeigeDigital", "CUP_O_RU_Soldier_A_Ratnik_BeigeDigital", "CUP_O_RU_Soldier_Medic_Ratnik_BeigeDigital"],
	["CUP_O_RU_Soldier_SL_Ratnik_BeigeDigital", "CUP_O_RU_Soldier_LAT_Ratnik_BeigeDigital", "CUP_O_RU_Soldier_AT_Ratnik_BeigeDigital", "CUP_O_RU_Soldier_HAT_Ratnik_BeigeDigital", "CUP_O_RU_Soldier_TL_Ratnik_BeigeDigital", "CUP_O_RU_Soldier_MG_Ratnik_BeigeDigital", "CUP_O_RU_Soldier_A_Ratnik_BeigeDigital", "CUP_O_RU_Soldier_Medic_Ratnik_BeigeDigital"],
	["CUP_O_RU_Soldier_SL_Ratnik_BeigeDigital", "CUP_O_RU_Soldier_LAT_Ratnik_BeigeDigital", "CUP_O_RU_Soldier_AT_Ratnik_BeigeDigital", "CUP_O_RU_Soldier_Marksman_Ratnik_BeigeDigital", "CUP_O_RU_Recon_Marksman_Ratnik_BeigeDigital", "CUP_O_RU_Soldier_MG_Ratnik_BeigeDigital", "CUP_O_RU_Soldier_A_Ratnik_BeigeDigital", "CUP_O_RU_Soldier_Medic_Ratnik_BeigeDigital"]
	];

//Militia Groups
if (gameMode == 4) then {
	//Teams
	groupsFIASmall = [
		["CUP_O_sla_Soldier_GL_desert",FIARifleman],
		[FIAMarksman,FIARifleman],
		["CUP_O_sla_Soldier_GL_desert","CUP_O_sla_Sniper_desert"]
	];
	//Fireteams
	groupsFIAMid = [
		["CUP_O_sla_Soldier_SL_desert", "CUP_O_sla_Soldier_MG_desert", "CUP_O_sla_Soldier_AR_desert", FIAMarksman],
		["CUP_O_sla_Soldier_SL_desert", "CUP_O_sla_Soldier_LAT_desert", "CUP_O_sla_Soldier_AR_desert", "CUP_O_sla_Soldier_AT_desert"],
		["CUP_O_sla_Soldier_SL_desert", "CUP_O_sla_Soldier_GL_desert","CUP_O_sla_Soldier_AR_desert","CUP_O_sla_Engineer_desert"]
	];
	//Squads
	FIASquad = ["CUP_O_sla_Soldier_SL_desert","CUP_O_sla_Soldier_MG_desert","CUP_O_sla_Soldier_GL_desert","CUP_O_sla_Soldier_LAT_desert","CUP_O_SLA_Soldier_Backpack_desert",FIAMarksman,"CUP_O_sla_Soldier_LAT_desert","CUP_O_sla_Medic_desert"];
	groupsFIASquad = [
		FIASquad
	];
};

////////////////////////////////////
//           VEHICLES            ///
////////////////////////////////////
//Military Vehicles
//Lite
vehCSATBike = "O_Quadbike_01_F";
vehCSATLightArmed = ["CUP_O_Ural_ZU23_RU", "CUP_O_BRDM2_RUS", "CUP_O_BRDM2_ATGM_RUS", "CUP_O_BRDM2_HQ_RUS", "CUP_O_GAZ_Vodnik_PK_RU", "CUP_O_GAZ_Vodnik_AGS_RU", "CUP_O_GAZ_Vodnik_BPPU_RU", "CUP_O_GAZ_Vodnik_KPVT_RU", "CUP_O_BTR90_HQ_RU"];
vehCSATLightUnarmed = ["CUP_O_UAZ_Unarmed_RU", "CUP_O_UAZ_Open_RU", "CUP_O_GAZ_Vodnik_Unarmed_RU"];
vehCSATTrucks = ["CUP_O_Kamaz_Open_RU", "CUP_O_Kamaz_RU"];
vehCSATAmmoTruck = "CUP_O_Kamaz_Reammo_RU";
vehCSATRepairTruck = "CUP_O_Kamaz_Repair_RU";
vehCSATLight = vehCSATLightArmed + vehCSATLightUnarmed;
//Armored
vehCSATAPC = ["CUP_O_BMP2_RU", "CUP_O_BMP3_RU", "CUP_O_MTLB_pk_Green_RU", "CUP_O_MTLB_pk_WDL_RU", "CUP_O_BTR80_DESERT_RU", "CUP_O_BTR80A_DESERT_RU", "CUP_O_BTR90_RU"];
vehCSATTanks = ["CUP_O_T72_RU", "CUP_O_T90_RU"];
vehCSATAA = "CUP_O_2S6M_RU";
vehCSATAttack = vehCSATAPC + vehCSATTanks;
//Boats
vehCSATBoat = "O_Boat_Armed_01_hmg_F";
vehCSATRBoat = "O_Boat_Transport_01_F";
vehCSATBoats = [vehCSATBoat,vehCSATRBoat, "CUP_O_ZUBR_RU"];
//Planes
vehCSATPlane = "CUP_O_Su25_Dyn_RU";
vehCSATPlaneAA = "CUP_O_SU34_RU";
vehCSATTransportPlanes = ["CUP_O_MI6T_RU"];
//Heli
vehCSATPatrolHeli = "CUP_O_Mi24_V_Dynamic_RU";
vehCSATTransportHelis = ["CUP_O_Mi24_P_Dynamic_RU", vehCSATPatrolHeli, "CUP_O_Mi8AMT_RU", "CUP_O_Mi8_VIV_RU"];
vehCSATAttackHelis = ["CUP_O_Mi24_V_Dynamic_RU", "CUP_O_Mi24_P_Dynamic_RU", "CUP_O_Ka50_DL_RU", "CUP_O_Ka60_Grey_RU", "CUP_O_Ka52_RU", "CUP_O_Mi8_RU"];
//UAV
vehCSATUAV = "O_UAV_02_F";
vehCSATUAVSmall = "CUP_O_Pchela1T_RU";
//Artillery
vehCSATMRLS = "CUP_O_BM21_RU";
vehCSATMRLSMags = "CUP_40Rnd_GRAD_HE";
//Combined Arrays
vehCSATNormal = vehCSATLight + vehCSATTrucks + [vehCSATAmmoTruck, vehCSATRepairTruck, "CUP_O_Kamaz_Refuel_RU", "CUP_O_Kamaz_Repair_RU"];
vehCSATAir = vehCSATTransportHelis + vehCSATAttackHelis + [vehCSATPlane,vehCSATPlaneAA] + vehCSATTransportPlanes;

//Militia Vehicles
if (gameMode == 4) then {
	vehFIAArmedCar = "CUP_O_UAZ_MG_SLA";
	vehFIATruck = "CUP_O_MTLB_pk_SLA";
	vehFIACar = "CUP_O_UAZ_Militia_SLA";
};

////////////////////////////////////
//        STATIC WEAPONS         ///
////////////////////////////////////
//Assembled Statics
CSATMG = "CUP_O_KORD_high_RU";
CSATGMG = "CUP_O_KORD_high_RU";
staticATInvaders = "CUP_O_Kornet_RU";
staticAAInvaders = ["CUP_O_Igla_AA_pod_RU", "CUP_O_ZU23_RU"];
CSATMortar = "CUP_O_2b14_82mm_RU";

CSATAARadar = "O_Radar_System_02_F";
CSATAACiws = "";
CSATAASam = "O_SAM_System_04_F";
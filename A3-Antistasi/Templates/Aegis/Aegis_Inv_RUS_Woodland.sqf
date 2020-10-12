////////////////////////////////////
//       NAMES AND FLAGS         ///
////////////////////////////////////
//Name Used for notifications
nameInvaders = "AFRF";

//SF Faction
factionMaleInvaders = "OPF_R_ard_F";
//Miltia Faction
if (gameMode == 4) then {factionFIA = ""};

//Flag Images
CSATFlag = "Flag_Russia_F";
CSATFlagTexture = "\A3_Aegis\Data_F_Aegis\Flags\flag_RUS_CO.paa";
flagCSATmrk = "flag_Russia";
if (isServer) then {"CSAT_carrier" setMarkerText "Russian Carrier"};


//Loot Crate
CSATAmmoBox = "O_supplyCrate_F";

////////////////////////////////////
//   PVP LOADOUTS AND VEHICLES   ///
////////////////////////////////////
//PvP Loadouts
CSATPlayerLoadouts = [
	//Team Leader
	["aegis_opfor_teamLeader_wdl"] call A3A_fnc_getLoadout,
	//Medic
	["aegis_opfor_medic_wdl"] call A3A_fnc_getLoadout,
	//Autorifleman
	["aegis_opfor_machineGunner_wdl"] call A3A_fnc_getLoadout,
	//Marksman
	["aegis_opfor_marksman_wdl"] call A3A_fnc_getLoadout,
	//Anti-tank Scout
	["aegis_opfor_AT_wdl"] call A3A_fnc_getLoadout,
	//AT2
	["aegis_opfor_AT2_wdl"] call A3A_fnc_getLoadout
];

//PVP Player Vehicles
vehCSATPVP = ["O_R_MRAP_02_F", "O_R_LSV_02_unarmed_F", "O_R_MRAP_02_gmg_F", "O_R_LSV_02_armed_F"];

////////////////////////////////////
//             UNITS             ///
////////////////////////////////////
//Military Units
CSATOfficer = "O_R_officer_F";
CSATBodyG = "O_R_recon_F";
CSATCrew = "O_R_crew_F";
CSATMarksman = "O_R_soldier_M_F";
staticCrewInvaders = "O_R_support_MG_F";
CSATPilot = "O_R_helipilot_F";

//Militia Units
if (gameMode == 4) then {
	FIARifleman = "O_E_Soldier_1_F";
	FIAMarksman = "O_E_Soldier_7_F";
};

////////////////////////////////////
//            GROUPS             ///
////////////////////////////////////
//Military Groups

//Teams
groupsCSATSentry = ["O_R_Soldier_GL_F", "O_R_Soldier_F"];
groupsCSATSniper = ["O_R_ghillie_lsh_F", "O_R_ghillie_spotter_lsh_F"];
groupsCSATsmall = [groupsCSATSentry, ["O_R_Soldier_CQ_F", "O_R_Soldier_lite_F"], groupsCSATSniper];
//Fireteams
groupsCSATAA = ["O_R_Soldier_TL_F", "O_R_soldier_AA_F", "O_R_soldier_AA_F", "O_R_Soldier_AAA_F"];
groupsCSATAT = ["O_R_Soldier_TL_F","O_R_Soldier_LAT_F","O_R_Soldier_LAT_F","O_R_Soldier_F"];
groupsCSATmid = [["O_R_Soldier_TL_F","O_R_Soldier_AR_F","O_R_Soldier_GL_F","O_R_Soldier_LAT_F"], groupsCSATAA, groupsCSATAT];

//Squads
CSATSquad = ["O_R_Soldier_SL_F", "O_R_Soldier_F", "O_R_Soldier_LAT_F", "O_R_soldier_M_F", "O_R_Soldier_TL_F", "O_R_Soldier_AR_F", "O_R_Soldier_A_F", "O_R_medic_F"];
CSATSpecOp = ["O_R_recon_TL_ard_F", "O_R_recon_JTAC_ard_F", "O_R_recon_M_ard_F", "O_R_recon_exp_ard_F", "O_R_recon_LAT_ard_F", "O_R_recon_medic_ard_F"];
groupsCSATSquad = [
	CSATSquad,
	["O_R_Soldier_SL_F","O_R_Soldier_LAT_F","O_R_Soldier_TL_F","O_R_Soldier_AR_F","O_R_Soldier_A_F","O_R_Soldier_HAT_F","O_R_Soldier_AHAT_F","O_R_medic_F"],
	["O_R_Soldier_SL_F", "O_R_Soldier_AR_F", "O_R_Soldier_LAT_F", "O_R_Soldier_AR_F", "O_R_Soldier_TL_F", "O_R_Soldier_AAR_F", "O_R_Soldier_A_F", "O_R_medic_F"],
	["O_R_Soldier_SL_F", "O_R_Soldier_F", "O_R_Soldier_LAT_F", "O_R_soldier_AA_F", "O_R_Soldier_TL_F", "O_R_Soldier_AAA_F", "O_R_Soldier_A_F", "O_R_medic_F"],
	["O_R_Soldier_SL_F", "O_R_Soldier_GL_F", "O_R_Soldier_LAT_F", "O_R_soldier_exp_F", "O_R_Soldier_TL_F", "O_R_Soldier_CQ_F", "O_R_Soldier_A_F", "O_R_medic_F"]
];

//Militia Groups
if (gameMode == 4) then {
	//Teams
	groupsFIASmall = [
		["O_E_Soldier_6_F", FIARifleman],
		[FIAMarksman,FIARifleman],
		["O_E_Soldier_4_F", "O_E_Soldier_6_F"]
	];
	//Fireteams
	groupsFIAMid = [
		["O_E_Soldier_2_F","O_E_Soldier_6_F","O_E_Soldier_4_F", FIAMarksman],
		["O_E_Soldier_2_F","O_E_Soldier_6_F","O_E_Soldier_4_F", "O_E_Soldier_5_F"],
		["O_E_Soldier_2_F","O_E_Soldier_6_F","O_E_Soldier_4_F", "O_E_Soldier_8_F"]
	];
	//Squads
	FIASquad = ["O_E_Soldier_2_F","O_E_Soldier_4_F","O_E_Soldier_6_F",FIARifleman,FIARifleman,FIAMarksman,"O_E_Soldier_5_F","O_E_Soldier_3_F"];
	groupsFIASquad = [FIASquad];
};

////////////////////////////////////
//           VEHICLES            ///
////////////////////////////////////
//Military Vehicles
//Lite
vehCSATBike = "O_R_Quadbike_01_F";
vehCSATLightArmed = ["O_R_MRAP_02_gmg_F", "O_R_MRAP_02_hmg_F", "O_R_LSV_02_AT_F", "O_R_LSV_02_armed_F"];
vehCSATLightUnarmed = ["O_R_LSV_02_unarmed_F", "O_R_MRAP_02_F"];
vehCSATTrucks = ["O_R_Truck_02_F", "O_R_Truck_02_transport_F", "O_R_Truck_03_transport_F", "O_R_Truck_03_covered_F"];
vehCSATAmmoTruck = "O_R_Truck_03_ammo_F";
vehCSATRepairTruck = "O_R_Truck_03_repair_F";
vehCSATLight = vehCSATLightArmed + vehCSATLightUnarmed;
//Armored
vehCSATAPC = ["O_R_APC_Tracked_02_cannon_F", "O_R_APC_Wheeled_02_rcws_v2_F"];
vehCSATTanks = ["O_R_MBT_04_cannon_F", "O_R_MBT_02_cannon_F", "O_R_MBT_04_command_F"];
vehCSATAA = "O_R_APC_Tracked_02_AA_F";
vehCSATAttack = vehCSATAPC + vehCSATTanks;
//Boats
vehCSATBoat = "O_R_Boat_Armed_01_hmg_F";
vehCSATRBoat = "O_R_Boat_Transport_01_F";
vehCSATBoats = [vehCSATBoat, vehCSATRBoat, "O_R_APC_Wheeled_02_rcws_v2_F"];
//Planes
vehCSATPlane = "O_R_Plane_CAS_02_dynamicLoadout_F";
vehCSATPlaneAA = "O_R_Plane_Fighter_02_F";
vehCSATTransportPlanes = ["O_T_Plane_Transport_01_infantry_ghex_F"];
//Heli
vehCSATPatrolHeli = "O_R_Heli_Light_02_unarmed_F";
vehCSATTransportHelis = ["O_R_Heli_Transport_04_bench_F", "O_R_Heli_Transport_04_covered_F", vehCSATPatrolHeli];
vehCSATAttackHelis = ["O_R_Heli_Attack_02_dynamicLoadout_F", "O_R_Heli_Light_02_dynamicLoadout_F"];
//UAV
vehCSATUAV = "O_R_UAV_02_dynamicLoadout_F";
vehCSATUAVSmall = "O_R_UAV_01_F";
//Artillery
vehCSATMRLS = "O_R_MBT_02_arty_F";
vehCSATMRLSMags = "32Rnd_155mm_Mo_shells";
//Combined Arrays
vehCSATNormal = vehCSATLight + vehCSATTrucks + [vehCSATAmmoTruck, vehCSATRepairTruck, "O_R_Truck_02_fuel_F", "O_R_Truck_02_medical_F"];
vehCSATAir = vehCSATTransportHelis + vehCSATAttackHelis + [vehCSATPlane,vehCSATPlaneAA] + vehCSATTransportPlanes;

//Militia Vehicles
if (gameMode == 4) then {
	vehFIAArmedCar = "O_E_Offroad_01_armed_F";
	vehFIATruck = "O_E_Truck_02_transport_F";
	vehFIACar = "O_E_Offroad_01_F";
};

////////////////////////////////////
//        STATIC WEAPONS         ///
////////////////////////////////////
//Assembled Statics
CSATMG = "O_R_HMG_01_high_F";
CSATGMG = "O_R_GMG_01_high_F";
staticATInvaders = "O_R_Static_AT_F";
staticAAInvaders = ["O_R_Static_AA_F"];
CSATMortar = "O_R_Mortar_01_F";

CSATAARadar = "O_R_Radar_System_02_F";
CSATAACiws = "";
CSATAASam = "O_R_SAM_System_04_F";
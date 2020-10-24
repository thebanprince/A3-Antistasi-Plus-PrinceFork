//Call to Blufor Alits Template
if (side petros == west) exitWith {call compile preProcessFileLineNumbers "Templates\Vanilla\Vanilla_Occ_AAF_Altis.sqf"};
////////////////////////////////////
//       NAMES AND FLAGS         ///
////////////////////////////////////
//Name Used for notifications
nameOccupants = "EUROFOR";

//Police Faction
factionGEN = "BLU_GEN_F";
//SF Faction
factionMaleOccupants = "BLU_A_wdl_F";
//Miltia Faction
if (gameMode != 4) then {factionFIA = ""};

//Flag Images
NATOFlag = "Flag_Blue_F";
NATOFlagTexture = "\A3\Data_F\Flags\flag_blue_co.paa";
flagNATOmrk = "flag_EU";
if (isServer) then {"NATO_carrier" setMarkerText "EUROFOR Carrier"};

//Loot Crate
NATOAmmobox = "B_supplyCrate_F";

////////////////////////////////////
//   PVP LOADOUTS AND VEHICLES   ///
////////////////////////////////////
//PvP Loadouts
NATOPlayerLoadouts = [
	//Team Leader
	["aegis_blufor_teamLeader_wdl"] call A3A_fnc_getLoadout,
	//Medic
	["aegis_blufor_medic_wdl"] call A3A_fnc_getLoadout,
	//Autorifleman
	["aegis_blufor_machineGunner_wdl"] call A3A_fnc_getLoadout,
	//Marksman
	["aegis_blufor_marksman_wdl"] call A3A_fnc_getLoadout,
	//Anti-tank Scout
	["aegis_blufor_AT_wdl"] call A3A_fnc_getLoadout,
	//AT2
	["aegis_blufor_rifleman_wdl"] call A3A_fnc_getLoadout
];

//PVP Player Vehicles
vehNATOPVP = ["B_E_MRAP_03_F", "B_E_MRAP_03_hmg_F"];

////////////////////////////////////
//             UNITS             ///
////////////////////////////////////
//Military Units
NATOOfficer = "B_E_Officer_F";
NATOOfficer2 = "B_G_officer_F";
NATOBodyG = "B_ION_Soldier_F";
NATOCrew = "B_E_Crew_F";
NATOUnarmed = "B_E_Survivor_F";
NATOMarksman = ["B_E_Soldier_Lite_F", "B_E_soldier_M_F", "B_A_soldier_M_wdl_F"];
staticCrewOccupants = "B_E_Support_AMG_F";
NATOPilot = "B_E_Helipilot_F";

//Militia Units
if (gameMode != 4) then {
	FIARifleman = "B_ION_Soldier_F";
	FIAMarksman = "B_ION_Soldier_M_F";
};

//Police Units
policeOfficer = "B_GEN_Commander_F";
policeGrunt = "B_GEN_Soldier_F";



////////////////////////////////////
//            GROUPS             ///
////////////////////////////////////
//Military Groups
//Teams
groupsNATOSentryT1 = ["B_E_Soldier_GL_F","B_E_Soldier_F"];
groupsNATOSentryT2 = ["B_E_Soldier_GL_F","B_E_Soldier_F"];
groupsNATOSentryT3 = ["B_A_Soldier_GL_wdl_F", "B_A_Soldier_wdl_F"];
groupsNATOSpecOpSmall = [
		["B_A_Recon_TL_wdl_F", "B_A_Recon_AR_wdl_F"],
		["B_A_Recon_CQ_wdl_F", "B_A_Recon_wdl_F"],
		["B_E_Recon_TL_F", "B_E_Recon_AR_F"],
		["B_E_Recon_TL_F","B_E_Recon_M_F"]
];
groupsNATOSniper = ["B_ghillie_lsh_F", "B_ghillie_spotter_lsh_F"];


//Fireteams
groupsNATOAAT1 = ["B_E_Soldier_TL_F", "B_E_Soldier_F", "B_E_Soldier_AA_F", "B_E_Soldier_AAA_F"];
groupsNATOAAT2 = ["B_E_Soldier_TL_F", "B_E_soldier_M_F", "B_E_Soldier_AA_F", "B_E_Soldier_AAA_F"];
groupsNATOAAT3 = ["B_A_Soldier_TL_wdl_F","B_A_soldier_M_wdl_F","B_A_Soldier_AA_wdl_F","B_A_Soldier_AAA_wdl_F"];

groupsNATOATT1 = ["B_E_Soldier_TL_F", "B_E_Soldier_F", "B_E_Soldier_AT_F", "B_E_Soldier_AAT_F"];
groupsNATOATT2 = ["B_E_Soldier_TL_F", "B_E_Soldier_LAT_F", "B_E_Soldier_AT_F", "B_E_Soldier_AAT_F"];
groupsNATOATT3 = ["B_A_Soldier_TL_wdl_F", "B_A_Soldier_LAT_wdl_F", "B_A_Soldier_AT_wdl_F", "B_A_Soldier_AAT_wdl_F"];

groupsNATOFTT1 = ["B_E_Soldier_TL_F", "B_E_Soldier_AR_F", "B_E_Soldier_F", "B_E_Soldier_LAT_F"];
groupsNATOFTT2 = ["B_E_Soldier_TL_F", "B_E_Soldier_AR_F", "B_E_Soldier_GL_F", "B_E_Soldier_LAT_F"];
groupsNATOFTT3 = ["B_A_Soldier_TL_wdl_F", "B_A_HeavyGunner_wdl_F", "B_A_Soldier_GL_wdl_F", "B_A_Soldier_LAT_wdl_F"];


groupsNATOSpecOpMid = [
	["B_A_Recon_TL_wdl_F", "B_A_Recon_MG_wdl_F", "B_A_Recon_LAT_wdl_F", "B_A_Recon_AR_wdl_F"],
	["B_A_Recon_TL_wdl_F", "B_A_Recon_LAT_wdl_F", "B_A_Recon_CQ_wdl_F", "B_A_Recon_wdl_F"],
	["B_E_Recon_TL_F", "B_E_Recon_LAT_F", "B_E_Recon_AR_F", "B_E_Recon_MG_F"],
	["B_E_Recon_TL_F", "B_E_Recon_LAT_F", "B_E_Recon_M_F", "B_E_Recon_JTAC_F"]
];

//Squads
NATOSquadT1 = ["B_E_Soldier_SL_F", "B_E_Soldier_F", "B_E_Soldier_LAT_F", "B_E_soldier_M_F", "B_E_Soldier_TL_F", "B_E_Soldier_AR_F", "B_E_Soldier_A_F", "B_E_Medic_F"];
NATOSquadT2 = ["B_E_Soldier_SL_F", "B_E_Soldier_GL_F", "B_E_Soldier_LAT_F", "B_E_soldier_M_F", "B_E_Soldier_TL_F", "B_E_Soldier_AR_F", "B_E_Soldier_A_F", "B_E_Medic_F"];
NATOSquadT3 = ["B_A_Soldier_SL_wdl_F", "B_A_Soldier_GL_wdl_F", "B_A_Soldier_LAT_wdl_F", "B_A_soldier_M_wdl_F", "B_A_Soldier_GL_wdl_F","B_A_Soldier_AR_wdl_F", "B_A_Soldier_A_wdl_F", "B_A_Medic_wdl_F"];

NATOSpecOp = ["B_A_Recon_TL_wdl_F", "B_A_Recon_Sharpshooter_wdl_F", "B_A_Recon_wdl_F", "B_A_Recon_LAT_wdl_F", "B_A_Recon_JTAC_wdl_F", "B_A_Recon_Exp_wdl_F", "B_A_Recon_MG_wdl_F", "B_A_Recon_Medic_wdl_F"];

//Militia Groups
if (gameMode != 4) then {
	//Teams
	groupsFIASmall = [
		["B_ION_Soldier_GL_F", FIARifleman],
		[FIAMarksman, FIARifleman],
		["B_ION_Soldier_CQ_F", "B_ION_Soldier_F"]
	];
	//Fireteams
	groupsFIAMid = [
		["B_ION_Soldier_TL_F", "B_ION_Soldier_GL_F", "B_ION_Soldier_AR_F", "B_ION_Soldier_M_F"],
		["B_ION_Soldier_TL_F", "B_ION_Soldier_CQ_F", "B_ION_Soldier_M_F", "B_ION_RadioOperator_F"],
		["B_ION_Soldier_TL_F", "B_ION_Soldier_AR_F", "B_ION_RadioOperator_F", "B_ION_Soldier_LAT_F"]
	];
	//Squads
	FIASquad = ["B_ION_Soldier_TL_F", "B_ION_Soldier_AR_F", "B_ION_Soldier_GL_F", "B_ION_Soldier_CQ_F", "B_ION_Soldier_F", "B_ION_Soldier_M_F", "B_ION_Soldier_LAT_F", "B_ION_Soldier_Medic_F"];
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
vehNATOBike = "B_E_Quadbike_01_F";
vehNATOLightArmed = ["B_W_LSV_01_AT_F", "B_W_LSV_01_armed_F", "B_E_MRAP_03_hmg_F", "B_E_LT_01_AT_F", "B_E_LT_01_cannon_F"];
vehNATOLightUnarmed = ["B_W_LSV_01_unarmed_F", "B_E_MRAP_03_F"];
vehNATOTrucks = ["B_E_Truck_01_covered_F", "B_E_Truck_01_transport_F"];
vehNATOCargoTrucks = ["B_E_Truck_01_cargo_F"];
vehNATOFlatbedTrucks = ["B_E_Truck_01_flatbed_F"];
vehNATOAmmoTruck = "B_E_Truck_01_ammo_F";
vehNATORepairTruck = "B_E_Truck_01_Repair_F";
vehNATOLight = vehNATOLightArmed + vehNATOLightUnarmed;
//Armored
vehNATOAPC = ["B_A_APC_tracked_03_cannon_wdl_F", "B_E_APC_Wheeled_03_cannon_F"];
vehNATOTanks = ["B_E_MBT_03_cannon_F", "B_W_AFV_Wheeled_01_cannon_F", "B_W_AFV_Wheeled_01_up_cannon_F"];
vehNATOAA = "B_W_APC_Tracked_01_AA_F";
vehNATOAttack = vehNATOAPC + vehNATOTanks;
//Boats
vehNATOBoat = "B_Boat_Armed_01_minigun_F";
vehNATORBoat = "B_Boat_Transport_01_F";
vehNATOBoats = [vehNATOBoat, vehNATORBoat, "B_E_APC_Wheeled_03_cannon_F"];
//Planes
vehNATOPlane = "B_W_Plane_Fighter_05_F";
vehNATOPlaneAA = "B_E_Plane_Fighter_01_F";
vehNATOTransportPlanes = ["B_W_VTOL_01_infantry_F"];
//Heli
vehNATOPatrolHeli = "B_W_Heli_light_01_F";
vehNATOTransportHelis = ["B_E_Heli_Transport_02_F", vehNATOPatrolHeli, "B_W_Heli_Transport_03_F"];
vehNATOAttackHelis = ["B_W_VTOL_01_armed_F", "B_W_Heli_Light_01_dynamicLoadout_F", "B_W_Heli_Attack_01_dynamicLoadout_F"];
//UAV
vehNATOUAV = "B_E_UAV_02_dynamicLoadout_F";
vehNATOUAVSmall = "B_E_UAV_01_F";
//Artillery
vehNATOMRLS = "B_W_MBT_01_arty_F";
vehNATOMRLSMags = "32Rnd_155mm_Mo_shells";
//Combined Arrays
vehNATONormal = vehNATOLight + vehNATOTrucks + [vehNATOAmmoTruck, "B_E_Truck_01_fuel_F", "B_E_Truck_01_medical_F", vehNATORepairTruck];
vehNATOAir = vehNATOTransportHelis + vehNATOAttackHelis + [vehNATOPlane,vehNATOPlaneAA] + vehNATOTransportPlanes;

//Militia Vehicles
if (gameMode != 4) then {
	vehFIAArmedCar = "B_H_Offroad_02_LMG_F";
	vehFIATruck = "B_ION_Van_02_transport_F";
	vehFIACar = "B_H_Offroad_02_unarmed_F";
};

//Police Vehicles
vehPoliceCar = "B_GEN_Offroad_01_gen_F";

////////////////////////////////////
//        STATIC WEAPONS         ///
////////////////////////////////////
//Assembled Statics
NATOMG = "B_E_HMG_01_high_F";
staticATOccupants = "B_E_Static_AT_F";
staticAAOccupants = ["B_E_Static_AA_F"];
NATOMortar = "B_E_Mortar_01_F";

NATOAARadar = "B_E_Radar_System_01_F";
NATOAACiws = "B_AAA_System_01_F";
NATOAASam = "B_E_SAM_System_03_F";
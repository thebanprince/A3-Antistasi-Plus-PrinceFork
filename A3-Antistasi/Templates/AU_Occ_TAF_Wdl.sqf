////////////////////////////////////
//       NAMES AND FLAGS         ///
////////////////////////////////////
//Name Used for notifications
nameOccupants = "NATO";

//Police Faction
factionGEN = "BLU_GEN_F";
//SF Faction
factionMaleOccupants = "BLU_A_wdl_F";
//Miltia Faction
if ((gameMode != 4) and (!hasFFAA)) then {
	factionFIA = "TavianaNationalGuard";
};

//Flag Images
NATOFlag = "Flag_NATO_F";
NATOFlagTexture = "\A3\Data_F\Flags\Flag_NATO_CO.paa";
flagNATOmrk = "flag_NATO";
if (isServer) then {
	"NATO_carrier" setMarkerText "NATO Carrier";
};

//Loot Crate
NATOAmmobox = "B_supplyCrate_F";

////////////////////////////////////
//   PVP LOADOUTS AND VEHICLES   ///
////////////////////////////////////
//PvP Loadouts
NATOPlayerLoadouts = [
	//Team Leader
	["vanilla_blufor_teamLeader_altis"] call A3A_fnc_getLoadout,
	//Medic
	["vanilla_blufor_medic_altis"] call A3A_fnc_getLoadout,
	//Autorifleman
	["vanilla_blufor_machineGunner_altis"] call A3A_fnc_getLoadout,
	//Marksman
	["vanilla_blufor_marksman_altis"] call A3A_fnc_getLoadout,
	//Anti-tank Scout
	["vanilla_blufor_AT_altis"] call A3A_fnc_getLoadout,
	//AT2
	["vanilla_blufor_rifleman_altis"] call A3A_fnc_getLoadout
];

//PVP Player Vehicles
vehNATOPVP = ["B_W_LSV_01_unarmed_F","B_W_MRAP_01_F","B_W_LSV_01_armed_F","B_W_LSV_01_light_F","B_W_MRAP_01_hmg_F", "B_A_MRAP_03_hmg_wdl_F", "B_A_MRAP_03_wdl_F"];

////////////////////////////////////
//             UNITS             ///
////////////////////////////////////

//First item - tier1, second one - tier 2, third one - tier 3
NATOGrunt = ["TNG_Soldier_F","TAF_Soldier_F","TEAF_Soldier_F"];
NATOMarksman = ["TAF_Soldier_M_F", "TAF_Soldier_M_F", "TEAF_Soldier_M_F"];
NATOOfficer = "B_A_Officer_wdl_F";
NATOOfficer2 = "B_G_officer_F";
NATOBodyG = "B_E_Soldier_F";
NATOCrew = "TNG_crew_F";
NATOUnarmed = "B_G_Survivor_F";
staticCrewOccupants = "TNG_Soldier_F";
NATOPilot = "B_Helipilot_F";

//Militia Units
if ((gameMode != 4) and (!hasFFAA)) then {
	FIARifleman = "TNG_Soldier_F";
	FIAMarksman = "TNG_Soldier_M_F";
};

//Police Units
policeOfficer = "B_GEN_Soldier_Rifle_F";
policeGrunt = "B_GEN_Soldier_AR_F";


////////////////////////////////////
//            GROUPS             ///
////////////////////////////////////

groupsNATOSentryT1 = ["TNG_Soldier_GL_F", "TNG_Soldier_R_F"];
groupsNATOSentryT2 = ["TAF_Soldier_R_F", "TAF_Soldier_GL_F"];
groupsNATOSentryT3 = ["TEAF_Soldier_GL_F", "TEAF_Soldier_R_F"];
groupsNATOSpecOpSmall = [
		["TAV_B_A_Recon_wdl_F","TAV_B_A_Recon_Exp_wdl_F"],
		["TNG_Patrolman_SL_F","TNG_Patrolman2_SL_F"]
];
groupsNATOSniper = ["TAF_Sniper_F","TAF_Spotter_F"];

//Fireteams
groupsNATOAAT1 = ["TNG_Soldier_SL_F","TNG_Soldier_R_F","TNG_Soldier_F","TNG_Soldier_AA_F"];
groupsNATOAAT2 = ["TAF_Soldier_SL_F","TAF_Soldier_R_F","TAF_Soldier_F","TAF_Soldier_AA_F"];
groupsNATOAAT3 = ["TEAF_Soldier_SL_F","TEAF_Soldier_R_F","TEAF_Soldier_F","TEAF_Soldier_AA_F"];

groupsNATOATT1 = ["TNG_Soldier_SL_F","TNG_Soldier_R_F","TNG_Soldier_LAT_F","TNG_Soldier_AT_F"];
groupsNATOATT2 = ["TAF_Soldier_SL_F","TAF_Soldier_R_F","TAF_Soldier_LAT_F","TAF_Soldier_AT_F"];
groupsNATOATT3 = ["TEAF_Soldier_SL_F","TEAF_Soldier_R_F","TEAF_Soldier_LAT_F","TEAF_Soldier_AT_F"];

groupsNATOFTT1 = ["TNG_Soldier_AR_F","TNG_Soldier_SL_F","TNG_Soldier_F","TNG_Soldier_AT_F"];
groupsNATOFTT2 = ["TAF_Soldier_SL_F","TAF_Soldier_AR_F","TAF_Soldier_F","TAF_Soldier_AT_F"];
groupsNATOFTT3 = ["TEAF_Soldier_SL_F","TEAF_Soldier_AR_F","TEAF_Soldier_F","TEAF_Soldier_AT_F"];

groupsNATOSpecOpMid = [
	["B_A_Soldier_TL_wdl_F","B_A_Soldier_AR_wdl_F","B_A_Soldier_AAR_wdl_F","B_A_Soldier_GL_wdl_F"],
	["B_A_Soldier_TL_wdl_F","B_A_soldier_M_wdl_F","B_A_RadioOperator_wdl_F","B_A_Soldier_wdl_F"]
];

//Squads
NATOSquadT1 = ["TNG_Soldier_SL_F", "TNG_Soldier_GL_F", "TNG_Soldier_AR_F", "TNG_Soldier_F", "TNG_Soldier_R_F", "TNG_Soldier_LAT_F", "TNG_Soldier_AT_F", "TNG_Soldier_M_F", "TNG_medic_F"];
NATOSquadT2 = ["TAF_Soldier_SL_F", "TAF_Soldier_GL_F", "TAF_Soldier_AR_F", "TAF_Soldier_F", "TAF_Soldier_R_F", "TAF_Soldier_LAT_F", "TAF_Soldier_AT_F", "TAF_Soldier_M_F", "TAF_medic_F"];
NATOSquadT3 = ["TEAF_Soldier_SL_F", "TEAF_Soldier_GL_F", "TEAF_Soldier_AR_F", "TEAF_Soldier_F", "TEAF_Soldier_R_F", "TEAF_Soldier_LAT_F", "TEAF_Soldier_AT_F", "TEAF_Soldier_M_F", "TEAF_medic_F"];

NATOSpecOp = ["B_A_Recon_TL_wdl_F", "B_A_Recon_JTAC_wdl_F", "B_A_Recon_AR_wdl_F", "B_A_Recon_M_wdl_F","B_A_Recon_CQ_wdl_F", "B_A_Recon_Exp_wdl_F", "B_A_Recon_GL_wdl_F", "B_A_Recon_Medic_wdl_F", "B_A_Recon_wdl_F", "B_A_Recon_LAT_wdl_F"];

//Militia Groups
if ((gameMode != 4) and (!hasFFAA)) then {
	//Teams
	groupsFIASmall = [
		["TNG_Soldier_AR_F","TNG_Soldier_R_F"],
		["TNG_Soldier_SL_F","TNG_Soldier_M_F"],
		["TNG_Soldier_F","TNG_Soldier_LAT_F"]
	];
	//Fireteams
	groupsFIAMid = [
		groupsNATOATT1,
		groupsNATOAAT1,
		groupsNATOFTT1
	];
	//Squads
	FIASquad = ["TNG_Soldier_SL_F","TNG_Soldier_AR_F","TNG_Soldier_R_F","B_E_Soldier_F","B_E_Soldier_LAT_F","TNG_Soldier_LAT_F","TNG_Soldier_GL_F","TNG_medic_F"];
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
vehNATOLightArmed = ["B_A_MRAP_03_hmg_wdl_F", "B_W_MRAP_01_hmg_F", "B_A_LSV_01_AT_wdl_F"];
vehNATOLightUnarmed = ["B_A_LSV_01_AT_wdl_F", "B_A_LSV_01_armed_wdl_F"];
vehNATOTrucks = ["B_W_Truck_01_transport_F", "B_W_Truck_01_covered_F"];
vehNATOCargoTrucks = ["B_W_Truck_01_cargo_F", "B_W_Truck_01_flatbed_F"];
vehNATOAmmoTruck = "B_W_Truck_01_ammo_F";
vehNATORepairTruck = "B_W_Truck_01_Repair_F";
vehNATOLight = vehNATOLightArmed + vehNATOLightUnarmed;
//Armored
vehNATOAPC = ["B_W_AFV_Wheeled_01_cannon_F","B_W_AFV_Wheeled_01_up_cannon_F","B_A_APC_tracked_03_cannon_wdl_F","B_E_APC_Wheeled_03_cannon_F","B_W_APC_Tracked_01_rcws_F","B_W_APC_Wheeled_01_cannon_F"];
vehNATOTank = "B_E_MBT_03_cannon_F";
vehNATOAA = "B_W_APC_Tracked_01_AA_F";
vehNATOAttack = vehNATOAPC + ["B_W_MBT_01_TUSK_F", "B_W_MBT_01_cannon_F", vehNATOTank];
//Boats
vehNATOBoat = "B_Boat_Armed_01_minigun_F";
vehNATORBoat = "B_Boat_Transport_01_F";
vehNATOBoats = [vehNATOBoat,vehNATORBoat,"B_APC_Wheeled_01_cannon_F"];
//Planes
vehNATOPlane = "B_W_Plane_CAS_01_dynamicLoadout_F";
vehNATOPlaneAA = "B_Plane_Fighter_01_F";
vehNATOTransportPlanes = ["B_T_VTOL_01_infantry_F", "B_A_Plane_Transport_01_infantry_wdl_F"];
//Heli
vehNATOPatrolHeli = "B_A_Heli_light_03_unarmed_wdl_F";
vehNATOTransportHelis = ["B_W_Heli_Transport_01_F", "B_W_Heli_Transport_03_F", "B_A_Heli_Transport_02_wdl_F", vehNATOPatrolHeli];
vehNATOAttackHelis = ["B_A_Heli_light_03_dynamicLoadout_wdl_F", "B_W_Heli_Light_01_dynamicLoadout_F", "B_W_Heli_Attack_01_dynamicLoadout_F", "B_W_VTOL_01_armed_F"];
//UAV
vehNATOUAV = "B_UAV_03_dynamicLoadout_F";
vehNATOUAVSmall = "B_UAV_01_F";
//Artillery
vehNATOMRLS = "B_W_MBT_01_arty_F";
vehNATOMRLSMags = "32Rnd_155mm_Mo_shells";
//Combined Arrays
vehNATONormal = vehNATOLight + vehNATOTrucks + [vehNATOAmmoTruck, "B_W_Truck_01_fuel_F", "B_W_Truck_01_medical_F", vehNATORepairTruck,"B_APC_Tracked_01_CRV_F"];
vehNATOAir = vehNATOTransportHelis + vehNATOAttackHelis + [vehNATOPlane,vehNATOPlaneAA] + vehNATOTransportPlanes;

//Militia Vehicles
if ((gameMode != 4) and (!hasFFAA)) then {
	vehFIAArmedCar = "B_A_LSV_01_armed_wdl_F";
	vehFIATruck = "B_W_Truck_01_transport_F";
	vehFIACar = "BLU_A_wdl_F";
};

//Police Vehicles
vehPoliceCar = "B_GEN_Offroad_01_comms_F";

////////////////////////////////////
//        STATIC WEAPONS         ///
////////////////////////////////////
//Assembled Statics
NATOMG = "B_A_HMG_02_high_tna_F";
staticATOccupants = "B_E_Static_AT_F";
staticAAOccupants = "B_E_Static_AA_F";
NATOMortar = "B_E_Mortar_01_F";

//Static Weapon Bags
MGStaticNATOB = "B_HMG_02_Weapon_grn_F";
ATStaticNATOB = "B_AT_01_Weapon_grn_F";
AAStaticNATOB = "B_AA_01_Weapon_grn_F";
MortStaticNATOB = "B_Mortar_01_Weapon_grn_F";
//Short Support
supportStaticNATOB = "B_HMG_01_support_grn_F";
//Tall Support
supportStaticNATOB2 = "B_HMG_02_support_high_grn_F";
//Mortar Support
supportStaticNATOB3 = "B_Mortar_01_support_grn_F";
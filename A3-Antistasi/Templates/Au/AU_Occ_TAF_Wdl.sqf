////////////////////////////////////
//       NAMES AND FLAGS         ///
////////////////////////////////////
//Name Used for notifications
nameOccupants = "NATO";

//Police Faction
factionGEN = "BLU_GEN_F";
//SF Faction
factionMaleOccupants = "BLU_A_F";
//Miltia Faction
if (gameMode != 4) then {
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
	["vanilla_blufor_teamLeader_WDL"] call A3A_fnc_getLoadout,
	//Medic
	["vanilla_blufor_medic_WDL"] call A3A_fnc_getLoadout,
	//Autorifleman
	["vanilla_blufor_machineGunner_WDL"] call A3A_fnc_getLoadout,
	//Marksman
	["vanilla_blufor_marksman_WDL"] call A3A_fnc_getLoadout,
	//Anti-tank Scout
	["vanilla_blufor_AT_WDL"] call A3A_fnc_getLoadout,
	//AT2
	["vanilla_blufor_rifleman_WDL"] call A3A_fnc_getLoadout
];

//PVP Player Vehicles
vehNATOPVP = ["B_W_LSV_01_unarmed_F","B_W_MRAP_01_F","B_W_LSV_01_armed_F","B_W_LSV_01_light_F","B_W_MRAP_01_hmg_F"];

////////////////////////////////////
//             UNITS             ///
////////////////////////////////////

//First item - tier1, second one - tier 2, third one - tier 3
NATOMarksman = ["TAF_Soldier_M_F", "TAF_Soldier_M_F", "TEAF_Soldier_M_F"];
NATOOfficer = "B_A_officer_F";
NATOOfficer2 = "B_G_officer_F";
NATOBodyG = "MYR_B_soldier_MX_F";
NATOCrew = "TNG_crew_F";
NATOUnarmed = "B_G_Survivor_F";
staticCrewOccupants = "TNG_Soldier_F";
NATOPilot = "B_A_Helipilot_F";

//Militia Units
if (gameMode != 4) then {
	FIARifleman = "TNG_Soldier_F";
	FIAMarksman = "TNG_Soldier_M_F";
};

//Police Units
policeOfficer = "B_GEN_Commander_F";
policeGrunt = "B_GEN_Soldier_F";

////////////////////////////////////
//            GROUPS             ///
////////////////////////////////////

groupsNATOSentryT1 = ["TNG_Soldier_GL_F", "TNG_Soldier_R_F"];
groupsNATOSentryT2 = ["TAF_Soldier_R_F", "TAF_Soldier_GL_F"];
groupsNATOSentryT3 = ["TEAF_Soldier_GL_F", "TEAF_Soldier_R_F"];
groupsNATOSpecOpSmall = [
		["TAV_B_A_Recon_F","TAV_B_A_Recon_Exp_F"],
		["TNG_Patrolman_SL_F","TNG_Patrolman2_SL_F"],
		["MYR_B_soldier_MX_F","MYR_B_soldier_M_F"]
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
	["B_A_Recon_TL_F","B_A_Recon_AR_F","B_A_Recon_JTAC_F","B_A_recon_GL_F"],
	["B_A_Recon_TL_F","B_A_Recon_M_F","B_A_Recon_F","B_A_Recon_Exp_F"],
	["MYR_B_soldier_spar_F","MYR_B_soldier_MX_F","MYR_B_soldier_medic_F","MYR_B_soldier_GL_F"]
];

//Squads
NATOSquadT1 = ["TNG_Soldier_SL_F", "TNG_Soldier_GL_F", "TNG_Soldier_AR_F", "TNG_Soldier_F", "TNG_Soldier_R_F", "TNG_Soldier_LAT_F", "TNG_Soldier_AT_F", "TNG_Soldier_M_F", "TNG_medic_F"];
NATOSquadT2 = ["TAF_Soldier_SL_F", "TAF_Soldier_GL_F", "TAF_Soldier_AR_F", "TAF_Soldier_F", "TAF_Soldier_R_F", "TAF_Soldier_LAT_F", "TAF_Soldier_AT_F", "TAF_Soldier_M_F", "TAF_medic_F"];
NATOSquadT3 = ["TEAF_Soldier_SL_F", "TEAF_Soldier_GL_F", "TEAF_Soldier_AR_F", "TEAF_Soldier_F", "TEAF_Soldier_R_F", "TEAF_Soldier_LAT_F", "TEAF_Soldier_AT_F", "TEAF_Soldier_M_F", "TEAF_medic_F"];

NATOSpecOp = ["B_A_Recon_TL_F", "B_A_Recon_JTAC_F", "B_A_Recon_AR_F", "B_A_Recon_M_F","B_A_Recon_CQ_F", "B_A_Recon_Exp_F", "B_A_recon_GL_F", "B_A_Recon_Medic_F", "B_A_Recon_F", "B_A_Recon_LAT_F"];

//Militia Groups
if (gameMode != 4) then {
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
	FIASquad = ["TNG_Soldier_SL_F","TNG_Soldier_AR_F","TNG_Soldier_R_F","TNG_Soldier_F","TNG_Soldier_LAT_F","TNG_Soldier_AT_F","TNG_Soldier_GL_F","TNG_medic_F"];
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
vehNATOBike = "B_W_Quadbike_01_F";
vehNATOLightArmed = ["B_W_MRAP_01_hmg_F","B_W_LSV_01_armed_F","B_A_MRAP_03_hmg_F", "B_W_LSV_01_AT_F"];
vehNATOLightUnarmed = ["B_W_LSV_01_light_F","B_W_LSV_01_unarmed_F","B_A_MRAP_03_F","B_W_MRAP_01_F", "B_W_APC_Wheeled_01_medical_F"];
vehNATOTrucks = ["B_W_Truck_01_covered_F","B_W_Truck_01_transport_F"];
vehNATOCargoTrucks = ["B_W_Truck_01_cargo_F"];
vehNATOFlatbedTrucks = ["B_W_Truck_01_flatbed_F"];
vehNATOAmmoTruck = "B_W_Truck_01_ammo_F";
vehNATORepairTruck = "B_W_Truck_01_Repair_F";
vehNATOLight = vehNATOLightArmed + vehNATOLightUnarmed;
//Armored
vehNATOAPC = ["B_W_APC_Wheeled_01_cannon_F","B_W_APC_Tracked_01_rcws_F","B_A_APC_tracked_03_cannon_F","B_W_AFV_Wheeled_01_cannon_F","B_W_AFV_Wheeled_01_up_cannon_F", "B_W_MBT_01_cannon_F"];
vehNATOTanks = ["B_W_MBT_01_TUSK_F", "B_W_MBT_01_cannon_F"];
vehNATOAA = "B_W_APC_Tracked_01_AA_F";
vehNATOAttack = vehNATOAPC + vehNATOTanks;
//Boats
vehNATOBoat = "B_Boat_Armed_01_minigun_F";
vehNATORBoat = "B_Boat_Transport_01_F";
vehNATOBoats = [vehNATOBoat,vehNATORBoat,"B_W_APC_Wheeled_01_cannon_F"];
//Planes
vehNATOPlane = "B_W_Plane_CAS_01_dynamicLoadout_F";
vehNATOPlaneAA = "B_A_Plane_Fighter_05_F";
vehNATOTransportPlanes = ["B_W_VTOL_01_infantry_F", "B_W_VTOL_01_infantry_F"];
//Heli
vehNATOPatrolHeli = "B_A_Heli_light_03_unarmed_F";
vehNATOTransportHelis = ["B_W_Heli_Transport_03_F", "B_A_Heli_Transport_02_F", "B_A_Heli_light_03_dynamicLoadout_F", vehNATOPatrolHeli];
vehNATOAttackHelis = ["B_W_Heli_Light_01_dynamicLoadout_F","B_A_Heli_light_03_dynamicLoadout_F","B_W_Heli_Attack_01_dynamicLoadout_F", "B_T_VTOL_01_armed_F"];
//UAV
vehNATOUAV = "B_UAV_02_dynamicLoadout_F";
vehNATOUAVSmall = "B_UAV_01_F";
//Artillery
vehNATOMRLS = "B_W_MBT_01_arty_F";
vehNATOMRLSMags = "32Rnd_155mm_Mo_shells";
//Combined Arrays
vehNATONormal = vehNATOLight + vehNATOTrucks + [vehNATOAmmoTruck, "B_W_Truck_01_fuel_F", "B_W_Truck_01_medical_F", vehNATORepairTruck,"B_W_APC_Tracked_01_CRV_F"];
vehNATOAir = vehNATOTransportHelis + vehNATOAttackHelis + [vehNATOPlane,vehNATOPlaneAA] + vehNATOTransportPlanes;

//Militia Vehicles
if (gameMode != 4) then {
	vehFIAArmedCar = "B_H_Offroad_02_LMG_F";
	vehFIATruck = "B_G_Van_02_transport_F";
	vehFIACar = "B_H_Offroad_02_unarmed_F";
};

//Police Vehicles
vehPoliceCar = "B_G_Offroad_01_police_F";

////////////////////////////////////
//        STATIC WEAPONS         ///
////////////////////////////////////
//Assembled Statics
NATOMG = "I_G_HMG_02_high_F";
staticATOccupants = "B_static_AT_F";
staticAAOccupants = ["B_static_AA_F"];
NATOMortar = "B_Mortar_01_F";

NATOAARadar = "B_Radar_System_01_F";
NATOAACiws = "B_AAA_System_01_F";
NATOAASam = "B_SAM_System_03_F";
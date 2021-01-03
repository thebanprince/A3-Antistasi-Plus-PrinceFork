////////////////////////////////////
//       NAMES AND FLAGS         ///
////////////////////////////////////
//Name Used for notifications
nameOccupants = "AAF";

//Police Faction
factionGEN = "Police_IND_P_F";
//SF Faction
factionMaleOccupants = "AafSpecialForces";
//Miltia Faction
if (gameMode != 4) then {factionFIA = "CUP_I_RACS"};

//Flag Images
NATOFlag = "Flag_AltisColonial_F";
NATOFlagTexture = "\A3\Data_F\Flags\Flag_AltisColonial_CO.paa";
flagNATOmrk = "flag_AltisColonial";
if (isServer) then {"NATO_carrier" setMarkerText "AAF Carrier"};

//Loot Crate
NATOAmmobox = "I_supplyCrate_F";

////////////////////////////////////
//   PVP LOADOUTS AND VEHICLES   ///
////////////////////////////////////
//PvP Loadouts
NATOPlayerLoadouts = [
	//Team Leader
	["Vanilla_AAF_TeamLeader_Altis"] call A3A_fnc_getLoadout,
	//Medic
	["Vanilla_AAF_Medic_Altis"] call A3A_fnc_getLoadout,
	//Autorifleman
	["Vanilla_AAF_MachineGunner_Altis"] call A3A_fnc_getLoadout,
	//Marksman
	["Vanilla_AAF_Marksman_Altis"] call A3A_fnc_getLoadout,
	//Anti-tank Scout
	["Vanilla_AAF_AT1_Altis"] call A3A_fnc_getLoadout,
	//AT2
	["Vanilla_AAF_AT2_Altis"] call A3A_fnc_getLoadout
];

//PVP Player Vehicles
vehNATOPVP = ["CUP_I_LR_SF_HMG_AAF", "I_MRAP_03_hmg_F", "CUP_I_LR_MG_AAF"];

////////////////////////////////////
//             UNITS             ///
////////////////////////////////////
//Military Units
NATOOfficer = "I_officer_F";
NATOOfficer2 = "I_G_officer_F";
NATOBodyG = "MYR_I_soldier_spar_F";
NATOCrew = "AAF_T0_Crew_F";
NATOUnarmed = "I_Survivor_F";
NATOMarksman = ["AAF_T1_Soldier_M_F", "I_Soldier_M_F", "AAF_T3_Soldier_M_F"];
staticCrewOccupants = "AAF_T1_Soldier_F_M16";
NATOPilot = "I_helipilot_F";

//Militia Units
if (gameMode != 4) then {
	FIARifleman = "CUP_I_RACS_Soldier_wdl";
	FIAMarksman = "CUP_I_RACS_M_wdl";
};

//Police Units
policeOfficer = "I_P_PoliceOfficer_Rifle_F";
policeGrunt = "I_P_PoliceOfficer_SG_F";

////////////////////////////////////
//            GROUPS             ///
////////////////////////////////////
//Military Groups
//Teams
groupsNATOSentryT1 = ["AAF_T1_Soldier_F_M16", "AAF_T1_Soldier_F_FAL"];
groupsNATOSentryT2 = ["I_soldier_F", "I_Soldier_GL_F"];
groupsNATOSentryT3 = ["AAF_T3_Soldier_F", "AAF_T3_Soldier_M_F"];
groupsNATOSpecOpSmall = [
		["AAF_SO_Soldier_GL_F", "AAF_SO_Soldier_AR_F"],
		["AAF_SO_Soldier_TL_F", "AAF_SO_Soldier_M_F"],
		["AAF_SO_Soldier_TL_F", "AAF_SO_RadioOperator_F"]
];

groupsNATOSniper = ["AAF_T0_Ghillie_sard_F","AAF_T0_Spotter_sard_F"];
//Fireteams
groupsNATOAAT1 = ["AAF_T1_Soldier_TL_F", "AAF_T1_Soldier_F_FAL", "AAF_T1_Soldier_AA_F", "AAF_T1_Soldier_AA_F"];
groupsNATOAAT2 = ["I_Soldier_TL_F", "I_Soldier_GL_F", "I_Soldier_AA_F", "I_Soldier_AAA_F"];
groupsNATOAAT3 = ["AAF_T3_Soldier_TL_F", "AAF_T3_Soldier_AA_F", "AAF_T3_Soldier_AA_F", "AAF_T3_Soldier_AAA_F"];

groupsNATOATT1 = ["AAF_T1_Soldier_TL_F", "AAF_T1_Soldier_F_FAL", "AAF_T1_Soldier_LAT_FAL_AT_F", "AAF_T1_Soldier_LAT2_F"];
groupsNATOATT2 = ["I_Soldier_TL_F", "AAF_T2_Soldier_F_G3", "AAF_T2_Soldier_LAT_G3_HE_F", "I_Soldier_LAT2_F"];
groupsNATOATT3 = ["AAF_T3_Soldier_TL_F", "AAF_T3_Soldier_LAT_F", "AAF_T3_Soldier_AT_F", "AAF_T3_Soldier_AAT_F"];

groupsNATOFTT1 = ["AAF_T1_Soldier_TL_F", "AAF_T1_Soldier_GL_F", "AAF_T1_Soldier_AR_F", "AAF_T1_Soldier_LAT_FAL_AT_F"];
groupsNATOFTT2 = ["I_Soldier_TL_F", "I_Soldier_GL_F", "I_Soldier_AR_F", "AAF_T2_Soldier_LAT_G3_AT_F"];
groupsNATOFTT3 = ["AAF_T3_Soldier_TL_F", "AAF_T3_Soldier_GL_F", "AAF_T3_Soldier_AR_F", "AAF_T3_Soldier_LAT_F"];
groupsNATOSpecOpMid = [
	["AAF_SO_Soldier_TL_F", "AAF_SO_Soldier_GL_F", "AAF_SO_Soldier_LAT_F", "CUP_I_PMC_Soldier_AT"],
	["AAF_SO_Soldier_TL_F", "AAF_SO_Soldier_GL_F", "AAF_SO_Soldier_M_F", "CUP_I_PMC_Soldier_AT"],
	["AAF_SO_Soldier_TL_F", "AAF_SO_Soldier_GL_F", "AAF_SO_Soldier_AR_F", "CUP_I_PMC_Soldier_AT"],
	["AAF_SO_Soldier_TL_F", "AAF_SO_Soldier_GL_F", "AAF_SO_RadioOperator_F", "CUP_I_PMC_Soldier_AT"]
];


//Squads
NATOSquadT1 = ["AAF_T1_Soldier_SL_F", "AAF_T1_Soldier_LAT_FAL_HE_F", "AAF_T1_Soldier_LAT2_F", "AAF_T1_RadioOperator_F", "AAF_T1_Soldier_M_F", "AAF_T1_Soldier_AR_F", "AAF_T1_Soldier_A_F", "AAF_T1_Medic_F"];
NATOSquadT2 = ["I_Soldier_SL_F", "AAF_T2_Soldier_LAT_G3_HE_F", "I_Soldier_LAT2_F", "AAF_T2_RadioOperator_F", "I_Soldier_M_F", "AAF_T2_Soldier_AR_F", "I_Soldier_A_F", "I_medic_F"];
NATOSquadT3 = ["AAF_T3_Soldier_SL_F", "AAF_T3_Soldier_GL_F", "AAF_T3_Soldier_LAT_F", "AAF_T3_Soldier_AT_F", "AAF_T3_Soldier_M_F", "AAF_T3_Soldier_AR_F", "AAF_T3_Soldier_A_F", "AAF_T3_Medic_F"];

NATOSpecOp = ["AAF_SO_Soldier_SL_F", "AAF_SO_Soldier_LAT_F", "AAF_SO_Soldier_AT_F", "AAF_SO_Soldier_M_F", "AAF_SO_Soldier_AR_F", "AAF_SO_Soldier_GL_F", "AAF_SO_RadioOperator_F", "AAF_SO_Soldier_TL_F", "AAF_SO_Medic_F"];



//Militia Groups
if (gameMode != 4) then {
	//Teams
	groupsFIASmall = [
		["CUP_I_RACS_Soldier_Light_wdl", FIARifleman],
		["CUP_I_RACS_GL_wdl", FIARifleman],
		[FIAMarksman, FIARifleman],
		["CUP_I_RACS_AR_wdl", FIARifleman],
		[FIAMarksman, "CUP_I_RACS_AR_wdl"]
	];
	//Fireteams
	groupsFIAMid = [
		["CUP_I_RACS_SL_wdl", "CUP_I_RACS_AR_wdl", "CUP_I_RACS_MMG_wdl", "CUP_I_RACS_Soldier_MAT_wdl"],
		["CUP_I_RACS_SL_wdl", "CUP_I_RACS_GL_wdl", "CUP_I_RACS_M_wdl", "CUP_I_RACS_Soldier_MAT_wdl"],
		["CUP_I_RACS_SL_wdl", "CUP_I_RACS_Sniper_wdl", "CUP_I_RACS_M_wdl", "CUP_I_RACS_Soldier_MAT_wdl"],
		["CUP_I_RACS_SL_wdl", "CUP_I_RACS_Soldier_LAT_wdl", "CUP_I_RACS_Soldier_LAT_wdl", "CUP_I_RACS_Soldier_MAT_wdl"]
	];
	//Squads
	FIASquad = ["CUP_I_RACS_SL_wdl", "CUP_I_RACS_Soldier_LAT_wdl", "CUP_I_RACS_GL_wdl", "CUP_I_RACS_Soldier_MAT_wdl", "CUP_I_RACS_M_wdl", "CUP_I_RACS_MMG_wdl", "CUP_I_RACS_Soldier_AMG_wdl", "CUP_I_RACS_Medic_wdl"];
	groupsFIASquad = [
		FIASquad, 
		["CUP_I_RACS_SL_wdl", "CUP_I_RACS_Sniper_wdl", "CUP_I_RACS_GL_wdl", "CUP_I_RACS_Soldier_MAT_wdl", "CUP_I_RACS_M_wdl", "CUP_I_RACS_MMG_wdl", "CUP_I_RACS_Soldier_AMG_wdl", "CUP_I_RACS_Medic_wdl"],
		["CUP_I_RACS_SL_wdl", "CUP_I_RACS_Soldier_LAT_wdl", "CUP_I_RACS_GL_wdl", "CUP_I_RACS_Soldier_MAT_wdl", "CUP_I_RACS_AR_wdl", "CUP_I_RACS_MMG_wdl", "CUP_I_RACS_Soldier_AMG_wdl", "CUP_I_RACS_Medic_wdl"],
		["CUP_I_RACS_SL_wdl", "CUP_I_RACS_Soldier_LAT_wdl", "CUP_I_RACS_GL_wdl", "CUP_I_RACS_Soldier_HAT_wdl", "CUP_I_RACS_M_wdl", "CUP_I_RACS_Soldier_MAT_wdl", "CUP_I_RACS_Soldier_AAT_wdl", "CUP_I_RACS_Medic_wdl"]
	];
};

//Police Groups
//Teams
groupsNATOGen = [policeOfficer, policeGrunt];

////////////////////////////////////
//           VEHICLES            ///
////////////////////////////////////
//Military Vehicles
//Lite
vehNATOBike = "I_Quadbike_01_F";
vehNATOLightArmed = ["CUP_I_MTLB_pk_NAPA", "I_MRAP_03_hmg_F", "CUP_I_LR_SF_HMG_AAF", "CUP_I_LR_MG_AAF", "I_LT_01_cannon_F"];
vehNATOLightUnarmed = ["I_MRAP_03_F", "CUP_I_LR_Transport_AAF"];
vehNATOTrucks = ["I_Truck_02_covered_F","I_Truck_02_transport_F"];
vehNATOCargoTrucks = ["I_Truck_02_transport_F"];
vehNATOFlatbedTrucks = ["I_Truck_02_cargo_F"];
vehNATOAmmoTruck = "I_Truck_02_ammo_F";
vehNATORepairTruck = "I_Truck_02_box_F";
vehNATOLight = vehNATOLightArmed + vehNATOLightUnarmed;
//Armored
vehNATOAPC = ["CUP_I_M113_AAF", "I_APC_tracked_03_cannon_F", "I_APC_Wheeled_03_cannon_F"];
vehNATOTanks = ["I_MBT_03_cannon_F"];
vehNATOAA = "CUP_I_ZSU23_AAF";
vehNATOAttack = vehNATOAPC + vehNATOTanks + ["CUP_I_ZSU23_Afghan_AAF", "CUP_I_M163_AAF", "I_LT_01_AT_F"];
//Boats
vehNATOBoat = "I_Boat_Armed_01_minigun_F";
vehNATORBoat = "I_Boat_Transport_01_F";
vehNATOBoats = [vehNATOBoat,vehNATORBoat, "CUP_I_ZUBR_AAF"];
//Planes
vehNATOPlane = "CUP_I_AV8B_DYN_AAF";
vehNATOPlaneAA = "I_Plane_Fighter_04_F";
vehNATOTransportPlanes = ["CUP_I_C130J_AAF", "I_Plane_Transport_01_infantry_F"];
//Heli
vehNATOPatrolHeli = "I_Heli_light_03_unarmed_F";
vehNATOTransportHelis = ["CUP_I_Mi24_D_Dynamic_AAF", "I_Heli_Transport_02_F","I_Heli_light_03_unarmed_F", "CUP_I_Wildcat_Unarmed_Green_AAF", "CUP_I_Wildcat_Unarmed_Digital_AAF"];
vehNATOAttackHelis = ["I_Heli_Light_01_dynamicLoadout_F", "CUP_I_AH1Z_Dynamic_AAF", "CUP_I_Wildcat_Digital_AAF", "CUP_I_Wildcat_Green_AAF", "CUP_I_Ka60_GL_Digi_AAF", "CUP_I_Mi24_Mk3_AAF", "CUP_I_Mi24_Mk4_AAF", "CUP_I_Mi24_D_Dynamic_AAF", "I_Heli_light_03_dynamicLoadout_F"];
//UAV
vehNATOUAV = "I_UAV_02_dynamicLoadout_F";
vehNATOUAVSmall = "I_UAV_01_F";
//Artillery
vehNATOMRLS = "I_Truck_02_MRL_F";
vehNATOMRLSMags = "12Rnd_230mm_rockets";
//Combined Arrays
vehNATONormal = vehNATOLight + vehNATOTrucks + [vehNATOAmmoTruck, "I_Truck_02_fuel_F", "I_Truck_02_medical_F", vehNATORepairTruck, "I_APC_tracked_03_cannon_F"];
vehNATOAir = vehNATOTransportHelis + vehNATOAttackHelis + [vehNATOPlane,vehNATOPlaneAA] + vehNATOTransportPlanes;

//Militia Vehicles
if (gameMode != 4) then {
	vehFIAArmedCar = "CUP_I_M151_M2_SYND";
	vehFIATruck = "CUP_I_MTVR_RACS";
	vehFIACar = "CUP_I_M151_SYND";
};

//Police Vehicles
vehPoliceCar = "I_P_Offroad_01_police_F";

////////////////////////////////////
//        STATIC WEAPONS         ///
////////////////////////////////////
//Assembled
NATOMG = "I_G_HMG_02_high_F";
staticATOccupants = "I_static_AT_F";
staticAAOccupants = ["I_static_AA_F", "CUP_I_ZU23_NAPA"];
NATOMortar = "I_Mortar_01_F";

NATOAARadar = "I_E_Radar_System_01_F";
NATOAACiws = "";
NATOAASam = "I_E_SAM_System_03_F";
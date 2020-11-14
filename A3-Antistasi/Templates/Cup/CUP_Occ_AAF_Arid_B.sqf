////////////////////////////////////
//       NAMES AND FLAGS         ///
////////////////////////////////////
//Name Used for notifications
nameOccupants = "AAF";

//Police Faction
factionGEN = "IND_E_F";
//SF Faction
factionMaleOccupants = "CUP_I_PMC_ION";
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
NATOBodyG = "CUP_I_PMC_Bodyguard_M4";
NATOCrew = "I_crew_F";
NATOUnarmed = "I_G_Survivor_F";
NATOMarksman = ["I_Soldier_M_F","I_Soldier_M_F","I_Soldier_M_F"];
staticCrewOccupants = "I_support_MG_F";
NATOPilot = "I_helipilot_F";

//Militia Units
if (gameMode != 4) then {
	FIARifleman = "CUP_I_RACS_Soldier_wdl";
	FIAMarksman = "CUP_I_RACS_M_wdl";
};

//Police Units
policeOfficer = "I_E_Soldier_MP_F";
policeGrunt = "I_E_Soldier_lite_F";

////////////////////////////////////
//            GROUPS             ///
////////////////////////////////////
//Military Groups
//Teams
groupsNATOSentryT1 = ["I_Soldier_lite_F", "I_soldier_F"];
groupsNATOSentryT2 = ["I_Soldier_GL_F","I_soldier_F"];
groupsNATOSentryT3 = ["I_Soldier_GL_F","I_Soldier_M_F"];
groupsNATOSpecOpSmall = [
		["CUP_I_PMC_Bodyguard_M4", "CUP_I_PMC_Soldier_MG"],
		["CUP_I_PMC_Soldier_GL_M16A2", "CUP_I_PMC_Soldier_M4A3"],
		["CUP_I_PMC_Bodyguard_M4", "CUP_I_PMC_Bodyguard_AA12"]
];

groupsNATOSniper = ["I_ghillie_ard_F","I_Spotter_F"];
//Fireteams
groupsNATOAAT1 = ["I_Soldier_TL_F", "I_soldier_F", "I_Soldier_AA_F", "I_Soldier_AAA_F"];
groupsNATOAAT2 = ["I_Soldier_TL_F", "I_Soldier_GL_F", "I_Soldier_AA_F", "I_Soldier_AAA_F"];
groupsNATOAAT3 = ["I_Soldier_TL_F", "I_Soldier_AA_F", "I_Soldier_AA_F", "I_Soldier_AAA_F"];

groupsNATOATT1 = ["I_Soldier_TL_F", "I_soldier_F", "I_Soldier_LAT2_F", "I_Soldier_LAT2_F"];
groupsNATOATT2 = ["I_Soldier_TL_F", "I_Soldier_LAT2_F", "I_Soldier_LAT_F", "I_Soldier_A_F"];
groupsNATOATT3 = ["I_Soldier_TL_F", "I_Soldier_LAT2_F", "I_Soldier_AT_F", "I_Soldier_AAT_F"];

groupsNATOFTT1 = ["I_Soldier_TL_F", "I_soldier_F", "I_Soldier_AR_F", "I_Soldier_LAT2_F"];
groupsNATOFTT2 = ["I_Soldier_TL_F", "I_Soldier_GL_F", "I_Soldier_AR_F", "I_Soldier_LAT2_F"];
groupsNATOFTT3 = ["I_Soldier_TL_F", "I_Soldier_GL_F", "I_Soldier_AR_F", "I_Soldier_LAT_F"];
groupsNATOSpecOpMid = [
	["CUP_I_PMC_Soldier_TL", "CUP_I_PMC_Contractor1", "CUP_I_PMC_Soldier_MG", "CUP_I_PMC_Soldier_AT"],
	["CUP_I_PMC_Soldier_TL", "CUP_I_PMC_Soldier_GL_M16A2", "CUP_I_PMC_Soldier_MG_PKM", "CUP_I_PMC_Soldier_AT"],
	["CUP_I_PMC_Soldier_TL", "CUP_I_PMC_Soldier_GL_M16A2", "CUP_I_PMC_Sniper", "CUP_I_PMC_Soldier_AT"],
	["CUP_I_PMC_Soldier_TL", "CUP_I_PMC_Soldier_GL_M16A2", "CUP_I_PMC_Soldier_AA", "CUP_I_PMC_Soldier_AT"]
];


//Squads
NATOSquadT1 = ["I_Soldier_SL_F", "I_soldier_F", "I_Soldier_LAT2_F", "I_soldier_F", "I_Soldier_M_F", "I_Soldier_AR_F", "I_soldier_F", "I_medic_F"];
NATOSquadT2 = ["I_Soldier_SL_F", "I_Soldier_TL_F", "I_Soldier_LAT2_F", "I_Soldier_GL_F", "I_Soldier_M_F", "I_Soldier_AR_F", "I_soldier_F", "I_medic_F"];
NATOSquadT3 = ["I_Soldier_SL_F", "I_Soldier_GL_F", "I_Soldier_LAT_F", "I_Soldier_GL_F", "I_Soldier_M_F", "I_Soldier_AR_F", "I_Soldier_A_F", "I_medic_F"];

NATOSpecOp = ["CUP_I_PMC_Soldier_TL", "CUP_I_PMC_Soldier", "CUP_I_PMC_Soldier_AT", "CUP_I_PMC_Soldier_GL", "CUP_I_PMC_Bodyguard_AA12", "CUP_I_PMC_Soldier_MG", "CUP_I_PMC_Soldier_AT", "CUP_I_PMC_Soldier_AA", "CUP_I_PMC_Medic"];



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
vehNATOLightArmed = ["I_MRAP_03_hmg_F", "CUP_I_LR_SF_HMG_AAF", "CUP_I_LR_MG_AAF", "I_LT_01_cannon_F"];
vehNATOLightUnarmed = ["I_MRAP_03_F", "CUP_I_LR_Transport_AAF"];
vehNATOTrucks = ["I_Truck_02_covered_F","I_Truck_02_transport_F"];
vehNATOCargoTrucks = ["I_Truck_02_transport_F"];
vehNATOFlatbedTrucks = ["I_Truck_02_transport_F"];
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
vehNATOTransportPlanes = ["CUP_I_C130J_AAF"];
//Heli
vehNATOPatrolHeli = "I_Heli_light_03_unarmed_F";
vehNATOTransportHelis = ["CUP_I_Mi24_D_Dynamic_AAF", "I_Heli_Transport_02_F","I_Heli_light_03_unarmed_F", "CUP_I_Wildcat_Unarmed_Green_AAF", "CUP_I_Wildcat_Unarmed_Digital_AAF"];
vehNATOAttackHelis = ["CUP_I_AH1Z_Dynamic_AAF", "CUP_I_Wildcat_Digital_AAF", "CUP_I_Wildcat_Green_AAF", "CUP_I_Ka60_GL_Digi_AAF", "CUP_I_Mi24_Mk3_AAF", "CUP_I_Mi24_Mk4_AAF", "CUP_I_Mi24_D_Dynamic_AAF", "I_Heli_light_03_dynamicLoadout_F"];
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
	vehFIAArmedCar = "CUP_I_LR_MG_RACS";
	vehFIATruck = "CUP_I_MTVR_RACS";
	vehFIACar = "CUP_I_LR_Transport_RACS";
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
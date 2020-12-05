////////////////////////////////////
//       NAMES AND FLAGS         ///
////////////////////////////////////
//Name Used for notifications
nameOccupants = "EUROFOR";

//Police Faction
factionGEN = "BLU_GEN_F";
//SF Faction
factionMaleOccupants = "CUP_B_GER";
//Miltia Faction
if (gameMode != 4) then {
    factionFIA = "CUP_B_HIL_Soldier_Res"
};

//Flag Images
NATOFlag = "Flag_Blue_F";
NATOFlagTexture = "\A3\Data_F\Flags\Flag_Blue_CO.paa";
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
	["cup_blufor_EUROFOR_teamLeader_temp"] call A3A_fnc_getLoadout,
	//Medic
	["cup_blufor_EUROFOR_medic_temp"] call A3A_fnc_getLoadout,
	//Autorifleman
	["cup_blufor_EUROFOR_machineGunner_temp"] call A3A_fnc_getLoadout,
	//Marksman
	["cup_blufor_EUROFOR_marksman_temp"] call A3A_fnc_getLoadout,
	//Anti-tank Scout
	["cup_blufor_EUROFOR_AT_temp"] call A3A_fnc_getLoadout,
	//AT2
	["cup_blufor_EUROFOR_AT2_temp"] call A3A_fnc_getLoadout
];

//PVP Player Vehicles
vehNATOPVP = ["CUP_B_Jackal2_L2A1_GB_W", "CUP_B_LR_Special_M2_GB_W", "CUP_B_LR_MG_GB_W", "CUP_B_Dingo_GER_Wdl"];

////////////////////////////////////
//             UNITS             ///
////////////////////////////////////
//Military Units
NATOOfficer = "CUP_B_BAF_Soldier_Officer_DPM";
NATOOfficer2 = "B_G_officer_F";
NATOBodyG = "CUP_B_HIL_Soldier_SF";
NATOCrew = "CUP_B_BAF_Soldier_Crew_DPM";
NATOUnarmed = "CUP_B_BAF_Soldier_Survivor_DPM";
NATOMarksman = ["CUP_B_HIL_M", "CUP_B_BAF_Soldier_Marksman_DPM", "CUP_B_GER_BW_Fleck_Soldier_Marksman"];
staticCrewOccupants = "CUP_B_BAF_Soldier_RiflemanLite_DPM";
NATOPilot = "CUP_B_BAF_Soldier_Helipilot_DPM";

//Militia Units
if (gameMode != 4) then {
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
groupsNATOSentryT1 = ["CUP_B_HIL_Soldier", "CUP_B_HIL_Soldier_Light"];
groupsNATOSentryT2 = ["CUP_B_BAF_Soldier_Grenadier_DPM", "CUP_B_BAF_Soldier_Rifleman_DPM"];
groupsNATOSentryT3 = ["CUP_B_GER_BW_Fleck_Soldier_PZF_AT","CUP_B_GER_BW_Fleck_Soldier"];
groupsNATOSpecOpSmall = [
		["CUP_B_HIL_Scout_SF", "CUP_B_HIL_Soldier_SF"],
		["CUP_B_GER_Fleck_Soldier_GL", "CUP_B_GER_Fleck_Soldier"],
		["CUP_B_GER_Fleck_Operator_EXP", "CUP_B_GER_Fleck_Operator_GL"]
];

groupsNATOSniper = ["CUP_B_GER_Fleck_Soldier_Sniper", "CUP_B_GER_Fleck_Soldier_Scout"];
//Fireteams
groupsNATOAAT1 = ["CUP_B_HIL_Officer", "CUP_B_HIL_Soldier", "CUP_B_HIL_Soldier_AA", "CUP_B_HIL_Soldier_AA"];
groupsNATOAAT2 = ["CUP_B_BAF_Soldier_TeamLeader_DPM", "CUP_B_BAF_Soldier_Rifleman_DPM", "CUP_B_BAF_Soldier_AA_DPM", "CUP_B_BAF_Soldier_AA_DPM"];
groupsNATOAAT3 = ["CUP_B_GER_BW_Fleck_Soldier_TL", "CUP_B_GER_BW_Fleck_Soldier", "CUP_B_GER_BW_Fleck_Soldier_AA", "CUP_B_GER_BW_Fleck_Soldier_AA"];

groupsNATOATT1 = ["CUP_B_HIL_Officer", "CUP_B_HIL_Soldier_LAT_Res","CUP_B_HIL_Soldier_AAT","CUP_B_HIL_Soldier_MAT"];
groupsNATOATT2 = ["CUP_B_BAF_Soldier_TeamLeader_DPM", "CUP_B_BAF_Soldier_RiflemanLAT_DPM", "CUP_B_BAF_Soldier_RiflemanLAT_DPM", "CUP_B_BAF_Soldier_RiflemanAT_DPM"];
groupsNATOATT3 = ["CUP_B_GER_BW_Fleck_Soldier_TL", "CUP_B_GER_BW_Fleck_Soldier_AAT", "CUP_B_GER_BW_Fleck_Soldier_PZF_AT","CUP_B_GER_BW_Fleck_Soldier_AT"];

groupsNATOFTT1 = ["CUP_B_HIL_Officer", "CUP_B_HIL_MMG", "CUP_B_HIL_M", "CUP_B_HIL_Soldier_LAT_Res"];
groupsNATOFTT2 = ["CUP_B_BAF_Soldier_TeamLeader_DPM", "CUP_B_BAF_Soldier_HeavyGunner_DPM", "CUP_B_BAF_Soldier_Marksman_DPM", "CUP_B_BAF_Soldier_RiflemanLAT_DPM"];
groupsNATOFTT3 = ["CUP_B_GER_BW_Fleck_Soldier_TL", "CUP_B_GER_BW_Fleck_Soldier_MG3", "CUP_B_GER_BW_Fleck_Soldier_Marksman", "CUP_B_GER_BW_Fleck_Soldier_PZF_AT"];
groupsNATOSpecOpMid = [
	["CUP_B_GER_Fleck_Soldier_TL","CUP_B_GER_Fleck_Soldier","CUP_B_GER_Fleck_Soldier_MG","CUP_B_GER_Fleck_Soldier_AT"],
	["CUP_B_GER_Fleck_Operator_TL", "CUP_B_GER_Fleck_Operator", "CUP_B_GER_Fleck_Operator_GL", "CUP_B_GER_Fleck_Operator_EXP"],
	["CUP_B_HIL_SL_SF","CUP_B_HIL_Soldier_SF","CUP_B_HIL_M_SF","CUP_B_HIL_Soldier_LAT_SF"]
];

//Squads
NATOSquadT1 = ["CUP_B_HIL_Officer","CUP_B_HIL_MMG","CUP_B_HIL_Soldier_LAT","CUP_B_HIL_Soldier_MAT","CUP_B_HIL_Soldier","CUP_B_HIL_M","CUP_B_HIL_AMG","CUP_B_HIL_Medic"];
NATOSquadT2 = ["CUP_B_BAF_Soldier_SquadLeader_DPM","CUP_B_BAF_Soldier_Grenadier_DPM","CUP_B_BAF_Soldier_RiflemanLAT_DPM","CUP_B_BAF_Soldier_RiflemanLAT_DPM","CUP_B_BAF_Soldier_HeavyGunner_DPM","CUP_B_BAF_Soldier_Marksman_DPM","CUP_B_BAF_Soldier_RiflemanAT_DPM","CUP_B_BAF_Soldier_Medic_DPM"];
NATOSquadT3 = ["CUP_B_GER_BW_Fleck_Soldier_TL","CUP_B_GER_BW_Fleck_Soldier_PZF_AT","CUP_B_GER_BW_Fleck_Soldier_MG","CUP_B_GER_BW_Fleck_Soldier_MG3","CUP_B_GER_BW_Fleck_Soldier_Marksman","CUP_B_GER_BW_Fleck_Soldier_AT","CUP_B_GER_BW_Fleck_Soldier_AAT","CUP_B_GER_BW_Fleck_Medic"];

NATOSpecOp = ["CUP_B_GER_Fleck_Soldier_TL","CUP_B_GER_Fleck_Soldier_Scout","CUP_B_GER_Fleck_Soldier_MG","CUP_B_GER_Fleck_Soldier_GL","CUP_B_GER_Fleck_Soldier_Engineer","CUP_B_GER_Fleck_Soldier_AT","CUP_B_GER_Fleck_Soldier_AAT","CUP_B_GER_Fleck_Medic"];

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
vehNATOLightArmed = ["CUP_B_BAF_Coyote_L2A1_W","CUP_B_Jackal2_L2A1_GB_W","CUP_B_LR_Special_M2_GB_W","CUP_B_LR_MG_GB_W","CUP_B_Mastiff_HMG_GB_W","CUP_B_Mastiff_LMG_GB_W","CUP_B_Wolfhound_HMG_GB_W","CUP_B_Wolfhound_LMG_GB_W","CUP_B_Dingo_GER_Wdl"];
vehNATOLightUnarmed = ["CUP_B_LR_Transport_GB_W", "CUP_B_FENNEK_GER_Wdl"];
vehNATOTrucks = ["CUP_B_MTVR_BAF_WOOD"];
vehNATOCargoTrucks = [];
vehNATOFlatbedTrucks = ["B_Truck_01_flatbed_F"];
vehNATOAmmoTruck = "CUP_B_MTVR_Ammo_BAF_WOOD";
vehNATORepairTruck = "CUP_B_MTVR_Repair_BAF_WOOD";
vehNATOLight = vehNATOLightArmed + vehNATOLightUnarmed;
//Armored
vehNATOAPC = ["CUP_B_MCV80_GB_W","CUP_B_MCV80_GB_W_SLAT","CUP_B_FV510_GB_W","CUP_B_FV510_GB_W_SLAT","CUP_B_FV432_Bulldog_GB_W","CUP_B_FV432_Bulldog_GB_W_RWS","CUP_B_Boxer_HMG_GER_WDL"];
vehNATOTanks = ["CUP_B_Leopard2A6_GER", "CUP_B_Challenger2_2CW_BAF", "CUP_B_Challenger2_Woodland_BAF"];
vehNATOAA = "CUP_B_M163_USA";
vehNATOAttack = vehNATOAPC + vehNATOTanks;
//Boats
vehNATOBoat = "B_Boat_Armed_01_minigun_F";
vehNATORBoat = "B_Boat_Transport_01_F";
vehNATOBoats = [vehNATOBoat,vehNATORBoat];
//Planes
vehNATOPlane = "CUP_B_GR9_DYN_GB";
vehNATOPlaneAA = "CUP_B_F35B_BAF";
vehNATOTransportPlanes = ["CUP_B_C130J_GB"];
//Heli
vehNATOPatrolHeli = "CUP_B_AW159_Unarmed_GB";
vehNATOTransportHelis = ["CUP_B_CH47F_GB","CUP_B_MH47E_GB","CUP_B_Merlin_HC3_GB","CUP_B_Merlin_HC3_Armed_GB","CUP_B_Merlin_HC3A_GB","CUP_B_Merlin_HC3A_Armed_GB","CUP_B_Merlin_HC4_GB",vehNATOPatrolHeli];
vehNATOAttackHelis = ["CUP_B_AW159_RN_Blackcat","CUP_B_AH1_DL_BAF","CUP_B_AW159_GB","CUP_B_AW159_RN_Grey"];
//UAV
vehNATOUAV = "B_UAV_02_F";
vehNATOUAVSmall = "B_UAV_01_F";
//Artillery
vehNATOMRLS = "CUP_B_M270_HE_BAF_WOOD";
vehNATOMRLSMags = "CUP_12Rnd_MLRS_HE";
//Combined Arrays
vehNATONormal = vehNATOLight + vehNATOTrucks + [vehNATOAmmoTruck, "CUP_B_MTVR_Refuel_BAF_WOOD", vehNATORepairTruck];
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
NATOMG = "CUP_B_L111A1_BAF_WDL";
staticATOccupants = "CUP_B_TOW2_TriPod_US";
staticAAOccupants = ["CUP_B_CUP_Stinger_AA_pod_US"];
NATOMortar = "CUP_B_L16A2_BAF_WDL";

NATOAARadar = "B_Radar_System_01_F";
NATOAACiws = "B_AAA_System_01_F";
NATOAASam = "B_SAM_System_03_F";
////////////////////////////////////
//       NAMES AND FLAGS         ///
////////////////////////////////////
//Name Used for notifications
nameOccupants = "AAF";

//Police Faction
factionGEN = "Police_IND_P_F";
//SF Faction
factionMaleOccupants = "Atlas_IND_I_F";
//Miltia Faction
if (gameMode != 4) then {factionFIA = "IND_C_F"};

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
vehNATOPVP = ["I_MRAP_03_F","I_MRAP_03_hmg_F"];

////////////////////////////////////
//             UNITS             ///
////////////////////////////////////
//Military Units
NATOOfficer = "I_officer_F";
NATOOfficer2 = "I_G_officer_F";
NATOBodyG = "I_Soldier_SL_F";
NATOCrew = "I_crew_F";
NATOUnarmed = "I_G_Survivor_F";
NATOMarksman = ["I_Soldier_M_F","I_Soldier_M_F","I_Soldier_M_F"];
staticCrewOccupants = "I_support_MG_F";
NATOPilot = "I_helipilot_F";

//Militia Units
if (gameMode != 4) then
	{
	FIARifleman = "I_C_Soldier_Para_7_F";
	FIAMarksman = "I_C_Soldier_Para_2_F";
	};

//Police Units
policeOfficer = "I_P_PoliceOfficer_Rifle_F";
policeGrunt = "I_P_PoliceOfficer_F";

////////////////////////////////////
//            GROUPS             ///
////////////////////////////////////
//Military Groups
//Teams
groupsNATOSentryT1 = ["I_Soldier_GL_F","I_soldier_F"];
groupsNATOSentryT2 = ["I_Soldier_GL_F","I_soldier_F"];
groupsNATOSentryT3 = ["I_Soldier_GL_F","I_soldier_F"];
groupsNATOSpecOpSmall = [
		["I_I_recon_F","I_I_recon_M_F"],
		["I_I_recon_GL_F","I_I_recon_JTAC_F"]
];

groupsNATOSniper = ["I_Sniper_F","I_Spotter_F"];
//Fireteams
groupsNATOAAT1 = ["I_Soldier_TL_F","I_Soldier_AA_F","I_Soldier_AA_F","I_Soldier_AAA_F"];
groupsNATOAAT2 = ["I_Soldier_TL_F","I_Soldier_AA_F","I_Soldier_AA_F","I_Soldier_AAA_F"];
groupsNATOAAT3 = ["I_Soldier_TL_F","I_Soldier_AA_F","I_Soldier_AA_F","I_Soldier_AAA_F"];

groupsNATOATT1 = ["I_Soldier_TL_F","I_Soldier_AT_F","I_Soldier_AT_F","I_Soldier_AAT_F"];
groupsNATOATT2 = ["I_Soldier_TL_F","I_Soldier_AT_F","I_Soldier_AT_F","I_Soldier_AAT_F"];
groupsNATOATT3 = ["I_Soldier_TL_F","I_Soldier_AT_F","I_Soldier_AT_F","I_Soldier_AAT_F"];

groupsNATOFTT1 = ["I_Soldier_TL_F","I_Soldier_GL_F","I_Soldier_AR_F","I_Soldier_LAT_F"];
groupsNATOFTT2 = ["I_Soldier_TL_F","I_Soldier_GL_F","I_Soldier_AR_F","I_Soldier_LAT_F"];
groupsNATOFTT3 = ["I_Soldier_TL_F","I_Soldier_GL_F","I_Soldier_AR_F","I_Soldier_LAT_F"];
groupsNATOSpecOpMid = [
	["I_I_recon_TL_F","I_I_recon_F","I_I_recon_AR_F","I_I_recon_LAT_F"],
	["I_I_recon_TL_F","I_I_recon_GL_F","I_I_recon_AR_F","I_I_recon_LAT_F"]
];


//Squads
NATOSquadT1 = ["I_Soldier_SL_F", "I_soldier_F","I_Soldier_LAT_F","I_Soldier_GL_F","I_Soldier_M_F","I_Soldier_AR_F","I_Soldier_A_F","I_medic_F"];
NATOSquadT2 = ["I_Soldier_SL_F", "I_soldier_F","I_Soldier_LAT_F","I_Soldier_GL_F","I_Soldier_M_F","I_Soldier_AR_F","I_Soldier_A_F","I_medic_F"];
NATOSquadT3 = ["I_Soldier_SL_F", "I_soldier_F","I_Soldier_LAT_F","I_Soldier_GL_F","I_Soldier_M_F","I_Soldier_AR_F","I_Soldier_A_F","I_medic_F"];

NATOSpecOp = ["I_I_recon_TL_F", "I_I_recon_F", "I_I_recon_LAT_F", "I_I_recon_GL_F", "I_I_recon_TL_F", "I_I_recon_AR_F", "I_I_recon_JTAC_F", "I_I_recon_medic_F"];

//Militia Groups
if (gameMode != 4) then
	{
	//Teams
	groupsFIASmall = [
		["I_C_Soldier_Para_6_F",FIARifleman],
		[FIAMarksman,FIARifleman],
		[FIAMarksman,FIAMarksman]
	];
	//Fireteams
	groupsFIAMid = [
		["I_C_Soldier_Para_2_F","I_C_Soldier_Para_6_F","I_C_Soldier_Para_7_F","I_C_Soldier_Para_4_F"],
		["I_C_Soldier_Para_2_F","I_C_Soldier_Para_6_F","I_C_Soldier_Para_7_F","I_C_Soldier_Para_5_F"]
	];
	//Squads
	FIASquad = ["I_C_Soldier_Para_2_F","I_C_Soldier_Para_6_F","I_C_Soldier_Para_7_F","I_C_Soldier_Para_4_F","I_C_Soldier_Para_1_F","I_C_Soldier_Para_7_F","I_C_Soldier_Para_8_F","I_C_Soldier_Para_3_F"];
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
vehNATOBike = "I_Quadbike_01_F";
vehNATOLightArmed = ["I_MRAP_03_hmg_F", "I_LT_01_cannon_F"];
vehNATOLightUnarmed = ["I_MRAP_03_F"];
vehNATOTrucks = ["I_Truck_02_covered_F", "I_Truck_02_transport_F"];
vehNATOCargoTrucks = ["I_Truck_02_covered_F"];
vehNATOFlatbedTrucks = ["I_Truck_02_covered_F"];
vehNATOAmmoTruck = "I_Truck_02_ammo_F";
vehNATORepairTruck = "I_Truck_02_box_F";
vehNATOLight = vehNATOLightArmed + vehNATOLightUnarmed;
//Armored
vehNATOAPC = ["I_APC_Wheeled_03_cannon_F", "I_APC_tracked_03_cannon_v2_F"];
vehNATOTanks = ["I_MBT_03_cannon_F"];
vehNATOAA = "I_LT_01_AA_F";
vehNATOAttack = vehNATOAPC + vehNATOTanks + ["I_LT_01_AT_F"];
//Boats
vehNATOBoat = "I_Boat_Armed_01_minigun_F";
vehNATORBoat = "I_Boat_Transport_01_F";
vehNATOBoats = [vehNATOBoat, vehNATORBoat];
//Planes
vehNATOPlane = "I_Plane_Fighter_03_dynamicLoadout_F";
vehNATOPlaneAA = "I_Plane_Fighter_04_F";
vehNATOTransportPlanes = ["I_Plane_Transport_01_infantry_F"];
//Heli
vehNATOPatrolHeli = "I_Heli_Light_01_F";
vehNATOTransportHelis = ["I_Heli_Transport_02_F", "I_Heli_light_03_unarmed_F"];
vehNATOAttackHelis = ["I_Heli_light_03_dynamicLoadout_F", "I_Heli_Light_01_dynamicLoadout_F"];
//UAV
vehNATOUAV = "I_UAV_02_dynamicLoadout_F";
vehNATOUAVSmall = "I_UAV_01_F";
//Artillery
vehNATOMRLS = "I_Truck_02_MRL_F";
vehNATOMRLSMags = "12Rnd_230mm_rockets";
//Combined Arrays
vehNATONormal = vehNATOLight + vehNATOTrucks + [vehNATOAmmoTruck, "I_Truck_02_fuel_F", "I_Truck_02_medical_F", vehNATORepairTruck,"I_APC_tracked_03_cannon_F"];
vehNATOAir = vehNATOTransportHelis + vehNATOAttackHelis + [vehNATOPlane,vehNATOPlaneAA] + vehNATOTransportPlanes;

//Militia Vehicles
if (gameMode != 4) then {
	vehFIAArmedCar = "I_C_Offroad_02_LMG_F";
	vehFIATruck = "I_C_Van_01_transport_F";
	vehFIACar = "I_C_Offroad_02_unarmed_F";
};

//Police Vehicles
vehPoliceCar = "I_E_Offroad_01_comms_F";

////////////////////////////////////
//        STATIC WEAPONS         ///
////////////////////////////////////
//Assembled
NATOMG = "I_G_HMG_02_high_F";
staticATOccupants = "I_static_AT_F";
staticAAOccupants = ["I_static_AA_F"];
NATOMortar = "I_Mortar_01_F";

NATOAARadar = "I_E_Radar_System_01_F";
NATOAACiws = "";
NATOAASam = "I_E_SAM_System_03_F";
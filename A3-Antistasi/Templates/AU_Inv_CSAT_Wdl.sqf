////////////////////////////////////
//       NAMES AND FLAGS         ///
////////////////////////////////////
//Name Used for notifications
nameInvaders = "CSAT";

//SF Faction
factionMaleInvaders = "OPF_V_F";
//Miltia Faction
if (gameMode == 4) then {factionFIA = ""};

//Flag Images
CSATFlag = "Flag_CSAT_F";
CSATFlagTexture = "\A3\Data_F\Flags\Flag_CSAT_CO.paa";
flagCSATmrk = "flag_CSAT";
if (isServer) then {"CSAT_carrier" setMarkerText "CSAT Carrier"};

//Loot Crate
CSATAmmoBox = "O_supplyCrate_F";

////////////////////////////////////
//   PVP LOADOUTS AND VEHICLES   ///
////////////////////////////////////
//PvP Loadouts
CSATPlayerLoadouts = [
	//Team Leader
	["vanilla_opfor_teamLeader_enoch"] call A3A_fnc_getLoadout,
	//Medic
	["vanilla_opfor_medic_enoch"] call A3A_fnc_getLoadout,
	//Autorifleman
	["vanilla_opfor_machineGunner_enoch"] call A3A_fnc_getLoadout,
	//Marksman
	["vanilla_opfor_marksman_enoch"] call A3A_fnc_getLoadout,
	//Anti-tank Scout
	["vanilla_opfor_AT_enoch"] call A3A_fnc_getLoadout,
	//AT2
	["vanilla_opfor_AT2_enoch"] call A3A_fnc_getLoadout
];

//PVP Player Vehicles
vehCSATPVP = ["O_T_LSV_02_armed_F","O_T_LSV_02_unarmed_F","O_T_MRAP_02_gmg_ghex_F","O_T_MRAP_02_ghex_F"];

////////////////////////////////////
//             UNITS             ///
////////////////////////////////////
//Military Units
CSATGrunt = "TAV_O_soldierU_F";
CSATOfficer = "O_T_Officer_F";
CSATBodyG = "O_T_Soldier_F";
CSATCrew = "O_T_Crew_F";
CSATMarksman = "TAV_O_Urban_Sharpshooter_F";
staticCrewInvaders = "TAV_O_soldierU_F";
CSATPilot = "O_T_Helipilot_F";

//Militia Units
if (gameMode == 4) then {
	FIARifleman = "ALSIR_soldier_F";
	FIAMarksman = "ALSIR_soldier_M_F";
};

////////////////////////////////////
//            GROUPS             ///
////////////////////////////////////
//Military Groups
//Teams
groupsCSATSentry = ["TAV_O_SoldierU_GL_F","TAV_O_Urban_RadioOperator_F"];
groupsCSATSniper = ["O_T_ghillie_tna_F","O_T_ghillie_spotter_tna_F"];
groupsCSATsmall = [groupsCSATSentry, ["TAV_O_SoldierU_CQ_F", "TAV_O_soldierU_F"], ["TAV_O_Urban_RadioOperator_F", "TAV_O_soldierU_AR_F"], groupsCSATSniper];
//Fireteams
groupsCSATAA = ["TAV_O_SoldierU_SL_F", "TAV_O_soldierU_AA_F", "TAV_O_soldierU_AA_F", "TAV_O_Urban_RadioOperator_F"];
groupsCSATAT = ["TAV_O_SoldierU_SL_F", "TAV_O_soldierU_AT_F", "TAV_O_soldierU_LAT_F", "TAV_O_Urban_RadioOperator_F"];
groupsCSATmid = [["TAV_O_SoldierU_SL_F", "TAV_O_soldierU_AR_F", "TAV_O_SoldierU_GL_F", "TAV_O_soldierU_LAT_F"], groupsCSATAA, groupsCSATAT];
//Squads
CSATSquad = ["TAV_O_SoldierU_SL_F","TAV_O_soldierU_F","TAV_O_soldierU_LAT_F","TAV_O_soldierU_M_F_2","TAV_O_SoldierU_GL_F","TAV_O_soldierU_AR_F","TAV_O_Urban_RadioOperator_F","TAV_O_soldierU_medic_F"];
CSATSpecOp = ["O_V_Soldier_TL_ghex_F","O_V_Soldier_JTAC_ghex_F","O_V_Soldier_M_ghex_F","O_V_Soldier_Exp_ghex_F","O_V_Soldier_LAT_ghex_F","O_V_Soldier_Medic_ghex_F"];
groupsCSATSquad = [
	CSATSquad,
	["TAV_O_SoldierU_SL_F","TAV_O_Urban_HeavyGunner_F","TAV_O_SoldierU_GL_F","TAV_O_soldierU_F","TAV_O_soldierU_LAT_F","TAV_O_soldierU_AR_F","TAV_O_Urban_RadioOperator_F","TAV_O_soldierU_medic_F"],
	["TAV_O_SoldierU_SL_F","TAV_O_soldierU_LAT_F","TAV_O_SoldierU_GL_F","TAV_O_soldierU_AR_F","TAV_O_Urban_RadioOperator_F","TAV_O_SoldierU_CQ_F","TAV_O_SoldierU_CQ_F","TAV_O_soldierU_medic_F"],
	["TAV_O_SoldierU_SL_F","TAV_O_soldierU_LAT_F","TAV_O_SoldierU_GL_F","TAV_O_soldierU_AR_F","TAV_O_soldierU_AT_F","TAV_O_Urban_RadioOperator_F","TAV_O_soldierU_M_F_2","TAV_O_soldierU_medic_F"],
	["TAV_O_SoldierU_SL_F","TAV_O_soldierU_LAT_F","TAV_O_SoldierU_GL_F","TAV_O_soldierU_AR_F","TAV_O_soldierU_AA_F","TAV_O_Urban_RadioOperator_F","TAV_O_soldierU_M_F_2","TAV_O_soldierU_medic_F"],
	["TAV_O_SoldierU_SL_F","TAV_O_soldierU_LAT_F","TAV_O_SoldierU_GL_F","TAV_O_soldierU_AR_F","TAV_O_soldierU_F","TAV_O_Urban_Sharpshooter_F","O_engineer_F","TAV_O_soldierU_medic_F"]
];


//Militia Groups
if (gameMode == 4) then {
	//Teams
	groupsFIASmall =
		[
		["ALSIR_soldier_GL_F",FIARifleman],
		[FIAMarksman,FIARifleman],
		["ALSIR_soldier_exp_F","ALSIR_soldier_AR_F"]
		];
	//Fireteams
	groupsFIAMid =
		[
		["ALSIR_soldier_TL_F", "ALSIR_soldier_GL_F", "ALSIR_soldier_AR_F", FIAMarksman],
		["ALSIR_soldier_TL_F", "ALSIR_soldier_GL_F","ALSIR_soldier_AR_F","ALSIR_soldier_LAT_F"],
		["ALSIR_soldier_TL_F", "ALSIR_soldier_GL_F","ALSIR_soldier_AR_F","ALSIR_soldier_exp_F"]
		];
	//Squads
	FIASquad = ["ALSIR_soldier_TL_F","ALSIR_soldier_AR_F","ALSIR_soldier_GL_F",FIARifleman,FIARifleman,FIAMarksman,"ALSIR_soldier_LAT_F","ALSIR_medic_F"];
	groupsFIASquad = [FIASquad];
	};

////////////////////////////////////
//           VEHICLES            ///
////////////////////////////////////
//Military Vehicles
//Lite
vehCSATBike = "O_T_Quadbike_01_ghex_F";
vehCSATLightArmed = ["O_T_MRAP_02_gmg_ghex_F","O_T_MRAP_02_hmg_ghex_F","O_T_LSV_02_AT_F","O_T_LSV_02_armed_F"];
vehCSATLightUnarmed = ["O_T_MRAP_02_ghex_F","O_T_LSV_02_unarmed_F"];
vehCSATTrucks = ["O_T_Truck_03_covered_ghex_F","O_T_Truck_03_transport_ghex_F","O_T_Truck_02_F","O_T_Truck_02_transport_F"];
vehCSATAmmoTruck = "O_T_Truck_03_ammo_ghex_F";
vehCSATRepairTruck = "O_T_Truck_03_repair_ghex_F";
vehCSATLight = vehCSATLightArmed + vehCSATLightUnarmed;
//Armored
vehCSATAPC = ["O_T_APC_Tracked_02_cannon_ghex_F", "O_T_APC_Wheeled_02_rcws_v2_ghex_F", "O_T_MBT_02_cannon_ghex_F"];
vehCSATTank = "O_T_MBT_04_command_F";
vehCSATAA = "O_T_APC_Tracked_02_AA_ghex_F";
vehCSATAttack = vehCSATAPC + [vehCSATTank];
//Boats
vehCSATBoat = "O_T_Boat_Armed_01_hmg_F";
vehCSATRBoat = "O_T_Boat_Transport_02_F";
vehCSATBoats = [vehCSATBoat,vehCSATRBoat,"O_T_APC_Wheeled_02_rcws_v2_ghex_F"];
//Planes
vehCSATPlane = "O_T_Plane_CAS_02_dynamicLoadout_ghex_F";
vehCSATPlaneAA = "O_T_Plane_Fighter_02_ghex_F";
vehCSATTransportPlanes = ["O_T_Plane_Transport_01_infantry_ghex_F", "O_T_VTOL_02_infantry_dynamicLoadout_F"];
//Heli
vehCSATPatrolHeli = "O_T_Heli_Light_02_unarmed_F";
vehCSATTransportHelis = ["O_T_Heli_Transport_04_bench_F","O_T_Heli_Transport_04_covered_F",vehCSATPatrolHeli];
vehCSATAttackHelis = ["O_T_VTOL_02_infantry_dynamicLoadout_F", "O_T_Heli_Attack_02_dynamicLoadout_F", "O_T_Heli_Light_02_dynamicLoadout_ghex_F"];
//UAV
vehCSATUAV = "O_UAV_02_F";
vehCSATUAVSmall = "O_UAV_01_F";
//Artillery
vehCSATMRLS = "O_T_Truck_02_MRL_F";
vehCSATMRLSMags = "12Rnd_230mm_rockets";
//Combined Arrays
vehCSATNormal = vehCSATLight + vehCSATTrucks + [vehCSATAmmoTruck, "O_T_Truck_03_fuel_ghex_F", "O_T_Truck_03_medical_ghex_F", vehCSATRepairTruck];
vehCSATAir = vehCSATTransportHelis + vehCSATAttackHelis + [vehCSATPlane,vehCSATPlaneAA] + vehCSATTransportPlanes;

//Militia Vehicles
if (gameMode == 4) then {
	vehFIAArmedCar = "O_T_MRAP_02_hmg_ghex_F";
	vehFIATruck = "O_T_Truck_03_transport_ghex_F";
	vehFIACar = "O_T_MRAP_02_ghex_F";
	};

////////////////////////////////////
//        STATIC WEAPONS         ///
////////////////////////////////////
//Assembled Statics
CSATMG = "I_G_HMG_02_high_F";
staticATInvaders = "O_T_static_AT_F";
staticAAInvaders = "O_static_AA_F";
CSATMortar = "O_Mortar_01_F";

//Static Weapon Bags
MGStaticCSATB = "I_G_HMG_02_high_weapon_F";
ATStaticCSATB = "O_AT_01_weapon_F";
AAStaticCSATB = "O_AA_01_weapon_F";
MortStaticCSATB = "O_Mortar_01_weapon_F";
//Short Support
supportStaticCSATB = "I_G_HMG_02_support_F";
//Tall Support
supportStaticCSATB2 = "I_G_HMG_02_support_high_F";
//Mortar Support
supportStaticCSATB3 = "O_Mortar_01_support_F";
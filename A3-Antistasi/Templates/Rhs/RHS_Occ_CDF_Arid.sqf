////////////////////////////////////
//       NAMES AND FLAGS         ///
////////////////////////////////////
//Name Used for notifications
nameOccupants = "CDF";

//Police Faction
factionGEN = "rhsgref_faction_un";
//SF Faction
factionMaleOccupants = "";
//Miltia Faction
if (gameMode != 4) then {factionFIA = "rhsgref_faction_nationalist"};

//Flag Images
NATOFlag = "Flag_AltisColonial_F";
NATOFlagTexture = "\A3\Data_F\Flags\Flag_AltisColonial_CO.paa";
flagNATOmrk = "rhs_flag_insurgents";
if (isServer) then {"NATO_carrier" setMarkerText "CDF Carrier"};

//Loot Crate
NATOAmmobox = "I_supplyCrate_F";

////////////////////////////////////
//   PVP LOADOUTS AND VEHICLES   ///
////////////////////////////////////
//PvP Loadouts
NATOPlayerLoadouts = [
	//Team Leader
	["rhs_gref_teamLeader"] call A3A_fnc_getLoadout,
	//Medic
	["rhs_gref_medic"] call A3A_fnc_getLoadout,
	//Autorifleman
	["rhs_gref_machineGunner"] call A3A_fnc_getLoadout,
	//Marksman
	["rhs_gref_marksman"] call A3A_fnc_getLoadout,
	//Anti Tank
	["rhs_gref_AT"] call A3A_fnc_getLoadout,
	//Assistant Anti Tank
	["rhs_gref_AAT"] call A3A_fnc_getLoadout
];

//PVP Player Vehicles
vehNATOPVP = ["rhsgref_ins_g_uaz","rhsgref_ins_g_uaz_open","rhsgref_BRDM2UM_ins_g","rhsgref_ins_g_uaz_dshkm_chdkz"];

////////////////////////////////////
//             UNITS             ///
////////////////////////////////////
//Military Units
NATOOfficer = "rhsgref_cdf_reg_general";
NATOOfficer2 = "rhsgref_cdf_ngd_officer";
NATOBodyG = "rhsgref_cdf_ngd_rifleman_lite";
NATOCrew = "rhsgref_cdf_ngd_crew";
NATOUnarmed = "I_G_Survivor_F";
NATOMarksman = ["rhsgref_cdf_reg_marksman","rhsgref_cdf_reg_marksman","rhsgref_cdf_reg_marksman"];
staticCrewOccupants = "rhsgref_cdf_ngd_rifleman_lite";
NATOPilot = "rhsgref_cdf_air_pilot";

//Militia Units
if (gameMode != 4) then
	{
	FIARifleman = "rhsgref_nat_pmil_rifleman_m92";
	FIAMarksman = "rhsgref_nat_pmil_hunter";
	};

//Police Units
policeOfficer = "rhsgref_cdf_un_squadleader";
policeGrunt = "rhsgref_cdf_un_rifleman_lite";

////////////////////////////////////
//            GROUPS             ///
////////////////////////////////////
//Military Groups
//Teams
groupsNATOSentryT1 = ["rhsgref_cdf_reg_grenadier","rhsgref_cdf_reg_rifleman"];
groupsNATOSentryT2 = ["rhsgref_cdf_reg_grenadier","rhsgref_cdf_reg_rifleman"];
groupsNATOSentryT3 = ["rhsgref_cdf_reg_grenadier","rhsgref_cdf_reg_rifleman"];
groupsNATOSpecOpSmall = [
		["rhsgref_nat_pmil_grenadier","rhsgref_nat_pmil_rifleman_m92"],
		["rhsgref_nat_pmil_scout","rhsgref_nat_pmil_rifleman_aksu"],
		["rhsgref_nat_pmil_hunter","rhsgref_nat_pmil_scout"]
];

groupsNATOSniper = ["rhsgref_cdf_reg_marksman","rhsgref_cdf_para_marksman"];
//Fireteams
groupsNATOAAT1 = ["rhsgref_cdf_reg_grenadier","rhsgref_cdf_reg_machinegunner","rhsgref_cdf_reg_specialist_aa","rhsgref_cdf_reg_specialist_aa"];
groupsNATOAAT2 = ["rhsgref_cdf_reg_grenadier","rhsgref_cdf_reg_machinegunner","rhsgref_cdf_reg_specialist_aa","rhsgref_cdf_reg_specialist_aa"];
groupsNATOAAT3 = ["rhsgref_cdf_reg_grenadier","rhsgref_cdf_reg_machinegunner","rhsgref_cdf_reg_specialist_aa","rhsgref_cdf_reg_specialist_aa"];

groupsNATOATT1 = ["rhsgref_cdf_reg_grenadier","rhsgref_cdf_reg_machinegunner","rhsgref_cdf_reg_grenadier_rpg","rhsgref_cdf_reg_grenadier_rpg"];
groupsNATOATT2 = ["rhsgref_cdf_reg_grenadier","rhsgref_cdf_reg_machinegunner","rhsgref_cdf_reg_grenadier_rpg","rhsgref_cdf_reg_grenadier_rpg"];
groupsNATOATT3 = ["rhsgref_cdf_reg_grenadier","rhsgref_cdf_reg_machinegunner","rhsgref_cdf_reg_grenadier_rpg","rhsgref_cdf_reg_grenadier_rpg"];

groupsNATOFTT1 = ["rhsgref_cdf_reg_grenadier","rhsgref_cdf_reg_machinegunner","rhsgref_cdf_reg_rifleman","rhsgref_cdf_reg_rifleman_rpg75"];
groupsNATOFTT2 = ["rhsgref_cdf_reg_grenadier","rhsgref_cdf_reg_machinegunner","rhsgref_cdf_reg_rifleman","rhsgref_cdf_reg_rifleman_rpg75"];
groupsNATOFTT3 = ["rhsgref_cdf_reg_grenadier","rhsgref_cdf_reg_machinegunner","rhsgref_cdf_reg_rifleman","rhsgref_cdf_reg_rifleman_rpg75"];

groupsNATOSpecOpMid = [
	["rhsgref_nat_pmil_rifleman","rhsgref_nat_pmil_machinegunner","rhsgref_nat_pmil_grenadier","rhsgref_nat_pmil_grenadier"],
	["rhsgref_nat_pmil_rifleman","rhsgref_nat_pmil_machinegunner","rhsgref_nat_pmil_hunter","rhsgref_nat_pmil_hunter"],
	["rhsgref_nat_pmil_rifleman","rhsgref_nat_pmil_machinegunner","rhsgref_nat_pmil_grenadier_rpg","rhsgref_nat_pmil_grenadier_rpg"],
	["rhsgref_nat_pmil_rifleman","rhsgref_nat_pmil_machinegunner","rhsgref_nat_pmil_specialist_aa","rhsgref_nat_pmil_specialist_aa"]
];

//Squads
NATOSquadT1 = ["rhsgref_cdf_reg_squadleader","rhsgref_cdf_reg_machinegunner","rhsgref_cdf_reg_machinegunner","rhsgref_cdf_reg_rifleman_rpg75","rhsgref_cdf_reg_rifleman_akm","rhsgref_cdf_reg_rifleman_rpg75","rhsgref_cdf_reg_grenadier","rhsgref_cdf_reg_medic"];
NATOSquadT2 = ["rhsgref_cdf_reg_squadleader","rhsgref_cdf_reg_machinegunner","rhsgref_cdf_reg_machinegunner","rhsgref_cdf_reg_rifleman_rpg75","rhsgref_cdf_reg_rifleman_akm","rhsgref_cdf_reg_rifleman_rpg75","rhsgref_cdf_reg_grenadier","rhsgref_cdf_reg_medic"];
NATOSquadT3 = ["rhsgref_cdf_reg_squadleader","rhsgref_cdf_reg_machinegunner","rhsgref_cdf_reg_machinegunner","rhsgref_cdf_reg_rifleman_rpg75","rhsgref_cdf_reg_rifleman_akm","rhsgref_cdf_reg_rifleman_rpg75","rhsgref_cdf_reg_grenadier","rhsgref_cdf_reg_medic"];

NATOSpecOp = ["rhsgref_cdf_para_squadleader","rhsgref_cdf_para_grenadier_rpg","rhsgref_cdf_para_grenadier","rhsgref_cdf_para_autorifleman","rhsgref_cdf_para_marksman","rhsgref_cdf_para_engineer","rhsgref_cdf_para_specialist_aa","rhsgref_cdf_para_medic"];

//Militia Groups
if (gameMode != 4) then
	{
	//Teams
	groupsFIASmall =
		[
		["rhsgref_nat_pmil_grenadier","rhsgref_nat_pmil_rifleman_m92"],
		["rhsgref_nat_pmil_scout","rhsgref_nat_pmil_rifleman_aksu"],
		["rhsgref_nat_pmil_hunter","rhsgref_nat_pmil_scout"]
		];
	//Fireteams
	groupsFIAMid =
		[
		["rhsgref_nat_pmil_rifleman","rhsgref_nat_pmil_machinegunner","rhsgref_nat_pmil_grenadier","rhsgref_nat_pmil_grenadier"],
		["rhsgref_nat_pmil_rifleman","rhsgref_nat_pmil_machinegunner","rhsgref_nat_pmil_hunter","rhsgref_nat_pmil_hunter"],
		["rhsgref_nat_pmil_rifleman","rhsgref_nat_pmil_machinegunner","rhsgref_nat_pmil_grenadier_rpg","rhsgref_nat_pmil_grenadier_rpg"],
		["rhsgref_nat_pmil_rifleman","rhsgref_nat_pmil_machinegunner","rhsgref_nat_pmil_specialist_aa","rhsgref_nat_pmil_specialist_aa"]
		];
	//Squads
	FIASquad = ["rhsgref_nat_pmil_rifleman","rhsgref_nat_pmil_machinegunner","rhsgref_nat_pmil_machinegunner","rhsgref_nat_pmil_grenadier","rhsgref_nat_pmil_grenadier","rhsgref_nat_pmil_grenadier_rpg","rhsgref_nat_pmil_hunter","rhsgref_nat_pmil_medic"];
	groupsFIASquad =
		[
		FIASquad,
		["rhsgref_nat_pmil_rifleman","rhsgref_nat_pmil_machinegunner","rhsgref_nat_pmil_machinegunner","rhsgref_nat_pmil_saboteur","rhsgref_nat_pmil_grenadier","rhsgref_nat_pmil_grenadier_rpg","rhsgref_nat_pmil_grenadier_rpg","rhsgref_nat_pmil_medic"]
		];
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
vehNATOLightArmed = ["rhsgref_cdf_reg_uaz_ags","rhsgref_cdf_reg_uaz_dshkm","rhsgref_cdf_reg_uaz_spg9","rhsgref_BRDM2_HQ"];
vehNATOLightUnarmed = ["rhsgref_cdf_reg_uaz","rhsgref_cdf_reg_uaz_open","rhsgref_BRDM2UM"];
vehNATOTrucks = ["rhsgref_cdf_gaz66","rhsgref_cdf_ural","rhsgref_cdf_ural_open","rhsgref_cdf_gaz66o","rhsgref_cdf_zil131","rhsgref_cdf_zil131_open"];
vehNATOCargoTrucks = [];
vehNATOFlatbedTrucks = [];
vehNATOAmmoTruck = "rhsgref_cdf_gaz66_ammo";
vehNATORepairTruck = "rhsgref_cdf_gaz66_repair";
vehNATOLight = vehNATOLightArmed + vehNATOLightUnarmed;
//Armored
vehNATOAPC = ["rhsgref_cdf_btr60","rhsgref_cdf_btr70","rhsgref_BRDM2","rhsgref_cdf_bmp2k","rhsgref_cdf_bmp2e","rhsgref_cdf_bmd2","rhsgref_cdf_bmd1k","rhsgref_cdf_bmp1"];
vehNATOTanks = ["rhsgref_cdf_t72ba_tv", "rhsgref_cdf_t72bb_tv", "rhsgref_cdf_t80b_tv", "rhsgref_cdf_t80bv_tv"];
vehNATOAA = "rhsgref_cdf_zsu234";
vehNATOAttack = vehNATOAPC + vehNATOTanks;
//Boats
vehNATOBoat = "I_Boat_Armed_01_minigun_F";
vehNATORBoat = "I_Boat_Transport_01_F";
vehNATOBoats = [vehNATOBoat,vehNATORBoat];
//Planes
vehNATOPlane = "rhs_l159_CDF";
vehNATOPlaneAA = "rhsgref_cdf_mig29s";
vehNATOTransportPlanes = [];
//Heli
vehNATOPatrolHeli = "rhsgref_cdf_reg_Mi8amt";
vehNATOTransportHelis = ["rhsgref_cdf_reg_Mi8amt"];
vehNATOAttackHelis = ["rhsgref_cdf_Mi24D","rhsgref_cdf_Mi35","rhsgref_cdf_reg_Mi17Sh","rhsgref_mi24g_CAS"];
//UAV
vehNATOUAV = "I_UAV_02_dynamicLoadout_F";
vehNATOUAVSmall = "I_UAV_01_F";
//Artillery
vehNATOMRLS = "rhsgref_cdf_reg_BM21";
vehNATOMRLSMags = "rhs_mag_9m28f_1";
//Combined Arrays
vehNATONormal = vehNATOLight + vehNATOTrucks + [vehNATOAmmoTruck, "rhsgref_BRDM2_ATGM", vehNATORepairTruck];
vehNATOAir = vehNATOTransportHelis + vehNATOAttackHelis + [vehNATOPlane,vehNATOPlaneAA] + vehNATOTransportPlanes;

//Militia Vehicles
if (gameMode != 4) then
	{
	vehFIAArmedCar = "rhsgref_nat_uaz_dshkm";
	vehFIATruck = "rhsgref_nat_van";
	vehFIACar = "rhsgref_nat_uaz";
	};

//Police Vehicles
vehPoliceCar = "rhsgref_un_uaz";

////////////////////////////////////
//        STATIC WEAPONS         ///
////////////////////////////////////
//Assembled Statics
NATOMG = "rhsgref_cdf_DSHKM";
staticATOccupants = "rhsgref_cdf_SPG9M";
staticAAOccupants = ["rhsgref_cdf_Igla_AA_pod", "RHSgref_cdf_ZU23"];
NATOMortar = "rhsgref_cdf_reg_M252";

NATOAARadar = "I_E_Radar_System_01_F";
NATOAACiws = "";
NATOAASam = "I_E_SAM_System_03_F";
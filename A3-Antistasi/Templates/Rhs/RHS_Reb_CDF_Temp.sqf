////////////////////////////////////
//       NAMES AND FLAGS         ///
////////////////////////////////////
nameTeamPlayer = "Rebels";
SDKFlag = "Flag_FIA_F";
SDKFlagTexture = "\A3\Data_F\Flags\Flag_FIA_CO.paa";
typePetros = "rhsgref_cdf_b_reg_general";

////////////////////////////////////
//             UNITS             ///
////////////////////////////////////
//First Entry is Guerilla, Second Entry is Para/Military
staticCrewTeamPlayer = "B_G_Soldier_unarmed_F";
SDKUnarmed = "B_G_Survivor_F";
SDKSniper = ["rhsgref_cdf_b_reg_marksman","rhsgref_hidf_marksman"];
SDKATman = ["rhsgref_cdf_b_ngd_grenadier_rpg","rhsgref_cdf_b_reg_grenadier_rpg"];
SDKMedic = ["rhsgref_cdf_b_ngd_medic","rhsgref_cdf_b_para_medic"];
SDKMG = ["rhsgref_cdf_b_ngd_machinegunner","rhsgref_cdf_b_reg_machinegunner"];
SDKExp = ["rhsgref_cdf_b_ngd_engineer","rhsgref_cdf_b_reg_engineer"];
SDKGL = ["rhsgref_cdf_b_ngd_grenadier","rhsgref_cdf_b_reg_grenadier"];
SDKMil = ["rhsgref_cdf_b_ngd_rifleman_lite","rhsgref_cdf_b_para_rifleman_lite"];
SDKSL = ["rhsgref_cdf_b_ngd_squadleader","rhsgref_cdf_b_reg_squadleader"];
SDKEng = ["rhsgref_cdf_b_ngd_engineer","rhsgref_cdf_b_reg_engineer"];

////////////////////////////////////
//            GROUPS             ///
////////////////////////////////////
groupsSDKmid = [SDKSL,SDKGL,SDKMG,SDKMil];
groupsSDKAT = [SDKSL,SDKMG,SDKATman,SDKATman,SDKATman];
groupsSDKSquad = [SDKSL,SDKGL,SDKMil,SDKMG,SDKMil,SDKATman,SDKMil,SDKMedic];
groupsSDKSquadEng = [SDKSL,SDKGL,SDKMil,SDKMG,SDKExp,SDKATman,SDKEng,SDKMedic];
groupsSDKSquadSupp = [SDKSL,SDKGL,SDKMil,SDKMG,SDKATman,SDKMedic,[staticCrewTeamPlayer,staticCrewTeamPlayer],[staticCrewTeamPlayer,staticCrewTeamPlayer]];
groupsSDKSniper = [SDKSniper,SDKSniper];
groupsSDKSentry = [SDKGL,SDKMil];

//Rebel Unit Tiers (for costs)
sdkTier1 = SDKMil + [staticCrewTeamPlayer] + SDKMG + SDKGL + SDKATman;
sdkTier2 = SDKMedic + SDKExp + SDKEng;
sdkTier3 = SDKSL + SDKSniper;
soldiersSDK = sdkTier1 + sdkTier2 + sdkTier3;

////////////////////////////////////
//           VEHICLES            ///
////////////////////////////////////
//Military Vehicles
vehSDKBike = "B_G_Quadbike_01_F";
vehSDKLightArmed = "rhsgref_cdf_b_reg_uaz_dshkm";
vehSDKAT = "rhsgref_cdf_b_reg_uaz_spg9";
vehSDKLightUnarmed = "rhsgref_cdf_b_reg_uaz_open";
vehSDKTruck = "rhsgref_cdf_b_ural_open";
vehSDKPlane = "RHS_AN2_B";
vehSDKBoat = "B_G_Boat_Transport_01_F";
vehSDKRepair = "rhsgref_cdf_b_ural_repair";

//Civilian Vehicles
civCar = "C_Offroad_01_F";
civTruck = "RHS_Ural_Open_Civ_03";
civHeli = "RHS_Mi8amt_civilian";
civBoat = "C_Boat_Transport_02_F";
civLooter = "C_Truck_02_covered_F";

////////////////////////////////////
//        STATIC WEAPONS         ///
////////////////////////////////////
//Assembled Static Weapons
SDKMGStatic = "rhsgref_cdf_b_DSHKM";
staticATteamPlayer = "rhsgref_cdf_b_SPG9";
staticAAteamPlayer = "rhsgref_cdf_b_ZU23";
SDKMortar = "rhsgref_cdf_b_reg_M252";
SDKMortarHEMag = "rhs_12Rnd_m821_HE";
SDKMortarSmokeMag = "8Rnd_82mm_Mo_Smoke_white";

//Static Weapon Bags
MGStaticSDKB = "RHS_DShkM_Gun_Bag";
ATStaticSDKB = "RHS_SPG9_Gun_Bag";
AAStaticSDKB = "no_exists";
MortStaticSDKB = "rhs_M252_Gun_Bag";
//Short Support
supportStaticSDKB = "RHS_SPG9_Tripod_Bag";
//Tall Support
supportStaticsSDKB2 = "RHS_DShkM_TripodHigh_Bag";
//Mortar Support
supportStaticsSDKB3 = "rhs_M252_Bipod_Bag";

////////////////////////////////////
//             ITEMS             ///
////////////////////////////////////
//Mines
ATMineMag = "rhs_mine_M19_mag";
APERSMineMag = "rhs_mine_M7A2_mag";

//Breaching explosives
//Breaching APCs needs one demo charge
breachingExplosivesAPC = [["rhs_ec200_mag", 1], ["rhs_ec200_sand_mag", 1], ["rhsusf_m112_mag", 1]];
//Breaching tanks needs one satchel charge or two demo charges
breachingExplosivesTank = [["rhs_ec400_mag", 1], ["rhs_ec400_sand_mag", 1], ["rhs_ec200_mag", 2], ["rhs_ec200_sand_mag", 2], ["rhsusf_m112x4_mag", 1], ["rhs_charge_M2tet_x2_mag", 1]];

//Starting Unlocks
initialRebelEquipment append ["rhs_weap_type94_new","rhs_weap_tt33","rhs_weap_Izh18","rhs_weap_kar98k","rhs_weap_m3a1", "rhs_weap_m38", "rhs_weap_m1garand_sa43"];
initialRebelEquipment append ["rhs_weap_panzerfaust60"];
initialRebelEquipment append ["rhsgref_30rnd_1143x23_M1911B_SMG", "rhsgref_30rnd_1143x23_M1T_SMG", "rhsgref_5Rnd_762x54_m38", "rhsgref_8Rnd_762x63_Tracer_M1T_M1rifle", "rhsgref_8Rnd_762x63_M2B_M1rifle"];
initialRebelEquipment append ["rhs_mag_6x8mm_mhp","rhs_mag_762x25_8","rhsgref_1Rnd_00Buck","rhsgref_1Rnd_Slug","rhsgref_5Rnd_792x57_kar98k","rhs_grenade_mkii_mag","rhs_grenade_mki_mag"];
initialRebelEquipment append ["rhsgref_mag_rkg3em", "rhs_grenade_nbhgr39_mag", "rhs_grenade_sthgr43_mag"];
initialRebelEquipment append ["B_FieldPack_oli","B_FieldPack_blk","B_FieldPack_ocamo","B_FieldPack_oucamo","B_FieldPack_cbr"];
initialRebelEquipment append ["rhsgref_chestrig","rhsgref_chicom","rhs_vydra_3m","rhs_vest_pistol_holster","rhs_vest_commander","rhs_6sh46","rhsgref_alice_webbing"];
initialRebelEquipment append ["rhs_acc_2dpZenit","Binocular"];
//TFAR Unlocks
if (hasTFAR) then {initialRebelEquipment append ["tf_microdagr","tf_rf7800str"]};
if (hasTFAR && startWithLongRangeRadio) then {initialRebelEquipment pushBack "tf_rt1523g_big_rhs"};

//black market stuff
shop_UAV = ["B_UAV_01_F"];
shop_AA = ["rhsgref_cdf_b_gaz66_zu23", "rhsgref_cdf_b_zsu234", "I_LT_01_AA_F"];
shop_MRAP = ["rhsgref_BRDM2UM_b", "rhsgref_BRDM2_b", "rhsgref_BRDM2_ATGM_b"];
shop_wheel_apc = ["rhsusf_m113_usarmy_M240", "rhsgref_cdf_b_btr60", "rhsgref_cdf_b_btr70"];
shop_track_apc = ["rhsgref_cdf_b_bmd1", "rhsgref_cdf_b_bmd2", "rhsgref_cdf_b_bmp2d"];
shop_heli = ["B_Heli_Light_01_dynamicLoadout_F", "RHS_UH1Y_d", "rhsgref_cdf_b_reg_Mi17Sh"];
shop_tank = ["rhsgref_cdf_b_t80b_tv", "rhsgref_cdf_b_t80bv_tv", "rhsusf_m1a1hc_wd"];
shop_plane = ["rhs_l39_cdf_b_cdf", "rhs_l159_cdf_b_CDF", "rhsgref_cdf_b_su25"];

//military building models (common for all sides)
smallBunker = "Land_BagBunker_01_small_green_F";
sandbag = "Land_BagFence_01_long_green_F";
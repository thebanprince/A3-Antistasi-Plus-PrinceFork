////////////////////////////////////
//       NAMES AND FLAGS         ///
////////////////////////////////////
nameTeamPlayer = "NAPA";
SDKFlag = "Flag_Syndikat_F";
SDKFlagTexture = "\A3\Data_F\Flags\Flag_Altis_CO.paa";
typePetros = "rhsgref_nat_warlord";

////////////////////////////////////
//             UNITS             ///
////////////////////////////////////
//First Entry is Guerilla, Second Entry is Para/Military
staticCrewTeamPlayer = "rhsgref_nat_crew";
SDKUnarmed = "I_G_Survivor_F";
SDKSniper = ["rhsgref_nat_hunter","rhsgref_nat_pmil_hunter"];
SDKATman = ["rhsgref_nat_grenadier_rpg","rhsgref_nat_pmil_grenadier_rpg"];
SDKMedic = ["rhsgref_nat_medic","rhsgref_nat_pmil_medic"];
SDKMG = ["rhsgref_nat_machinegunner_mg42","rhsgref_nat_pmil_machinegunner"];
SDKExp = ["rhsgref_nat_saboteur","rhsgref_nat_pmil_saboteur"];
SDKGL = ["rhsgref_nat_grenadier","rhsgref_nat_pmil_grenadier"];
SDKMil = ["rhsgref_nat_rifleman_mp44","rhsgref_nat_pmil_rifleman"];
SDKSL = ["rhsgref_nat_commander","rhsgref_nat_pmil_commander"];
SDKEng = ["rhsgref_cdf_ngd_engineer","rhsgref_cdf_reg_engineer"];

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
vehSDKBike = "I_G_Quadbike_01_F";
vehSDKLightArmed = "rhsgref_nat_uaz_dshkm";
vehSDKAT = "rhsgref_nat_uaz_spg9";
vehSDKLightUnarmed = "rhsgref_cdf_reg_uaz_open";
vehSDKTruck = "rhsgref_cdf_zil131";
vehSDKPlane = "RHS_AN2";
vehSDKBoat = "I_C_Boat_Transport_01_F";
vehSDKRepair = "rhsgref_cdf_gaz66_repair";

//Civilian Vehicles
civCar = "C_Offroad_01_F";
civTruck = "RHS_Ural_Open_Civ_03";
civHeli = "RHS_Mi8t_civilian";
civBoat = "C_Boat_Transport_02_F";
civLooter = "C_Truck_02_covered_F";

////////////////////////////////////
//        STATIC WEAPONS         ///
////////////////////////////////////
//Assembled Static Weapons
SDKMGStatic = "rhsgref_nat_NSV_TriPod";
staticATteamPlayer = "rhsgref_nat_SPG9";
staticAAteamPlayer = "rhsgref_nat_ZU23";
SDKMortar = "rhsgref_nat_2b14";
SDKMortarHEMag = "rhs_mag_3vo18_10";
SDKMortarSmokeMag = "rhs_mag_d832du_10";

//Static Weapon Bags
MGStaticSDKB = "RHS_DShkM_Gun_Bag";
ATStaticSDKB = "RHS_SPG9_Gun_Bag";
AAStaticSDKB = "I_AA_01_weapon_F";
MortStaticSDKB = "RHS_Podnos_Gun_Bag";
//Short Support
supportStaticSDKB = "RHS_SPG9_Tripod_Bag";
//Tall Support
supportStaticsSDKB2 = "RHS_DShkM_TripodHigh_Bag";
//Mortar Support
supportStaticsSDKB3 = "RHS_Podnos_Bipod_Bag";

////////////////////////////////////
//             ITEMS             ///
////////////////////////////////////
//Mines
ATMineMag = "rhs_mag_mine_ptm1";
APERSMineMag = "rhs_mine_ozm72_b_mag";

//Breaching explosives
//Breaching APCs needs one demo charge
breachingExplosivesAPC = [["rhs_ec200_mag", 1], ["rhs_ec200_sand_mag", 1], ["rhsusf_m112_mag", 1]];
//Breaching tanks needs one satchel charge or two demo charges
breachingExplosivesTank = [["rhs_ec400_mag", 1], ["rhs_ec400_sand_mag", 1], ["rhs_ec200_mag", 2], ["rhs_ec200_sand_mag", 2], ["rhsusf_m112x4_mag", 1], ["rhs_charge_M2tet_x2_mag", 1]];

//Starting Unlocks
initialRebelEquipment append ["rhs_weap_type94_new","rhs_weap_tt33","rhs_weap_Izh18","rhs_weap_kar98k","rhs_weap_m3a1", "rhs_weap_m38", "rhs_weap_m1garand_sa43", "sgun_HunterShotgun_01_F", "sgun_HunterShotgun_01_sawedoff_F"];
initialRebelEquipment append ["rhs_weap_panzerfaust60"];

initialRebelEquipment append ["2Rnd_12Gauge_Pellets", "2Rnd_12Gauge_Slug", "rhsgref_30rnd_1143x23_M1911B_SMG", "rhsgref_30rnd_1143x23_M1T_SMG", "rhsgref_5Rnd_762x54_m38", "rhsgref_8Rnd_762x63_Tracer_M1T_M1rifle", "rhsgref_8Rnd_762x63_M2B_M1rifle"];
initialRebelEquipment append ["rhs_mag_6x8mm_mhp","rhs_mag_762x25_8","rhsgref_1Rnd_00Buck","rhsgref_1Rnd_Slug","rhsgref_5Rnd_792x57_kar98k","rhs_grenade_mkii_mag","rhs_grenade_mki_mag"];
initialRebelEquipment append ["rhsgref_mag_rkg3em", "rhs_grenade_nbhgr39_mag", "rhs_grenade_sthgr43_mag"];
initialRebelEquipment append ["B_FieldPack_oli","B_FieldPack_blk","B_FieldPack_ocamo","B_FieldPack_oucamo","B_FieldPack_cbr"];
initialRebelEquipment append ["rhsgref_chestrig","rhsgref_chicom","rhs_vest_pistol_holster","rhs_vest_commander","rhs_6sh46"];
initialRebelEquipment append ["rhs_acc_2dpZenit","Binocular"];
//Greenfor uniforms
allRebelUniforms append ["U_IG_Guerilla1_1","U_IG_Guerilla2_1","U_IG_Guerilla2_2","U_IG_Guerilla2_3","U_IG_Guerilla3_1","U_IG_leader","U_IG_Guerrilla_6_1"];
//TFAR Unlocks
if (hasTFAR) then {initialRebelEquipment append ["tf_microdagr","tf_anprc154"]};
if (hasTFAR && startWithLongRangeRadio) then {initialRebelEquipment pushBack "tf_anprc155_coyote"};

//black market stuff
shop_UAV = ["rhs_pchela1t_vvs"];
shop_AA = ["rhsgref_nat_ural_Zu23", "rhsgref_nat_ural_Zu23", "I_LT_01_AA_F"];
shop_MRAP = ["rhsgref_BRDM2UM_ins_g", "rhsgref_BRDM2_ins_g", "rhsgref_BRDM2_ATGM_ins_g"];
shop_wheel_apc = ["rhsgref_ins_g_btr60", "rhsgref_nat_btr70", "rhs_btr80a_vmf"];
shop_track_apc = ["rhsgref_ins_g_bmd1", "rhsgref_ins_g_bmd2", "rhsgref_ins_g_bmp2d"];
shop_heli = ["B_Heli_Light_01_dynamicLoadout_F", "RHS_UH1Y_d", "rhsgref_cdf_reg_Mi17Sh"];
shop_tank = ["rhsgref_ins_g_t72ba", "rhsgref_ins_g_t72bb", "rhsgref_ins_g_t72bc"];
shop_plane = ["rhs_l39_cdf", "rhs_l159_CDF", "rhsgref_cdf_su25"];

//military building models (common for all sides)
smallBunker = "Land_BagBunker_01_small_green_F";
sandbag = "Land_BagFence_01_long_green_F";
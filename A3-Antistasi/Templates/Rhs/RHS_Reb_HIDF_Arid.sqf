////////////////////////////////////
//       NAMES AND FLAGS         ///
////////////////////////////////////
nameTeamPlayer = "Rebels";
SDKFlag = "Flag_FIA_F";
SDKFlagTexture = "\A3\Data_F\Flags\Flag_FIA_CO.paa";
typePetros = "rhsgref_hidf_teamleader";

////////////////////////////////////
//             UNITS             ///
////////////////////////////////////
//First Entry is Guerilla, Second Entry is Para/Military
staticCrewTeamPlayer = "B_G_Soldier_unarmed_F";
SDKUnarmed = "B_G_Survivor_F";
SDKSniper = ["rhsgref_hidf_marksman","rhsgref_hidf_sniper"];
SDKATman = ["rhsgref_hidf_rifleman_m72","rhsgref_hidf_rifleman_m72"];
SDKMedic = ["rhsgref_hidf_medic","rhsgref_hidf_medic"];
SDKMG = ["rhsgref_hidf_autorifleman","rhsgref_hidf_machinegunner"];
SDKExp = ["B_G_Soldier_exp_F","B_G_Soldier_exp_F"];
SDKGL = ["rhsgref_hidf_grenadier","rhsgref_hidf_grenadier_m79"];
SDKMil = ["rhsgref_hidf_rifleman","rhsgref_hidf_rifleman"];
SDKSL = ["rhsgref_hidf_teamleader","rhsgref_hidf_squadleader"];
SDKEng = ["B_G_engineer_F","B_G_engineer_F"];

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
vehSDKLightArmed = "B_G_Offroad_01_armed_F";
vehSDKAT = "B_G_Offroad_01_AT_F";
vehSDKLightUnarmed = "rhsgref_hidf_M998_2dr_fulltop";
vehSDKTruck = "rhsgref_cdf_b_ural_open";
//vehSDKHeli = "I_C_Heli_Light_01_civil_F";
vehSDKPlane = "rhsgred_hidf_cessna_o3a";
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
SDKMGStatic = "rhsgref_hidf_m2_static";
staticATteamPlayer = "rhsgref_cdf_b_SPG9";
staticAAteamPlayer = "rhsgref_cdf_b_ZU23";
SDKMortar = "rhsgref_cdf_b_reg_M252";
SDKMortarHEMag = "rhs_12Rnd_m821_HE";
SDKMortarSmokeMag = "8Rnd_82mm_Mo_Smoke_white";

//Static Weapon Bags
MGStaticSDKB = "RHS_M2_Gun_Bag";
ATStaticSDKB = "RHS_SPG9_Gun_Bag";
AAStaticSDKB = "no_exists";
MortStaticSDKB = "rhs_M252_Gun_Bag";
//Short Support
supportStaticSDKB = "RHS_SPG9_Tripod_Bag";
//Tall Support
supportStaticsSDKB2 = "RHS_M2_Tripod_Bag";
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
initialRebelEquipment append ["rhs_weap_type94_new","rhs_weap_tt33","rhs_weap_Izh18","rhs_weap_kar98k","rhs_weap_m3a1", "rhs_weap_m38", "rhs_weap_m1garand_sa43", "sgun_HunterShotgun_01_F", "sgun_HunterShotgun_01_sawedoff_F"];
initialRebelEquipment append ["rhs_weap_panzerfaust60"];

initialRebelEquipment append ["2Rnd_12Gauge_Pellets", "2Rnd_12Gauge_Slug", "rhsgref_30rnd_1143x23_M1911B_SMG", "rhsgref_30rnd_1143x23_M1T_SMG", "rhsgref_5Rnd_762x54_m38", "rhsgref_8Rnd_762x63_Tracer_M1T_M1rifle", "rhsgref_8Rnd_762x63_M2B_M1rifle"];
initialRebelEquipment append ["rhs_mag_6x8mm_mhp","rhs_mag_762x25_8","rhsgref_1Rnd_00Buck","rhsgref_1Rnd_Slug","rhsgref_5Rnd_792x57_kar98k","rhs_grenade_mkii_mag","rhs_grenade_mki_mag"];
initialRebelEquipment append ["rhsgref_mag_rkg3em", "rhs_grenade_nbhgr39_mag", "rhs_grenade_sthgr43_mag"];
initialRebelEquipment append ["B_FieldPack_oli","B_FieldPack_blk","B_FieldPack_ocamo","B_FieldPack_oucamo","B_FieldPack_cbr"];
initialRebelEquipment append ["rhsgref_chestrig","rhsgref_chicom","rhs_vest_pistol_holster","rhs_vest_commander","rhs_6sh46"];
initialRebelEquipment append ["rhs_acc_2dpZenit","Binocular"];

//TFAR Unlocks
if (hasTFAR) then {initialRebelEquipment append ["tf_microdagr","tf_rf7800str"]};
if (hasTFAR && startWithLongRangeRadio) then {initialRebelEquipment pushBack "tf_rt1523g_big_rhs"};

//black market stuff
shop_UAV = ["rhs_pchela1t_vvs"];
shop_AA = ["rhsgref_nat_ural_Zu23", "rhsgref_nat_ural_Zu23", "I_LT_01_AA_F"];
shop_MRAP = ["rhsgref_BRDM2UM_ins_g", "rhsgref_BRDM2_ins_g", "rhsgref_BRDM2_ATGM_ins_g"];
shop_wheel_apc = ["rhsgref_ins_g_btr60", "rhsgref_nat_btr70", "rhs_btr80a_vmf"];
shop_track_apc = ["rhsgref_hidf_m113a3_m2", "rhsgref_ins_g_bmd2", "rhsgref_ins_g_bmp2d"];
shop_heli = ["B_Heli_Light_01_dynamicLoadout_F", "rhs_uh1h_hidf_gunship", "rhsgref_cdf_reg_Mi17Sh"];
shop_tank = ["rhsgref_ins_g_t72ba", "rhsgref_ins_g_t72bb", "rhsgref_ins_g_t72bc"];
shop_plane = ["RHSGREF_A29B_HIDF", "rhs_l39_cdf", "rhs_l159_CDF"];

//military building models (common for all sides)
smallBunker = "Land_BagBunker_Small_F";
sandbag = "Land_BagFence_Long_F";

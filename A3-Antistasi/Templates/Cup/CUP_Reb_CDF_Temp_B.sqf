////////////////////////////////////
//       NAMES AND FLAGS         ///
////////////////////////////////////
nameTeamPlayer = "Rebels";
SDKFlag = "Flag_Green_F";
SDKFlagTexture = "\A3\Data_F\Flags\Flag_Green_CO.paa";
typePetros = "CUP_B_CDF_Commander_MNT";

////////////////////////////////////
//             UNITS             ///
////////////////////////////////////
//First Entry is Guerilla, Second Entry is Para/Military
staticCrewTeamPlayer = "CUP_B_CDF_Soldier_Light_MNT     ";
SDKUnarmed = "B_G_Survivor_F";
SDKSniper = ["CUP_B_CDF_Soldier_Marksman_MNT", "CUP_B_CZ_Sniper_WDL"];
SDKATman = ["CUP_B_CDF_Soldier_LAT_MNT", "CUP_B_CZ_Soldier_AT_WDL"];
SDKMedic = ["CUP_B_CDF_Medic_MNT", "CUP_B_CZ_Medic_WDL"];
SDKMG = ["CUP_B_CDF_Soldier_AR_MNT", "CUP_B_CZ_Soldier_AR_WDL"];
SDKExp = ["CUP_B_CZ_ExplosiveSpecialist_WDL", "CUP_B_CZ_ExplosiveSpecialist_WDL"];
SDKGL = ["CUP_B_CDF_Soldier_GL_MNT", "CUP_B_CZ_Soldier_805_GL_WDL"];
SDKMil = ["CUP_B_CDF_Soldier_MNT", "CUP_B_CZ_Soldier_Light_WDL"];
SDKSL = ["CUP_B_CDF_Officer_MNT", "CUP_B_CZ_Soldier_SL_WDL"];
SDKEng = ["CUP_B_CDF_Engineer_MNT", "CUP_B_CZ_Engineer_WDL"];

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
vehSDKLightArmed = "CUP_B_UAZ_MG_CDF";
vehSDKAT = "CUP_B_UAZ_SPG9_CDF";
vehSDKLightUnarmed = "CUP_B_UAZ_Unarmed_CDF";
vehSDKTruck = "CUP_B_Kamaz_Open_CDF";
vehSDKPlane = "C_Plane_Civil_01_F";
vehSDKBoat = "B_G_Boat_Transport_01_F";
vehSDKRepair = "CUP_B_Kamaz_Repair_CDF";

//Civilian Vehicles
civCar = "CUP_O_Hilux_unarmed_CR_CIV";
civTruck = "CUP_C_Ural_Civ_03";
civHeli = "CUP_C_Mi17_Civilian_RU";
civBoat = "CUP_C_Fishing_Boat_Chernarus";
civLooter = "CUP_C_V3S_Open_TKC";

////////////////////////////////////
//        STATIC WEAPONS         ///
////////////////////////////////////
//Assembled Static Weapons
SDKMGStatic = "CUP_B_DSHKM_CDF";
staticATteamPlayer = "CUP_B_SPG9_CDF";
staticAAteamPlayer = "CUP_B_ZU23_CDF";
SDKMortar = "CUP_B_2b14_82mm_CDF";
SDKMortarHEMag = "8Rnd_82mm_Mo_shells";
SDKMortarSmokeMag = "8Rnd_82mm_Mo_Smoke_white";

//Static Weapon Bags
MGStaticSDKB = "CUP_B_DShkM_Gun_Bag";
ATStaticSDKB = "CUP_B_SPG9_Gun_Bag";
AAStaticSDKB = "B_AA_01_weapon_F";
MortStaticSDKB = "CUP_B_Podnos_Gun_Bag";
//Short Support
supportStaticSDKB = "CUP_B_SPG9_Tripod_Bag";
//Tall Support
supportStaticsSDKB2 = "CUP_B_DShkM_TripodHigh_Bag";
//Mortar Support
supportStaticsSDKB3 = "CUP_B_Podnos_Bipod_Bag";

////////////////////////////////////
//             ITEMS             ///
////////////////////////////////////
//Mines
ATMineMag = "ATMine_Range_Mag";
APERSMineMag = "APERSMine_Range_Mag";

//Breaching explosives
//Breaching APCs needs one demo charge
breachingExplosivesAPC = [["DemoCharge_Remote_Mag", 1]];
//Breaching tanks needs one satchel charge or two demo charges
breachingExplosivesTank = [["SatchelCharge_Remote_Mag", 1], ["DemoCharge_Remote_Mag", 2]];

//Starting Unlocks
initialRebelEquipment append ["CUP_hgun_SA61","CUP_hgun_TaurusTracker455", "sgun_HunterShotgun_01_F", "sgun_HunterShotgun_01_sawedoff_F"];

initialRebelEquipment append ["CUP_srifle_CZ550_rail", "hgun_Pistol_01_F", "CUP_sgun_CZ584", "CUP_sgun_CZ584_RIS"];
initialRebelEquipment append ["CUP_srifle_Remington700", "CUP_smg_saiga9", "hgun_Pistol_Signal_F"];

initialRebelEquipment append ["CUP_6Rnd_45ACP_M", "10Rnd_9x21_Mag", "CUP_20Rnd_B_765x17_Ball_M", "CUP_6Rnd_45ACP_M"];
initialRebelEquipment append ["CUP_5x_22_LR_17_HMR_M","2Rnd_12Gauge_Pellets", "2Rnd_12Gauge_Slug", "CUP_1Rnd_B_CZ584_74Slug", "CUP_1Rnd_B_CZ584_74Pellets", "CUP_1Rnd_762x51_CZ584"];
initialRebelEquipment append ["CUP_6Rnd_762x51_R700","CUP_10Rnd_9x19_Saiga9", "6Rnd_GreenSignal_F", "6Rnd_RedSignal_F"];
initialRebelEquipment append ["SmokeShell", "MiniGrenade", "Chemlight_green"];

initialRebelEquipment append ["B_Messenger_Gray_F", "B_AssaultPack_blk"];
initialRebelEquipment append ["CUP_V_O_Ins_Carrier_Rig_Com", "CUP_V_B_ALICE", "CUP_V_O_Ins_Carrier_Rig_MG", "CUP_V_O_Ins_Carrier_Rig_Light", "CUP_V_I_Guerilla_Jacket"];
initialRebelEquipment append ["Binocular", "acc_flashlight"];

//TFAR Unlocks
if (hasTFAR) then {initialRebelEquipment append ["tf_microdagr","tf_rf7800str"]};
if (hasTFAR && startWithLongRangeRadio) then {initialRebelEquipment pushBack "tf_rt1523g_big_rhs"};

//black market stuff
shop_UAV = ["I_UAV_01_F"];
shop_AA = ["CUP_I_Ural_ZU23_NAPA", "CUP_I_ZSU23_Afghan_AAF", "CUP_I_M163_AAF"];
shop_MRAP = ["CUP_I_BTR40_MG_TKG", "CUP_I_BRDM2_TK_Gue", "CUP_I_BRDM2_ATGM_TK_Gue"];
shop_wheel_apc = ["CUP_B_BTR60_FIA", "CUP_B_BTR80A_FIA", "CUP_I_LAV25M240_RACS"];
shop_track_apc = ["CUP_B_MTLB_pk_FIA", "CUP_I_BMP1_TK_GUE", "CUP_I_BMP2_NAPA"];
shop_heli = ["CUP_I_Ka60_GL_Blk_ION", "CUP_I_Wildcat_Green_AAF", "I_Heli_light_03_dynamicLoadout_F"];
shop_tank = ["CUP_I_T34_NAPA", "CUP_I_T55_NAPA", "CUP_I_T72_NAPA"];
shop_plane = ["CUP_I_L39_AAF", "I_Plane_Fighter_03_dynamicLoadout_F", "CUP_I_AV8B_DYN_AAF"];

//technical menu content, CUP exclusive
techicalAa = "CUP_B_Hilux_zu23_BLU_G_F";
technicalBtr = "CUP_B_Hilux_btr60_BLU_G_F";
technicalNar = "CUP_B_Hilux_podnos_BLU_G_F";
technicalJackal = "CUP_B_Jackal2_L2A1_FIA";
technicalArmoredBtr = "CUP_B_Hilux_armored_BTR60_BLU_G_F";
technicalArmoredAa = "CUP_B_Hilux_armored_zu23_BLU_G_F";
technicalArmoredSpg = "CUP_B_Hilux_armored_SPG9_BLU_G_F";
technicalArmoredMg = "CUP_B_Hilux_armored_DSHKM_BLU_G_F";

//military building models (common for all sides)
smallBunker = "Land_BagBunker_Small_F";
sandbag = "Land_BagFence_Long_F";

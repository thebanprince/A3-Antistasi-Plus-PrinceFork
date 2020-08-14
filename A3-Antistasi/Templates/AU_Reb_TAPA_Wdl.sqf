////////////////////////////////////
//       NAMES AND FLAGS         ///
////////////////////////////////////
nameTeamPlayer = "Borsheviks";
SDKFlag = "Flag_ChDKZ_F";
SDKFlagTexture = "\ca\data\flag_chdkz_co.paa";
typePetros = "I_G_Soldier_TL_F";

////////////////////////////////////
//             UNITS             ///
////////////////////////////////////
//First Entry is Guerilla, Second Entry is Para/Military
staticCrewTeamPlayer = "I_T_Soldier_1_F";
SDKUnarmed = "I_G_Survivor_F";
SDKSniper = ["I_T_Soldier_7_F","I_G_Soldier_M_F","I_G_Sharpshooter_F", "I_G_Sniper_F", "I_I_soldier_M_F", "I_L_Hunter_F", "I_C_Sharpshooter_F"];
SDKATman = ["I_G_Soldier_LAT_F","I_G_Soldier_LAT2_F","I_T_Soldier_5_F", "I_G_medic_F"];
SDKMedic = ["I_C_Soldier_Para_3_F","I_T_Soldier_3_F","I_G_medic_F"];
SDKMG = ["I_G_Soldier_AR_F","I_L_Deserter_AR_F","I_T_Soldier_4_F", "I_C_Soldier_Para_4_F"];
SDKExp = ["I_G_Soldier_exp_F","I_T_Soldier_8_F","I_C_Soldier_Para_8_F"];
SDKGL = ["I_G_Soldier_GL_F","I_T_Soldier_6_F","I_L_Deserter_GL_F", "I_C_Soldier_Para_6_F", "I_C_Soldier_Bandit_6_F"];
SDKMil = ["I_G_Soldier_lite_F","I_G_Soldier_F","I_T_Soldier_1_F", "I_L_Looter_Rifle_F", "I_L_Deserter_Rifle_F", "I_L_Militiaman_Rifle_F", "I_C_Soldier_Para_7_F", "I_C_Soldier_Para_1_F"];
SDKSL = ["I_G_Soldier_TL_F","I_T_Soldier_2_F","I_C_Soldier_Para_2_F"];
SDKEng = ["I_G_engineer_F","I_E_Engineer_F"];

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
vehSDKLightArmed = "I_G_Offroad_01_armed_F";
vehSDKAT = "I_C_Offroad_02_AT_F";
vehSDKLightUnarmed = "I_G_Offroad_01_F";
vehSDKTruck = "I_G_Van_01_transport_F";
//vehSDKHeli = "rhsgref_ins_g_Mi8amt";
vehSDKPlane = "I_C_Plane_Civil_01_F";
vehSDKBoat = "I_C_Boat_Transport_01_F";
vehSDKRepair = "I_G_Offroad_01_repair_F";

//Civilian Vehicles
civCar = "C_Offroad_01_F";
civTruck = "C_Van_01_transport_F";
civHeli = "C_Heli_Transport_02_civil_F";
civBoat = "C_Boat_Transport_02_F";
civLooter = "C_Truck_02_transport_F";

////////////////////////////////////
//        STATIC WEAPONS         ///
////////////////////////////////////
//Assembled Static Weapons
SDKMGStatic = "I_G_HMG_02_high_F";
staticATteamPlayer = "I_static_AT_F";
staticAAteamPlayer = "I_static_AA_F";
SDKMortar = "I_G_Mortar_01_F";
SDKMortarHEMag = "8Rnd_82mm_Mo_shells";
SDKMortarSmokeMag = "8Rnd_82mm_Mo_Smoke_white";

//Static Weapon Bags
MGStaticSDKB = "I_HMG_01_high_weapon_F";
ATStaticSDKB = "I_AT_01_weapon_F";
AAStaticSDKB = "I_AA_01_weapon_F";
MortStaticSDKB = "I_Mortar_01_weapon_F";
//Short Support
supportStaticSDKB = "I_HMG_01_support_F";
//Tall Support
supportStaticsSDKB2 = "I_HMG_01_support_high_F";
//Mortar Support
supportStaticsSDKB3 = "I_Mortar_01_support_F";

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

initialRebelEquipment append ["CUP_srifle_CZ550_rail", "hgun_Pistol_01_F", "CUP_sgun_CZ584", "CUP_sgun_CZ584_RIS", "sgun_Mp153_classic_F"];
initialRebelEquipment append ["CUP_srifle_Remington700", "CUP_smg_saiga9", "hgun_Pistol_Signal_F"];

initialRebelEquipment append ["4Rnd_12Gauge_Pellets","4Rnd_12Gauge_Slug", "CUP_6Rnd_45ACP_M", "10Rnd_9x21_Mag", "CUP_20Rnd_B_765x17_Ball_M", "CUP_6Rnd_45ACP_M"];
initialRebelEquipment append ["CUP_5x_22_LR_17_HMR_M","2Rnd_12Gauge_Pellets", "2Rnd_12Gauge_Slug", "CUP_1Rnd_B_CZ584_74Slug", "CUP_1Rnd_B_CZ584_74Pellets", "CUP_1Rnd_762x51_CZ584"];
initialRebelEquipment append ["CUP_6Rnd_762x51_R700","CUP_10Rnd_9x19_Saiga9", "6Rnd_GreenSignal_F", "6Rnd_RedSignal_F"];
initialRebelEquipment append ["SmokeShell", "MiniGrenade", "Chemlight_green"];

initialRebelEquipment append ["B_Messenger_Gray_F"];
initialRebelEquipment append ["V_BandollierB_oli","V_Pocketed_wdl_F"];
initialRebelEquipment append ["Binocular", "acc_flashlight"];

//TFAR Unlocks
// if (hasTFAR) then {
//     initialRebelEquipment append ["tf_microdagr","tf_anprc154"];

//     if (startWithLongRangeRadio) then {
//         initialRebelEquipment pushBack "tf_anprc155_coyote";
//     };
// };

//black market stuff
shop_UAV = ["I_UAV_01_F"];
shop_AA = ["NAA_Nyx_AA_F"];
shop_MRAP = ["B_A_MRAP_03_gmg_F","B_A_MRAP_03_hmg_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F"];
shop_wheel_apc = ["I_G_APC_Wheeled_03_cannon_F"];
shop_track_apc = ["I_APC_tracked_03_cannon_F"];
shop_heli = ["MYR_I_Pawnee_F","O_R_Heli_Light_02_dynamicLoadout_F","I_E_Heli_light_03_dynamicLoadout_F"];
shop_tank = ["NAA_Nyx_AT_F","NAA_Nyx_scout_F","B_AFV_Wheeled_01_cannon_F","B_AFV_Wheeled_01_up_cannon_F"];
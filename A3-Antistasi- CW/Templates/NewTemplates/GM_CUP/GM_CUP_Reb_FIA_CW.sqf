///////////////////////////
//   Rebel Information   //
///////////////////////////

["name", "FLA"] call _fnc_saveToTemplate;

["flag", "FLA"] call _fnc_saveToTemplate;
["flagTexture", "ACM_90AAF\Vehicles\Tpz\FLA.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "flag_FIA"] call _fnc_saveToTemplate;

["vehicleBasic", "cwr3_c_jawa"] call _fnc_saveToTemplate;
["vehicleLightUnarmed", "cwr3_c_landrover_blue"] call _fnc_saveToTemplate;
["vehicleLightArmed", "cwr3_i_uaz_dshkm"] call _fnc_saveToTemplate;
["vehicleTruck", "cwr3_i_v3s"] call _fnc_saveToTemplate;
["vehicleAT", "cwr3_i_uaz_spg9"] call _fnc_saveToTemplate;
["vehicleAA", "cwr3_i_ural_zu23"] call _fnc_saveToTemplate;

["vehicleBoat", "cwr3_i_zodiac"] call _fnc_saveToTemplate;
["vehicleRepair", "cwr3_i_v3s_repair"] call _fnc_saveToTemplate;
["vehicleFuel", "cwr3_i_v3s_refuel"] call _fnc_saveToTemplate;

["vehiclePlane", "cwr3_c_cessna"] call _fnc_saveToTemplate;
["vehiclePayloadPlane", "I_C_Plane_Civil_01_F"] call _fnc_saveToTemplate;
["vehicleHeli", "not_supported"] call _fnc_saveToTemplate;

["vehicleCivCar", "cwr3_c_landrover_blue"] call _fnc_saveToTemplate;
["vehicleCivTruck", "cwr3_c_uaz452"] call _fnc_saveToTemplate;
["vehicleCivHeli", "not_supported"] call _fnc_saveToTemplate;
["vehicleCivBoat", "cwr3_i_zodiac"] call _fnc_saveToTemplate;

["staticMG", "I_G_HMG_02_high_F"] call _fnc_saveToTemplate;
["staticAT", "cwr3_i_spg9"] call _fnc_saveToTemplate;
["staticAA", "cwr3_i_zu23"] call _fnc_saveToTemplate;
["staticMortar", "CUP_I_M252_RACS"] call _fnc_saveToTemplate;
["staticMortarMagHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["staticMortarMagSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;

//Static weapon definitions
["baggedMGs", [["I_G_HMG_02_high_weapon_F","I_G_HMG_02_support_high_F"]]] call _fnc_saveToTemplate;
["baggedAT", [["CUP_B_SPG9_Gun_Bag","CUP_B_SPG9_Tripod_Bag"]]] call _fnc_saveToTemplate;
["baggedAA", [["I_AA_01_weapon_F","I_G_HMG_02_support_F"]]] call _fnc_saveToTemplate;
["baggedMortars", [["CUP_B_M252_Gun_Bag","CUP_B_M252_Bipod_Bag"]]] call _fnc_saveToTemplate;

["mineAT", ["CUP_Mine_M","CUP_MineE_M","ATMine_Range_Mag", "SLAMDirectionalMine_Wire_Mag"]] call _fnc_saveToTemplate;
["mineAPERS", ["ClaymoreDirectionalMine_Remote_Mag","APERSMine_Range_Mag", "APERSBoundingMine_Range_Mag", "APERSTripMine_Wire_Mag"]] call _fnc_saveToTemplate;

["breachingExplosivesAPC", [["DemoCharge_Remote_Mag", 1], ["IEDLandSmall_Remote_Mag", 1], ["IEDUrbanSmall_Remote_Mag", 1]]] call _fnc_saveToTemplate;
["breachingExplosivesTank", [
		["SatchelCharge_Remote_Mag", 1],
		["CUP_PipeBomb_M", 1],
		["CUP_TimeBomb_M", 1],
		["CUP_IED_V4_M", 1],
		["CUP_IED_V2_M", 1],
		["CUP_IED_V3_M", 1],
		["CUP_IED_V1_M", 1],
		["DemoCharge_Remote_Mag", 2],
		["IEDLandSmall_Remote_Mag", 2],
		["IEDUrbanSmall_Remote_Mag", 2],
		["IEDUrbanSmall_Remote_Mag", 2]
	]
] call _fnc_saveToTemplate;

///////////////////////////
//  Rebel Starting Gear  //
///////////////////////////

["uniforms", [
"U_IG_Guerilla1_1",
"U_IG_Guerilla2_1",
"U_IG_Guerilla2_2",
"U_IG_Guerilla2_3",
"U_IG_Guerilla3_1",
"U_IG_leader",
"U_IG_Guerrilla_6_1",
"CUP_U_I_GUE_Anorak_03",
"CUP_U_I_GUE_Anorak_02",
"CUP_U_I_GUE_WorkU_01",
"CUP_U_I_GUE_WorkU_02",
"CUP_U_I_GUE_Flecktarn2",
"CUP_U_I_GUE_Flecktarn",
"CUP_U_I_GUE_Flecktarn4",
"CUP_U_I_GUE_Woodland1"
]] call _fnc_saveToTemplate;

["headgear", [
  "CUP_H_Ger_Boonie2_Flecktarn",
	"CUP_H_C_Ushanka_01",
	"CUP_H_C_Ushanka_02",
	"CUP_H_C_Ushanka_03",
	"CUP_H_C_Ushanka_04",
	"CUP_H_C_Beret_01",
	"CUP_H_C_Beret_02",
	"CUP_H_C_Beret_03",
	"CUP_H_C_Beret_04",
	"CUP_H_US_BOONIE_Alpenflage",
	"H_Booniehat_khk_hs",
	"H_Booniehat_tan",
	"H_Cap_tan",
	"H_Cap_oli_hs",
	"H_Cap_blk",
	"H_Cap_headphones",
	"H_ShemagOpen_tan",
	"H_Shemag_olive_hs",
	"H_Bandanna_khk_hs",
	"H_Bandanna_sand",
	"H_Bandanna_cbr"
]] call _fnc_saveToTemplate;


private _initialRebelEquipment = [
	,"CUP_hgun_Colt1911", "CUP_srifle_Remington700",
	"CUP_6Rnd_762x51_R700", "CUP_30Rnd_45ACP_MAC10_M", "CUP_30Rnd_45ACP_Yellow_Tracer_MAC10_M", "CUP_30Rnd_45ACP_Green_Tracer_MAC10_M",
	"CUP_7Rnd_45ACP_1911", "CUP_6Rnd_45ACP_M", "SmokeShell",
	"B_LegStrapBag_black_F", "B_LegStrapBag_coyote_F", "B_LegStrapBag_olive_F",
	"B_Messenger_Black_F", "B_Messenger_Coyote_F", "B_Messenger_Gray_F", "B_Messenger_Olive_F", "CUP_B_ACRScout_m95",
	"Binocular","acc_flashlight","acc_flashlight_smg_01","acc_flashlight_pistol"
];

if (A3A_hasTFAR) then {_initialRebelEquipment append ["tf_microdagr","tf_anprc154"]};
if (A3A_hasTFAR && startWithLongRangeRadio) then {_initialRebelEquipment pushBack "tf_anprc155_coyote"};
if (A3A_hasTFARBeta) then {_initialRebelEquipment append ["TFAR_microdagr","TFAR_anprc154"]};
if (A3A_hasTFARBeta && startWithLongRangeRadio) then {_initialRebelEquipment pushBack "TFAR_anprc155_coyote"};

["initialRebelEquipment", _initialRebelEquipment] call _fnc_saveToTemplate;

//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////
["baseSoldiers", [ // Cases matter. Lower case here because allVariables on namespace returns lowercase
	["militia_unarmed", "cwr3_i_soldier_light"],
	["militia_rifleman", "cwr3_i_soldier"],
	["militia_staticcrew", "cwr3_i_soldier"],
	["militia_medic", "cwr3_i_soldier_medic"],
	["militia_sniper", "cwr3_i_soldier_sniper"],
	["militia_marksman", "cwr3_i_soldier_marksman"],
	["militia_lat", "cwr3_i_soldier_at_at4"],
	["militia_machinegunner", "cwr3_i_soldier_mg"],
	["militia_explosivesexpert", "cwr3_i_soldier_sapper"],
	["militia_grenadier", "cwr3_i_soldier_gl"],
	["militia_squadleader", "cwr3_i_soldier_sl"],
	["militia_engineer", "cwr3_i_soldier_engineer"],
	["militia_at", "cwr3_i_soldier_at_rpg75"],
	["militia_aa", "I_Soldier_AA_F"],
	["militia_petros", "cwr3_i_officer"]
]] call _fnc_saveToTemplate;

lootCrate = "Box_Syndicate_Ammo_F";
rallyPoint = "B_RadioBag_01_wdl_F";

//black market stuff
shop_UAV = ["not_supported"];
shop_AA = ["CUP_B_ZSU23_Afghan_CDF", "CUP_B_M163_USA", "CUP_O_2S6_RU"];
shop_MRAP = ["CUP_I_BRDM2_HQ_NAPA", "CUP_I_BRDM2_NAPA", "CUP_B_RG31_M2_OD_USA"];
shop_wheel_apc = ["CUP_B_BTR60_FIA", "CUP_B_BTR80_FIA", "CUP_I_LAV25M240_RACS"];
shop_track_apc = ["CUP_B_MTLB_pk_FIA", "CUP_I_BMP1_TK_GUE", "CUP_I_BMP2_NAPA"];
shop_heli = ["CUP_I_Ka60_GL_Blk_ION", "CUP_B_AW159_HIL", "I_Heli_light_03_dynamicLoadout_F"];
shop_tank = ["cwr3_i_t34", "cwr3_i_t55", "CUP_B_M60A3_USMC"];
shop_plane = ["cwr3_i_l39_cap", "cwr3_i_l39_s5", "cwr3_i_l39_bombs"];

additionalShopLight = ["CUP_B_HMMWV_M1114_USMC", "BTR-40 (DShKM)", "CUP_B_M1165_GMV_USMC"];
additionalShopAtgmVehicles = ["CUP_B_UAZ_METIS_ACR", "CUP_B_M1167_USMC", "cwr3_i_brdm2um"];
additionalShopManpadsVehicles = ["CUP_B_UAZ_AA_CDF", "CUP_O_LR_AA_TKM",  "cwr3_i_bmp2_zu23"];
additionalShopArtillery = ["CUP_I_Hilux_podnos_IND_G_F", "CUP_I_Hilux_UB32_IND_G_F", "CUP_I_Hilux_MLRS_IND_G_F"];

//technical menu content
vehSDKLightUnarmedArmored = "CUP_I_Hilux_armored_unarmed_IND_G_F";
technicalArmoredBtr = "CUP_I_Hilux_armored_BTR60_IND_G_F";
technicalArmoredAa = "CUP_I_Hilux_armored_zu23_IND_G_F";
technicalArmoredSpg = "CUP_I_Hilux_armored_SPG9_IND_G_F";
technicalArmoredMg = "CUP_I_Hilux_armored_DSHKM_IND_G_F";

//military building models (common for all sides)
smallBunker = "Land_BagBunker_Small_F";
sandbag = "Land_BagFence_Long_F";

//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

//     DO NOT GO PAST THIS LINE

//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;
_loadoutData setVariable ["rifles", []];
_loadoutData setVariable ["carbines", []];
_loadoutData setVariable ["grenadeLaunchers", []];
_loadoutData setVariable ["SMGs", []];
_loadoutData setVariable ["machineGuns", []]; 			//this line determines machine guns -- Example: ["arifle_MX_SW_F","arifle_MX_SW_Hamr_pointer_F"] -- Array, can contain multiple assets
_loadoutData setVariable ["marksmanRifles", []];
_loadoutData setVariable ["sniperRifles", []];
_loadoutData setVariable ["lightATLaunchers", []];
_loadoutData setVariable ["ATLaunchers", []];
_loadoutData setVariable ["missileATLaunchers", []];
_loadoutData setVariable ["AALaunchers", []];
_loadoutData setVariable ["sidearms", []];

_loadoutData setVariable ["ATMines", []];
_loadoutData setVariable ["APMines", []];
_loadoutData setVariable ["lightExplosives", []];
_loadoutData setVariable ["heavyExplosives", []];

_loadoutData setVariable ["antiInfantryGrenades", []];
_loadoutData setVariable ["antiTankGrenades", []];
_loadoutData setVariable ["smokeGrenades", []];




_loadoutData setVariable ["maps", ["ItemMap"]];
_loadoutData setVariable ["watches", ["ItemWatch"]];
_loadoutData setVariable ["compasses", ["ItemCompass"]];
_loadoutData setVariable ["radios", []];
_loadoutData setVariable ["gpses", []];
_loadoutData setVariable ["NVGs", []];
_loadoutData setVariable ["binoculars", ["Binocular"]];

_loadoutData setVariable ["uniforms", ["U_IG_Guerilla1_1","U_IG_Guerilla2_1","U_IG_Guerilla2_2","U_IG_Guerilla2_3","U_IG_Guerilla3_1","U_IG_leader","U_IG_Guerrilla_6_1", "CUP_U_I_GUE_Anorak_03","CUP_U_I_GUE_Anorak_02","CUP_U_I_GUE_WorkU_01","CUP_U_I_GUE_WorkU_02","CUP_U_I_GUE_Flecktarn2","CUP_U_I_GUE_Flecktarn","CUP_U_I_GUE_Flecktarn4","CUP_U_I_GUE_Woodland1"]];
_loadoutData setVariable ["vests", []];
_loadoutData setVariable ["backpacks", []];
_loadoutData setVariable ["longRangeRadios", []];
_loadoutData setVariable ["helmets", []];

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
_loadoutData setVariable ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData setVariable ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData setVariable ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData setVariable ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];


_loadoutData setVariable ["items_squadleader_extras", []];
_loadoutData setVariable ["items_rifleman_extras", []];
_loadoutData setVariable ["items_medic_extras", []];
_loadoutData setVariable ["items_grenadier_extras", []];
_loadoutData setVariable ["items_explosivesExpert_extras", []];
_loadoutData setVariable ["items_engineer_extras", ["Toolkit", "MineDetector"]];
_loadoutData setVariable ["items_lat_extras", []];
_loadoutData setVariable ["items_at_extras", []];
_loadoutData setVariable ["items_aa_extras", []];
_loadoutData setVariable ["items_machineGunner_extras", []];
_loadoutData setVariable ["items_marksman_extras", []];
_loadoutData setVariable ["items_sniper_extras", []];
_loadoutData setVariable ["items_police_extras", []];
_loadoutData setVariable ["items_crew_extras", []];
_loadoutData setVariable ["items_unarmed_extras", []];

////////////////////////
//  Rebel Unit Types  //
///////////////////////.

private _squadLeaderTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	["backpacks"] call _fnc_setBackpack;

	[["grenadeLaunchers", "rifles"] call _fnc_fallback] call _fnc_setPrimary;
	["primary", 5] call _fnc_addMagazines;


	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_squadLeader_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["antiTankGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["gpses"] call _fnc_addGPS;
	["binoculars"] call _fnc_addBinoculars;
	["NVGs"] call _fnc_addNVGs;
};

private _riflemanTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["rifles"] call _fnc_setPrimary;
	["primary", 8] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_rifleman_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["antiTankGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _medicTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["carbines"] call _fnc_setPrimary;
	["primary", 5] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_medic"] call _fnc_addItemSet;
	["items_medic_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _grenadierTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["grenadeLaunchers"] call _fnc_setPrimary;
	["primary", 5] call _fnc_addMagazines;


	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_grenadier_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 4] call _fnc_addItem;
	["antiTankGrenades", 3] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _explosivesExpertTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["rifles"] call _fnc_setPrimary;
	["primary", 5] call _fnc_addMagazines;


	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_explosivesExpert_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;

	["lightExplosives", 2] call _fnc_addItem;
	if (random 1 > 0.5) then {["heavyExplosives", 1] call _fnc_addItem;};
	if (random 1 > 0.5) then {["atMines", 1] call _fnc_addItem;};
	if (random 1 > 0.5) then {["apMines", 1] call _fnc_addItem;};

	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _engineerTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["carbines"] call _fnc_setPrimary;
	["primary", 5] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_engineer_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;

	if (random 1 > 0.5) then {["lightExplosives", 1] call _fnc_addItem;};

	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _latTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["rifles"] call _fnc_setPrimary;
	["primary", 8] call _fnc_addMagazines;

	[["lightATLaunchers", "ATLaunchers"] call _fnc_fallback] call _fnc_setLauncher;
	//TODO - Add a check if it's disposable.
	["launcher", 1] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_lat_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
	["antiTankGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _atTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["rifles"] call _fnc_setPrimary;
	["primary", 5] call _fnc_addMagazines;

	[selectRandom ["ATLaunchers", "missileATLaunchers"]] call _fnc_setLauncher;
	//TODO - Add a check if it's disposable.
	["launcher", 2] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_at_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
	["antiTankGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _aaTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["rifles"] call _fnc_setPrimary;
	["primary", 5] call _fnc_addMagazines;

	["AALaunchers"] call _fnc_setLauncher;
	//TODO - Add a check if it's disposable.
	["launcher", 2] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_aa_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _machineGunnerTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["machineGuns"] call _fnc_setPrimary;
	["primary", 4] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_machineGunner_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _marksmanTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["marksmanRifles"] call _fnc_setPrimary;
	["primary", 8] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_marksman_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _sniperTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["sniperRifles"] call _fnc_setPrimary;
	["primary", 5] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_sniper_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _policeTemplate = {
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	[selectRandom ["smgs", "carbines"]] call _fnc_setPrimary;
	["primary", 5] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_police_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["smokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
};

private _crewTemplate = {
	["helmets"] call _fnc_setHelmet;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	["smgs"] call _fnc_setPrimary;
	["primary", 3] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_basic"] call _fnc_addItemSet;
	["items_crew_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["gpses"] call _fnc_addGPS;
	["NVGs"] call _fnc_addNVGs;
};

private _unarmedTemplate = {
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	["items_medical_basic"] call _fnc_addItemSet;
	["items_unarmed_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
};

private _prefix = "militia";
private _unitTypes = [
	["Petros", _squadLeaderTemplate],
	["SquadLeader", _squadLeaderTemplate],
	["Rifleman", _riflemanTemplate],
	["staticCrew", _riflemanTemplate],
	["Medic", _medicTemplate, [["medic", true]]],
	["Engineer", _engineerTemplate, [["engineer", true]]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]]],
	["Grenadier", _grenadierTemplate],
	["LAT", _latTemplate],
	["AT", _atTemplate],
	["AA", _aaTemplate],
	["MachineGunner", _machineGunnerTemplate],
	["Marksman", _marksmanTemplate],
	["Sniper", _sniperTemplate],
	["Unarmed", _unarmedTemplate]
];

[_prefix, _unitTypes, _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;

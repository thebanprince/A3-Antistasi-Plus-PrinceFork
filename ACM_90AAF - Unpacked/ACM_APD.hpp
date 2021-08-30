class APD_officer : AAFGM_soldier
	{
		editorPreview = "ACM_90AAF\UI\Police\APD_officer.jpg";
		faction="ACM_APD";
    	side=2;
    	displayName="Officer";
	    uniformClass="ACM_APD_2_Clothes";
	    weapons[]={"hgun_ACPC2_F","Put","Throw"};
	    respawnWeapons[]={"hgun_ACPC2_F","Put","Throw"};
	    items[]={"gm_gc_army_medkit"};
	    respawnItems[]={"gm_gc_army_medkit"};
	    magazines[]={"9Rnd_45ACP_Mag","9Rnd_45ACP_Mag","9Rnd_45ACP_Mag","9Rnd_45ACP_Mag","9Rnd_45ACP_Mag"};
	    respawnMagazines[]={"9Rnd_45ACP_Mag","9Rnd_45ACP_Mag","9Rnd_45ACP_Mag","9Rnd_45ACP_Mag","9Rnd_45ACP_Mag"};
	    linkedItems[]={"ItemMap","ItemCompass","ItemWatch","ItemRadio","gm_ge_army_vest_80_officer","ACM_APD_Cap","G_Aviator"};
	    respawnLinkedItems[]={"ItemMap","ItemCompass","ItemWatch","ItemRadio","gm_ge_army_vest_80_officer","ACM_APD_Cap","G_Aviator"};
	};

class APD_officer_bike : APD_officer
	{
		editorPreview = "ACM_90AAF\UI\Police\APD_officer_bike.jpg";
		faction="ACM_APD";
    	side=2;
    	displayName="Motorcycle Officer";
	    uniformClass="ACM_APD_2_Clothes";
	    linkedItems[]={"ItemMap","ItemCompass","ItemWatch","ItemRadio","V_Safety_yellow_F","H_RacingHelmet_1_white_F","G_Aviator"};
	    respawnLinkedItems[]={"ItemMap","ItemCompass","ItemWatch","ItemRadio","V_Safety_yellow_F","H_RacingHelmet_1_white_F","G_Aviator"};
	};

class APD_officer_Armour : APD_officer
	{
		editorPreview = "ACM_90AAF\UI\Police\APD_officer_Armour.jpg";
		faction="ACM_APD";
    	side=2;
    	displayName="Officer (Protected)";
	    uniformClass="ACM_APD_2_Clothes";
	    linkedItems[]={"ItemMap","ItemCompass","ItemWatch","ItemRadio","ACM_APD_Vest","ACM_APD_Cap","G_Aviator"};
	    respawnLinkedItems[]={"ItemMap","ItemCompass","ItemWatch","ItemRadio","ACM_APD_Vest","ACM_APD_Cap","G_Aviator"};
	};

class APD_Police : APD_officer
	{
		editorPreview = "ACM_90AAF\UI\Police\APD_Police.jpg";
		faction="ACM_APD";
    	side=2;
    	displayName="Policeman";
	    uniformClass="ACM_APD_Clothes_Blouse";
	    linkedItems[]={"ItemMap","ItemCompass","ItemWatch","ItemRadio","gm_ge_pol_vest_80_wht","ACM_APD_Cap","G_Aviator"};
	    respawnLinkedItems[]={"ItemMap","ItemCompass","ItemWatch","ItemRadio","gm_ge_pol_vest_80_wht","ACM_APD_Cap","G_Aviator"};
	};

//OEA
class APD_OEA_Marksman : APD_officer
	{
		editorPreview = "ACM_90AAF\UI\Police\APD_OEA_Marksman.jpg";
		weapons[]={"APD_G3_Marksmen","hgun_ACPC2_F","Put","Throw"};
	    respawnWeapons[]={"APD_G3_Marksmen","hgun_ACPC2_F","Put","Throw"};
		magazines[]={"gm_20Rnd_762x51mm_B_T_DM21_g3_blk","gm_20Rnd_762x51mm_B_T_DM21_g3_blk","gm_20Rnd_762x51mm_B_T_DM21_g3_blk","gm_20Rnd_762x51mm_B_T_DM21_g3_blk","gm_20Rnd_762x51mm_B_T_DM21_g3_blk","gm_20Rnd_762x51mm_B_T_DM21_g3_blk","9Rnd_45ACP_Mag","9Rnd_45ACP_Mag","9Rnd_45ACP_Mag"};
	    respawnMagazines[]={"gm_20Rnd_762x51mm_B_T_DM21_g3_blk","gm_20Rnd_762x51mm_B_T_DM21_g3_blk","gm_20Rnd_762x51mm_B_T_DM21_g3_blk","gm_20Rnd_762x51mm_B_T_DM21_g3_blk","gm_20Rnd_762x51mm_B_T_DM21_g3_blk","gm_20Rnd_762x51mm_B_T_DM21_g3_blk","9Rnd_45ACP_Mag","9Rnd_45ACP_Mag","9Rnd_45ACP_Mag"};
		faction="ACM_APD";
    	side=2;
    	displayName="OEA Marksman";
	    uniformClass="ACM_APD_Clothes";
	    linkedItems[]={"ItemMap","ItemCompass","ItemWatch","ItemRadio","ACM_APD_Vest","gm_ge_headgear_headset_crew_oli","G_Balaclava_blk"};
	    respawnLinkedItems[]={"ItemMap","ItemCompass","ItemWatch","ItemRadio","ACM_APD_Vest","gm_ge_headgear_headset_crew_oli","G_Balaclava_blk"};
	    editorSubcategory="EdSubcat_Personnel_SpecialForces";
	};

class APD_OEA_CQC : APD_OEA_Marksman
	{
		editorPreview = "ACM_90AAF\UI\Police\APD_OEA_CQC.jpg";
		weapons[]={"gm_mp2a1_blk","hgun_ACPC2_F","Put","Throw"};
	    respawnWeapons[]={"gm_mp2a1_blk","hgun_ACPC2_F","Put","Throw"};
		magazines[]={"gm_32Rnd_9x19mm_B_DM51_mp2_blk","gm_32Rnd_9x19mm_B_DM51_mp2_blk","gm_32Rnd_9x19mm_B_DM51_mp2_blk","gm_32Rnd_9x19mm_B_DM51_mp2_blk","gm_32Rnd_9x19mm_B_DM51_mp2_blk","gm_32Rnd_9x19mm_B_DM51_mp2_blk","gm_32Rnd_9x19mm_B_DM51_mp2_blk","gm_32Rnd_9x19mm_B_DM51_mp2_blk","gm_32Rnd_9x19mm_B_DM51_mp2_blk","gm_32Rnd_9x19mm_B_DM51_mp2_blk","9Rnd_45ACP_Mag","9Rnd_45ACP_Mag","9Rnd_45ACP_Mag","gm_handgrenade_conc_dm51","gm_handgrenade_conc_dm51"};
	    respawnMagazines[]={"gm_32Rnd_9x19mm_B_DM51_mp2_blk","gm_32Rnd_9x19mm_B_DM51_mp2_blk","gm_32Rnd_9x19mm_B_DM51_mp2_blk","gm_32Rnd_9x19mm_B_DM51_mp2_blk","gm_32Rnd_9x19mm_B_DM51_mp2_blk","gm_32Rnd_9x19mm_B_DM51_mp2_blk","gm_32Rnd_9x19mm_B_DM51_mp2_blk","gm_32Rnd_9x19mm_B_DM51_mp2_blk","gm_32Rnd_9x19mm_B_DM51_mp2_blk","gm_32Rnd_9x19mm_B_DM51_mp2_blk","9Rnd_45ACP_Mag","9Rnd_45ACP_Mag","9Rnd_45ACP_Mag","gm_handgrenade_conc_dm51","gm_handgrenade_conc_dm51"};
		faction="ACM_APD";
    	side=2;
    	displayName="OEA CQC Specialist";
	    uniformClass="ACM_APD_Clothes_3";
	    linkedItems[]={"ItemMap","ItemCompass","ItemWatch","ItemRadio","ACM_APD_Vest","ACM_AAFGM_Headgear_Beret_blk","G_Balaclava_blk"};
	    respawnLinkedItems[]={"ItemMap","ItemCompass","ItemWatch","ItemRadio","ACM_APD_Vest","gm_ge_headgear_headset_crew_oli","G_Balaclava_blk"};
	    backpack="B_Messenger_Black_F";
	};

class APD_OEA_CQC2 : APD_OEA_CQC
	{
		editorPreview = "ACM_90AAF\UI\Police\APD_OEA_CQC2.jpg";
		weapons[]={"gm_mp5sd2_blk","hgun_ACPC2_F","Put","Throw"};
	    respawnWeapons[]={"gm_mp5sd2_blk","hgun_ACPC2_F","Put","Throw"};
		magazines[]={"gm_30Rnd_9x19mm_B_DM51_mp5a3_blk","gm_30Rnd_9x19mm_B_DM51_mp5a3_blk","gm_30Rnd_9x19mm_B_DM51_mp5a3_blk","gm_30Rnd_9x19mm_B_DM51_mp5a3_blk","gm_30Rnd_9x19mm_B_DM51_mp5a3_blk","gm_30Rnd_9x19mm_B_DM51_mp5a3_blk","gm_30Rnd_9x19mm_B_DM51_mp5a3_blk","gm_30Rnd_9x19mm_B_DM51_mp5a3_blk","9Rnd_45ACP_Mag","9Rnd_45ACP_Mag","9Rnd_45ACP_Mag","gm_handgrenade_conc_dm51","gm_handgrenade_conc_dm51"};
	    respawnMagazines[]={"gm_30Rnd_9x19mm_B_DM51_mp5a3_blk","gm_30Rnd_9x19mm_B_DM51_mp5a3_blk","gm_30Rnd_9x19mm_B_DM51_mp5a3_blk","gm_30Rnd_9x19mm_B_DM51_mp5a3_blk","gm_30Rnd_9x19mm_B_DM51_mp5a3_blk","gm_30Rnd_9x19mm_B_DM51_mp5a3_blk","gm_30Rnd_9x19mm_B_DM51_mp5a3_blk","gm_30Rnd_9x19mm_B_DM51_mp5a3_blk","9Rnd_45ACP_Mag","9Rnd_45ACP_Mag","9Rnd_45ACP_Mag","gm_handgrenade_conc_dm51","gm_handgrenade_conc_dm51"};
    	displayName="OEA CQC Specialist (MP5)";
	};

class APD_OEA_Assaulter : APD_OEA_Marksman
	{
		editorPreview = "ACM_90AAF\UI\Police\APD_OEA_Assaulter.jpg";
		weapons[]={"gm_m16a2_blk","hgun_ACPC2_F","Put","Throw"};
	    respawnWeapons[]={"gm_m16a2_blk","hgun_ACPC2_F","Put","Throw"};
		magazines[]={"gm_20Rnd_556x45mm_B_M855_stanag_gry","gm_20Rnd_556x45mm_B_M855_stanag_gry","gm_20Rnd_556x45mm_B_M855_stanag_gry","gm_20Rnd_556x45mm_B_M855_stanag_gry","gm_20Rnd_556x45mm_B_M855_stanag_gry","gm_20Rnd_556x45mm_B_M855_stanag_gry","9Rnd_45ACP_Mag","9Rnd_45ACP_Mag","gm_handgrenade_conc_dm51","gm_handgrenade_conc_dm51"};
	    respawnMagazines[]={"gm_20Rnd_556x45mm_B_M855_stanag_gry","gm_20Rnd_556x45mm_B_M855_stanag_gry","gm_20Rnd_556x45mm_B_M855_stanag_gry","gm_20Rnd_556x45mm_B_M855_stanag_gry","gm_20Rnd_556x45mm_B_M855_stanag_gry","gm_20Rnd_556x45mm_B_M855_stanag_gry","9Rnd_45ACP_Mag","9Rnd_45ACP_Mag","gm_handgrenade_conc_dm51","gm_handgrenade_conc_dm51"};
    	displayName="OEA Assaulter";
	    uniformClass="ACM_APD_Clothes_3";
	    linkedItems[]={"ItemMap","ItemCompass","ItemWatch","ItemRadio","V_TacVest_blk_POLICE","H_HeadSet_black_F","G_Balaclava_blk"};
	    respawnLinkedItems[]={"ItemMap","ItemCompass","ItemWatch","ItemRadio","V_TacVest_blk_POLICE","H_HeadSet_black_F","G_Balaclava_blk"};
	};

class APD_OEA_EOD : APD_OEA_Marksman
	{
		editorPreview = "ACM_90AAF\UI\Police\APD_OEA_EOD.jpg";
		weapons[]={"hgun_ACPC2_F","Put","Throw"};
	    respawnWeapons[]={"hgun_ACPC2_F","Put","Throw"};
		magazines[]={"9Rnd_45ACP_Mag","9Rnd_45ACP_Mag","9Rnd_45ACP_Mag","9Rnd_45ACP_Mag","9Rnd_45ACP_Mag","9Rnd_45ACP_Mag","9Rnd_45ACP_Mag","gm_handgrenade_conc_dm51","gm_handgrenade_conc_dm51"};
	    respawnMagazines[]={"9Rnd_45ACP_Mag","9Rnd_45ACP_Mag","9Rnd_45ACP_Mag","9Rnd_45ACP_Mag","9Rnd_45ACP_Mag","9Rnd_45ACP_Mag","9Rnd_45ACP_Mag","gm_handgrenade_conc_dm51","gm_handgrenade_conc_dm51"};
    	displayName="OEA EOD";
	    uniformClass="ACM_APD_Clothes";
	    linkedItems[]={"ItemMap","ItemCompass","ItemWatch","ItemRadio","V_EOD_blue_F","H_PASGT_basic_blue_F","G_EyeProtectors_F"};
	    respawnLinkedItems[]={"ItemMap","ItemCompass","ItemWatch","ItemRadio","V_EOD_blue_F","H_PASGT_basic_blue_F","G_EyeProtectors_F"};
	    backpack="APD_EOD_Pack";
	    canDeactivateMines = true;
	};

class APD_OEA_Medic : APD_OEA_Marksman
	{
		editorPreview = "ACM_90AAF\UI\Police\APD_OEA_Medic.jpg";
		weapons[]={"gm_m16a2_blk","hgun_ACPC2_F","Put","Throw"};
	    respawnWeapons[]={"gm_m16a2_blk","hgun_ACPC2_F","Put","Throw"};
		magazines[]={"gm_20Rnd_556x45mm_B_M855_stanag_gry","gm_20Rnd_556x45mm_B_M855_stanag_gry","gm_20Rnd_556x45mm_B_M855_stanag_gry","gm_20Rnd_556x45mm_B_M855_stanag_gry","gm_20Rnd_556x45mm_B_M855_stanag_gry","gm_20Rnd_556x45mm_B_M855_stanag_gry","9Rnd_45ACP_Mag","9Rnd_45ACP_Mag","gm_handgrenade_conc_dm51","gm_handgrenade_conc_dm51"};
	    respawnMagazines[]={"gm_20Rnd_556x45mm_B_M855_stanag_gry","gm_20Rnd_556x45mm_B_M855_stanag_gry","gm_20Rnd_556x45mm_B_M855_stanag_gry","gm_20Rnd_556x45mm_B_M855_stanag_gry","gm_20Rnd_556x45mm_B_M855_stanag_gry","gm_20Rnd_556x45mm_B_M855_stanag_gry","9Rnd_45ACP_Mag","9Rnd_45ACP_Mag","gm_handgrenade_conc_dm51","gm_handgrenade_conc_dm51"};
    	displayName="OEA Medic";
	    uniformClass="ACM_APD_Clothes_3";
	    linkedItems[]={"ItemMap","ItemCompass","ItemWatch","ItemRadio","gm_ge_army_vest_80_medic","H_PASGT_basic_white_F","G_Balaclava_blk"};
	    respawnLinkedItems[]={"ItemMap","ItemCompass","ItemWatch","ItemRadio","gm_ge_army_vest_80_medic","H_PASGT_basic_white_F","G_Balaclava_blk"};
	    backpack="AAFGM_Medic_Pack";
	    attendant = 1;
	};












//Vehicles
class ACM_APD_Motorbike : gm_ge_army_k125
	{
		editorPreview = "ACM_90AAF\UI\ACM_AAFGM_Motorbike_455.jpg";
		scope = 2;
		author="Anthrax";
		scopeCurator = 2;
		side = 2;
		faction = "ACM_APD";
		typicalCargo[] = {"APD_officer_bike"}; crew = "APD_officer_bike";
		gm_LicensePlate="acm_aaf_licenseplate_grey";
		gm_LicensePlateDefaultDigits="APD-####";
		gm_LicensePlateSelectionsDigits[]=
		{
			"LicensePlate_01",
			"LicensePlate_02",
			"LicensePlate_03",
			"LicensePlate_04",
			"LicensePlate_05",
			"LicensePlate_06",
			"LicensePlate_07",
			"LicensePlate_08"
		};
	};

class ACM_APD_Vehicle_Iltis;
class ACM_APD_Iltis : ACM_APD_Vehicle_Iltis
	{
		editorPreview = "ACM_90AAF\UI\Police\ACM_APD_Iltis.jpg";
		scope = 2;
		author="Anthrax";
		scopeCurator = 2;
		side = 2;
		faction = "ACM_APD";
		typicalCargo[] = {"APD_officer"}; crew = "APD_officer";
		hiddenSelectionsTextures[] = {"\gm\gm_vehicles\gm_land\gm_wheeled\gm_iltis\gm_ge_army_iltis\data\wdl\gm_ge_army_iltis_rim_01_wdl_co.paa",
					"#(rgb,8,8,3)color(1,1,1,1)",
					"ACM_90AAF\Vehicles\Iltis\ACM_APD_Ext_CO.paa"};
		textureList[] = {"acm_apd_camo",1};
	};

class ACM_APD_Vehicle_Unimog;
class ACM_APD_Unimog : ACM_APD_Vehicle_Unimog
	{
		editorPreview = "ACM_90AAF\UI\Police\ACM_APD_Unimog.jpg";
		scope = 2;
		displayName="Unimog";
		author="Anthrax";
		scopeCurator = 2;
		side = 2;
		faction = "ACM_APD";
		typicalCargo[] = {"APD_OEA_Assaulter"}; crew = "APD_OEA_Assaulter";
		hiddenSelectionsTextures[] = {"\gm\gm_vehicles\gm_land\gm_wheeled\gm_iltis\gm_ge_army_iltis\data\wdl\gm_ge_army_iltis_rim_01_wdl_co.paa",
					"ACM_90AAF\Vehicles\Unimog\ACM_APD_Unimog_Ext1_co.paa",
					"ACM_90AAF\Vehicles\Unimog\ACM_APD_Blue_co.paa",
					"ACM_90AAF\Vehicles\Unimog\ACM_APD_Unimog_Ext3_co.paa",
					"ACM_90AAF\Vehicles\Unimog\ACM_APD_Blue_co.paa",
					"ACM_90AAF\Vehicles\Unimog\ACM_APD_Blue_co.paa"};
		textureList[] = {"acm_apd_darkblue",1};
	};

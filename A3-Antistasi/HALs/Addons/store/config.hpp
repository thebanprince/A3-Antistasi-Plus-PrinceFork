/*
	Macro: ERROR_WITH_TITLE()

	Parameters:
	0: CLASSNAME - Classname of item
	1: PRICE - Default item price
	2: STOCK - Default item stock
__________________________________________________________________*/
#define ITEM(CLASSNAME, PRICE, STOCK)\
	class CLASSNAME {\
		price = PRICE;\
		stock = STOCK;\
	};

#define MAGAZINE_STOCK 200
#define LAUNCHER_STOCK 10
#define PISTOL_STOCK 20
#define RIFLE_STOCK 15
#define MZ_STOCK 50
#define NN_STOCK 50
#define PN_STOCK 25
#define MISC_STOCK 50

class cfgHALsStore {
	containerTypes[] = {"LandVehicle", "Air", "Ship"};
	containerRadius = 10;
	currencySymbol = "$";
	sellFactor = 0.5;
	debug = 0;

	class categories {
		///////////////////////////////////////////////////////
		// Aegis
		///////////////////////////////////////////////////////
		class handgunsAegis {
			displayName = "Handguns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\handgun_ca.paa";
			ITEM(hgun_Pistol_heavy_01_F, 700, PISTOL_STOCK);
			ITEM(hgun_Pistol_heavy_01_green_F, 700, PISTOL_STOCK);
			ITEM(hgun_ACPC2_F, 250, PISTOL_STOCK);
			ITEM(hgun_P07_F, 150, PISTOL_STOCK);
			ITEM(hgun_P07_blk_F, 150, PISTOL_STOCK);
			ITEM(hgun_P07_khk_F, 150, PISTOL_STOCK);
			ITEM(hgun_G17_F, 150, PISTOL_STOCK);
			ITEM(hgun_G17_black_F, 150, PISTOL_STOCK);
			ITEM(hgun_G17_khaki_F, 150, PISTOL_STOCK);
			ITEM(hgun_Rook40_F, 150, PISTOL_STOCK);
			ITEM(hgun_Pistol_heavy_02_F, 800, PISTOL_STOCK);
			ITEM(hgun_Mk26_F, 1000, PISTOL_STOCK);
		};

		class launchersAegis {
			displayName = "Rocket Launchers";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\secondaryWeapon_ca.paa";

			ITEM(launch_RPG7_F, 1500, 15);

			ITEM(launch_NLAW_F, 3250, 10);

			ITEM(launch_RPG32_F, 2700, LAUNCHER_STOCK);
			ITEM(launch_RPG32_green_F, 2700, LAUNCHER_STOCK);
			ITEM(launch_RPG32_ghex_F, 2700, LAUNCHER_STOCK);
			ITEM(launch_RPG32_black_F, 2700, LAUNCHER_STOCK);

			ITEM(launch_MRAWS_olive_F, 2800, LAUNCHER_STOCK);
			ITEM(launch_MRAWS_olive_rail_F, 2500, LAUNCHER_STOCK);
			ITEM(launch_MRAWS_green_F, 2800, LAUNCHER_STOCK);
			ITEM(launch_MRAWS_green_rail_F, 2500, LAUNCHER_STOCK);
			ITEM(launch_MRAWS_sand_F, 2800, LAUNCHER_STOCK);
			ITEM(launch_MRAWS_sand_rail_F, 2500, LAUNCHER_STOCK);
			ITEM(launch_MRAWS_black_F, 2800, LAUNCHER_STOCK);
			ITEM(launch_MRAWS_black_rail_F, 2500, LAUNCHER_STOCK);

			ITEM(launch_O_Vorona_brown_F, 4000, 4);
			ITEM(launch_O_Vorona_green_F, 4000, 4);

			ITEM(launch_B_Titan_F, 4500, 3);
			ITEM(launch_I_Titan_F, 4500, 3);
			ITEM(launch_O_Titan_F, 4500, 3);
			ITEM(launch_Titan_blk_F, 4500, 3);
			ITEM(launch_O_Titan_camo_F, 4500, 3); 

			ITEM(launch_B_Titan_short_F, 5000, 3);
			ITEM(launch_I_Titan_short_F, 5000, 3);
			ITEM(launch_O_Titan_short_F, 5000, 3);
			ITEM(launch_Titan_short_blk_F, 5000, 3);
			ITEM(launch_O_Titan_short_camo_F, 5000, 3);
		};

		class riflesAegis {
			displayName = "Assault Rifles";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(arifle_AKS_F, 350, RIFLE_STOCK);

			ITEM(arifle_Mk20_plain_F, 1000, RIFLE_STOCK);
			ITEM(arifle_Mk20C_plain_F, 850, RIFLE_STOCK);
			ITEM(arifle_Mk20_GL_plain_F, 1250, RIFLE_STOCK);

			ITEM(arifle_Mk20_black_F, 1000, RIFLE_STOCK);
			ITEM(arifle_Mk20C_black_F, 850, RIFLE_STOCK);
			ITEM(arifle_Mk20_GL_black_F, 1250, RIFLE_STOCK);

			ITEM(arifle_Mk20_hex_F, 1000, RIFLE_STOCK);
			ITEM(arifle_Mk20C_hex_F, 850, RIFLE_STOCK);
			ITEM(arifle_Mk20_GL_hex_F, 1250, RIFLE_STOCK);

			ITEM(arifle_TRG21_F, 800, RIFLE_STOCK);
			ITEM(arifle_TRG20_F, 650, RIFLE_STOCK);
			ITEM(arifle_TRG21_GL_F, 1050, RIFLE_STOCK);

			ITEM(arifle_TRG21_black_F, 800, RIFLE_STOCK);
			ITEM(arifle_TRG20_black_F, 650, RIFLE_STOCK);
			ITEM(arifle_TRG21_GL_black_F, 1050, RIFLE_STOCK);

			ITEM(arifle_AKM_F, 1250, RIFLE_STOCK);

			ITEM(arifle_Katiba_F, 1500, RIFLE_STOCK);
			ITEM(arifle_Katiba_C_F, 1350, RIFLE_STOCK);
			ITEM(arifle_Katiba_GL_F, 1750, RIFLE_STOCK);

			ITEM(arifle_CTAR_blk_F, 1750, RIFLE_STOCK);
			ITEM(arifle_CTAR_GL_blk_F, 2000, RIFLE_STOCK);

			ITEM(arifle_CTAR_ghex_F, 1750, RIFLE_STOCK);
			ITEM(arifle_CTAR_GL_ghex_F, 2000, RIFLE_STOCK);

			ITEM(arifle_CTAR_hex_F, 1750, RIFLE_STOCK);
			ITEM(arifle_CTAR_GL_hex_F, 2000, RIFLE_STOCK);

			ITEM(arifle_AK12_545_F, 1800, RIFLE_STOCK);
			ITEM(arifle_AK12U_545_F, 1600, RIFLE_STOCK);
			ITEM(arifle_AK12_GL_545_F, 2050, RIFLE_STOCK);

			ITEM(arifle_AK12_545_arid_F, 1800, RIFLE_STOCK);
			ITEM(arifle_AK12U_545_arid_F, 1600, RIFLE_STOCK);
			ITEM(arifle_AK12_GL_545_arid_F, 2050, RIFLE_STOCK);

			ITEM(arifle_AK12_545_lush_F, 1800, RIFLE_STOCK);
			ITEM(arifle_AK12U_545_lush_F, 1600, RIFLE_STOCK);
			ITEM(arifle_AK12_GL_545_lush_F, 2050, RIFLE_STOCK);

			ITEM(arifle_MX_F, 2000, RIFLE_STOCK);
			ITEM(arifle_MXC_F, 1850, RIFLE_STOCK);
			ITEM(arifle_MX_GL_F, 2250, RIFLE_STOCK);

			ITEM(arifle_MX_Black_F, 2000, RIFLE_STOCK);
			ITEM(arifle_MXC_Black_F, 1850, RIFLE_STOCK);
			ITEM(arifle_MX_GL_Black_F, 2250, RIFLE_STOCK);

			ITEM(arifle_MX_khk_F, 2000, RIFLE_STOCK);
			ITEM(arifle_MXC_khk_F, 1850, RIFLE_STOCK);
			ITEM(arifle_MX_GL_khk_F, 2250, RIFLE_STOCK);

			ITEM(arifle_SA80_blk_F, 2300, RIFLE_STOCK);
			ITEM(arifle_SA80_C_blk_F, 2100, RIFLE_STOCK);
			ITEM(arifle_SA80_GL_blk_F, 2550, RIFLE_STOCK);
			
			ITEM(arifle_SA80_khk_F, 2300, RIFLE_STOCK);
			ITEM(arifle_SA80_C_khk_F, 2100, RIFLE_STOCK);
			ITEM(arifle_SA80_GL_khk_F, 2550, RIFLE_STOCK);

			ITEM(arifle_SA80_snd_F, 2300, RIFLE_STOCK);
			ITEM(arifle_SA80_C_snd_F, 2100, RIFLE_STOCK);
			ITEM(arifle_SA80_GL_snd_F, 2550, RIFLE_STOCK);

			ITEM(arifle_G36_F, 2050, RIFLE_STOCK);
			ITEM(arifle_G36C_F, 1900, RIFLE_STOCK);
			ITEM(arifle_G36_GL_F, 2300, RIFLE_STOCK);

			ITEM(arifle_MSBS65_F, 2150, RIFLE_STOCK);
			ITEM(arifle_MSBS65_UBS_F, 2250, RIFLE_STOCK);
			ITEM(arifle_MSBS65_GL_F, 2350, RIFLE_STOCK);

			ITEM(arifle_MSBS65_black_F, 2150, RIFLE_STOCK);
			ITEM(arifle_MSBS65_UBS_black_F, 2250, RIFLE_STOCK);
			ITEM(arifle_MSBS65_GL_black_F, 2350, RIFLE_STOCK);

			ITEM(arifle_MSBS65_camo_F, 2150, RIFLE_STOCK);
			ITEM(arifle_MSBS65_UBS_camo_F, 2250, RIFLE_STOCK);
			ITEM(arifle_MSBS65_GL_camo_F, 2350, RIFLE_STOCK);

			ITEM(arifle_MSBS65_sand_F, 2150, RIFLE_STOCK);
			ITEM(arifle_MSBS65_UBS_sand_F, 2250, RIFLE_STOCK);
			ITEM(arifle_MSBS65_GL_sand_F, 2350, RIFLE_STOCK);

			ITEM(arifle_SPAR_01_blk_F, 2500, RIFLE_STOCK);
			ITEM(arifle_SPAR_01_GL_blk_F, 2750, RIFLE_STOCK);

			ITEM(arifle_SPAR_01_khk_F, 2500, RIFLE_STOCK);
			ITEM(arifle_SPAR_01_GL_khk_F, 2750, RIFLE_STOCK);

			ITEM(arifle_SPAR_01_snd_F, 2500, RIFLE_STOCK);
			ITEM(arifle_SPAR_01_GL_snd_F, 2750, RIFLE_STOCK);

			ITEM(arifle_AK12U_F, 3250, RIFLE_STOCK);
			ITEM(arifle_AK12_F, 3500, RIFLE_STOCK);
			ITEM(arifle_AK12_GL_F, 3750, RIFLE_STOCK);

			ITEM(arifle_AK12U_arid_F, 3250, RIFLE_STOCK);
			ITEM(arifle_AK12_arid_F, 3500, RIFLE_STOCK);
			ITEM(arifle_AK12_GL_arid_F, 3750, RIFLE_STOCK);

			ITEM(arifle_AK12U_lush_F, 3250, RIFLE_STOCK);
			ITEM(arifle_AK12_lush_F, 3500, RIFLE_STOCK);
			ITEM(arifle_AK12_GL_lush_F, 3750, RIFLE_STOCK);

			ITEM(arifle_ARX_blk_F, 4000, RIFLE_STOCK);
			ITEM(arifle_ARX_ghex_F, 4000, RIFLE_STOCK);
			ITEM(arifle_ARX_hex_F, 4000, RIFLE_STOCK);

			ITEM(arifle_SCAR_F, 5000, RIFLE_STOCK);
			ITEM(arifle_SCAR_grip_F, 5100, RIFLE_STOCK);
			ITEM(arifle_SCAR_short_F, 4800, RIFLE_STOCK);
			ITEM(arifle_SCAR_GL_F, 5250, RIFLE_STOCK);

			ITEM(arifle_SCAR_khaki_F, 5000, RIFLE_STOCK);
			ITEM(arifle_SCAR_grip_khaki_F, 5100, RIFLE_STOCK);
			ITEM(arifle_SCAR_short_khaki_F, 4800, RIFLE_STOCK);
			ITEM(arifle_SCAR_GL_khaki_F, 5250, RIFLE_STOCK);

			ITEM(arifle_SCAR_black_F, 5000, RIFLE_STOCK);
			ITEM(arifle_SCAR_grip_black_F, 5100, RIFLE_STOCK);
			ITEM(arifle_SCAR_short_black_F, 4800, RIFLE_STOCK);
			ITEM(arifle_SCAR_GL_black_F, 5250, RIFLE_STOCK);
		};

		class specialWeaponsAegis {
			displayName = "Special Weapons";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(GL_XM25_F, 1500, RIFLE_STOCK);
			ITEM(GL_M32_F, 1150, RIFLE_STOCK);
			ITEM(sgun_AA40_F, 1200, RIFLE_STOCK);
			
			ITEM(sgun_M4_F, 400, RIFLE_STOCK);

			ITEM(sgun_KSG_F, 650, RIFLE_STOCK);
		};

		class mgAegis {
			displayName = "Machine Guns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(arifle_RPK_F, 1500, RIFLE_STOCK);

			ITEM(arifle_CTARS_blk_F, 1850, RIFLE_STOCK);
			ITEM(arifle_CTARS_ghex_F, 1850, RIFLE_STOCK);
			ITEM(arifle_CTARS_hex_F, 1850, RIFLE_STOCK);

			ITEM(arifle_MX_SW_F, 2100, RIFLE_STOCK);
			ITEM(arifle_MX_SW_Black_F, 2100, RIFLE_STOCK);
			ITEM(arifle_MX_SW_khk_F, 2100, RIFLE_STOCK);

			ITEM(arifle_SPAR_02_blk_F, 2600, RIFLE_STOCK);
			ITEM(arifle_SPAR_02_khk_F, 2600, RIFLE_STOCK);
			ITEM(arifle_SPAR_02_snd_F, 2600, RIFLE_STOCK);

			ITEM(LMG_03_F, 2750, RIFLE_STOCK);
			ITEM(LMG_03_khk_F, 2750, RIFLE_STOCK);
			ITEM(LMG_03_snd_F, 2750, RIFLE_STOCK);

			ITEM(LMG_Mk200_F, 3000, RIFLE_STOCK);
			ITEM(LMG_Mk200_black_F, 3000, RIFLE_STOCK);
			ITEM(LMG_Mk200_khk_F, 3000, RIFLE_STOCK);
			ITEM(LMG_Mk200_plain_F, 3000, RIFLE_STOCK);

			ITEM(arifle_RPK12_F, 3600, RIFLE_STOCK);
			ITEM(arifle_RPK12_arid_F, 3600, RIFLE_STOCK);
			ITEM(arifle_RPK12_lush_F, 3600, RIFLE_STOCK);

			ITEM(LMG_Zafir_F, 3900, RIFLE_STOCK);
			ITEM(LMG_Zafir_black_F, 3900, RIFLE_STOCK);
			ITEM(LMG_Zafir_ghex_F, 3900, RIFLE_STOCK);

			ITEM(MMG_01_hex_F, 5000, 10);
			ITEM(MMG_01_tan_F, 5000, 10);
			ITEM(MMG_01_black_F, 5000, 10);
			ITEM(MMG_01_ghex_F, 5000, 10);

			ITEM(MMG_02_black_F, 4500, 10);
			ITEM(MMG_02_camo_F, 4500, 10);
			ITEM(MMG_02_sand_F, 4500, 10);
			ITEM(MMG_02_khaki_F, 4500, 10);
		};

		class sniperRiflesAegis {
			displayName = "DMRs, Sniper Rifles";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(srifle_DMR_07_blk_F, 2000, RIFLE_STOCK);
			ITEM(srifle_DMR_07_ghex_F, 2000, RIFLE_STOCK);
			ITEM(srifle_DMR_07_hex_F, 2000, RIFLE_STOCK);

			ITEM(arifle_MXM_F, 2200, RIFLE_STOCK);
			ITEM(arifle_MXM_Black_F, 2250, RIFLE_STOCK);
			ITEM(arifle_MXM_khk_F, 2250, RIFLE_STOCK);

			ITEM(arifle_MSBS65_Mark_F, 2400, RIFLE_STOCK);
			ITEM(arifle_MSBS65_Mark_black_F, 2400, RIFLE_STOCK);
			ITEM(arifle_MSBS65_Mark_camo_F, 2400, RIFLE_STOCK);
			ITEM(arifle_MSBS65_Mark_sand_F, 2400, RIFLE_STOCK);

			ITEM(srifle_DMR_01_F, 3000, RIFLE_STOCK);
			ITEM(srifle_DMR_01_black_F, 3000, RIFLE_STOCK);

			ITEM(srifle_DMR_06_hunter_F, 3450, RIFLE_STOCK);
			ITEM(srifle_DMR_06_camo_F, 3250, RIFLE_STOCK);
			ITEM(srifle_DMR_06_olive_F, 3250, RIFLE_STOCK);
			ITEM(srifle_DMR_06_black_F, 3250, RIFLE_STOCK);

			ITEM(srifle_DMR_03_F, 3550, RIFLE_STOCK);
			ITEM(srifle_DMR_03_multicam_F, 3550, RIFLE_STOCK);
			ITEM(srifle_DMR_03_khaki_F, 3550, RIFLE_STOCK);
			ITEM(srifle_DMR_03_tan_F, 3550, RIFLE_STOCK);
			ITEM(srifle_DMR_03_woodland_F, 3550, RIFLE_STOCK);

			ITEM(srifle_EBR_F, 3500, RIFLE_STOCK);
			ITEM(srifle_EBR_blk_F, 3500, RIFLE_STOCK);
			ITEM(srifle_EBR_khk_F, 3500, RIFLE_STOCK);

			ITEM(arifle_SPAR_03_blk_F, 3650, RIFLE_STOCK);
			ITEM(arifle_SPAR_03_khk_F, 3650, RIFLE_STOCK);
			ITEM(arifle_SPAR_03_snd_F, 3650, RIFLE_STOCK);

			ITEM(srifle_DMR_02_F, 4250, 10);
			ITEM(srifle_DMR_02_camo_F, 4250, 10);
			ITEM(srifle_DMR_02_sniper_F, 4250, 10);
			ITEM(srifle_DMR_02_tna_F, 4250, 10);

			ITEM(srifle_DMR_05_blk_F, 4250, 10);
			ITEM(srifle_DMR_05_hex_F, 4250, 10);
			ITEM(srifle_DMR_05_tan_f, 4250, 10);

			ITEM(srifle_DMR_04_F, 4500, 10);

			ITEM(srifle_LRR_F, 4750, 5);
			ITEM(srifle_LRR_tna_F, 4750, 5);
			ITEM(srifle_LRR_camo_F, 4750, 5);

			ITEM(srifle_GM6_F, 5500, 5);
			ITEM(srifle_GM6_camo_F, 5500, 5);
			ITEM(srifle_GM6_ghex_F, 5500, 5);
		};

		class smgAegis {
			displayName = "Submachine Guns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(SMG_03C_TR_black, 650, RIFLE_STOCK);
			ITEM(SMG_03C_TR_camo, 650, RIFLE_STOCK);
			ITEM(SMG_03C_TR_hex, 650, RIFLE_STOCK);
			ITEM(SMG_03C_TR_khaki, 650, RIFLE_STOCK);

			ITEM(SMG_03C_black, 750, RIFLE_STOCK);
			ITEM(SMG_03C_camo, 750, RIFLE_STOCK);
			ITEM(SMG_03C_hex, 750, RIFLE_STOCK);
			ITEM(SMG_03C_khaki, 750, RIFLE_STOCK);

			ITEM(SMG_03_TR_black, 725, RIFLE_STOCK);
			ITEM(SMG_03_TR_camo, 725, RIFLE_STOCK);
			ITEM(SMG_03_TR_hex, 725, RIFLE_STOCK);
			ITEM(SMG_03_TR_khaki, 725, RIFLE_STOCK);
			
			ITEM(SMG_03_black, 825, RIFLE_STOCK);
			ITEM(SMG_03_camo, 825, RIFLE_STOCK);
			ITEM(SMG_03_hex, 825, RIFLE_STOCK);
			ITEM(SMG_03_khaki, 825, RIFLE_STOCK);

			ITEM(SMG_04_blk_F, 950, RIFLE_STOCK);
			ITEM(SMG_04_khk_F, 950, RIFLE_STOCK);
			ITEM(SMG_04_snd_F, 950, RIFLE_STOCK);

			ITEM(SMG_05_F, 300, RIFLE_STOCK);
			ITEM(SMG_05_snd_F, 300, RIFLE_STOCK);

			ITEM(SMG_01_F, 300, RIFLE_STOCK);
			ITEM(SMG_01_black_F, 300, RIFLE_STOCK);
			ITEM(SMG_01_khk_F, 300, RIFLE_STOCK);
		};

		class magazinesAegis {
			displayName = "Magazines";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";


			///////////////////////////////////////////////////////
			// Special
			///////////////////////////////////////////////////////
			class Laserbatteries {
				price = 200;
				stock = MAGAZINE_STOCK;
			};

			class 20Rnd_AA40_HE {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class 20Rnd_AA40_Slug {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class 20Rnd_AA40_Pellets {
				price = 200;
				stock = MAGAZINE_STOCK;
			};

			class 8Rnd_12Gauge_Pellets {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 8Rnd_12Gauge_Slug {
				price = 45;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// Underbarrel
			///////////////////////////////////////////////////////
			class 1Rnd_Pellets_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_HE_Grenade_shell {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class UGL_FlareWhite_F {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class UGL_FlareGreen_F {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class UGL_FlareRed_F {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class UGL_FlareYellow_F {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class UGL_FlareCIR_F {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_Smoke_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokeRed_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokeGreen_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokeYellow_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokePurple_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokeBlue_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokeOrange_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};

			class 3Rnd_HE_Grenade_shell {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareWhite_F {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareGreen_F {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareRed_F {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareYellow_F {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareCIR_F {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_Smoke_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeRed_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeGreen_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeYellow_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokePurple_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeBlue_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeOrange_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};

			class 6Rnd_HE_Grenade_shell {
				price = 750;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_UGL_FlareWhite_F {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_UGL_FlareGreen_F {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_UGL_FlareRed_F {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_UGL_FlareYellow_F {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_UGL_FlareCIR_F {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_Smoke_Grenade_shell {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_SmokeRed_Grenade_shell {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_SmokeGreen_Grenade_shell {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_SmokeYellow_Grenade_shell {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_SmokePurple_Grenade_shell {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_SmokeBlue_Grenade_shell {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_SmokeOrange_Grenade_shell {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_Pellets_Grenade_shell {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_APERSMine_Grenade_shell {
				price = 800;
				stock = MAGAZINE_STOCK;
			};

			class 5Rnd_25x40mm_HE {
				price = 650;
				stock = MAGAZINE_STOCK;
			};
			class 5Rnd_25x40mm_airburst {
				price = 900;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// Pistols, SMGs
			///////////////////////////////////////////////////////
			class 9Rnd_45ACP_Mag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_45ACP_Cylinder {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class 11Rnd_45ACP_Mag {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 16Rnd_9x21_Mag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 16Rnd_9x21_red_Mag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 16Rnd_9x21_green_Mag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 16Rnd_9x21_yellow_Mag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 17Rnd_9x21_Mag {
				price = 55;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Mag {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Red_Mag {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Yellow_Mag {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Green_Mag {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 10Rnd_9x21_Mag {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class 7Rnd_127x33_Mag {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 40Rnd_460x30_Mag_F {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class 20Rnd_460x30_Mag_F {
				price = 80;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// RIFLES
			///////////////////////////////////////////////////////
			class 30Rnd_65x39_caseless_green {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_green_mag_Tracer {
				price = 210;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_556x45_Stanag {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Tracer_Red {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Tracer_Green {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Tracer_Yellow {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_red {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_green {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Sand_red {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Sand_Tracer_Red {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Sand_Tracer_Green {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Sand_Tracer_Yellow {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			
			class 150Rnd_556x45_Drum_Mag_Tracer_F {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 150Rnd_556x45_Drum_Sand_Mag_F {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 150Rnd_556x45_Drum_Green_Mag_F {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 150Rnd_556x45_Drum_Sand_Mag_Tracer_F {
				price = 375;
				stock = MAGAZINE_STOCK;
			};
			class 150Rnd_556x45_Drum_Green_Mag_Tracer_F {
				price = 375;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_65x39_caseless_mag {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_khaki_mag {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_black_mag {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_mag_Tracer {
				price = 210;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_khaki_mag_Tracer {
				price = 210;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_black_mag_Tracer {
				price = 210;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_65x39_caseless_mag {
				price = 650;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_65x39_caseless_khaki_mag {
				price = 650;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_65x39_caseless_black_mag {
				price = 650;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_65x39_caseless_mag_Tracer {
				price = 700;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_65x39_caseless_khaki_mag_tracer {
				price = 700;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_65x39_caseless_black_mag_tracer {
				price = 700;
				stock = MAGAZINE_STOCK;
			};
			
			class 30Rnd_580x42_Mag_F {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_580x42_Mag_Tracer_F {
				price = 160;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_580x42_Mag_F {
				price = 500;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_580x42_Mag_Tracer_F {
				price = 550;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_580x42_hex_Mag_F {
				price = 500;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_580x42_hex_Mag_Tracer_F {
				price = 550;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_580x42_ghex_Mag_F {
				price = 500;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_580x42_ghex_Mag_Tracer_F {
				price = 550;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_545x39_Mag_F {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_545x39_Mag_Green_F {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_545x39_Mag_Tracer_F {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_545x39_Mag_Tracer_Green_F {
				price = 60;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_545x39_AK12_Mag_F {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_545x39_AK12_Mag_Tracer_F {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_545x39_AK12_Lush_Mag_F {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_545x39_AK12_Lush_Mag_Tracer_F {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_545x39_AK12_Arid_Mag_F {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_545x39_AK12_Arid_Mag_Tracer_F {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_545x39_Black_Mag_F {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_545x39_Black_Mag_Tracer_F {
				price = 60;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_762x39_Mag_F {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_762x39_Mag_Green_F {
				price = 375;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_762x39_Mag_Tracer_F {
				price = 375;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_762x39_Mag_Tracer_Green_F {
				price = 375;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_762x39_AK12_Mag_F {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_762x39_AK12_Mag_Tracer_F {
				price = 375;
				stock = MAGAZINE_STOCK;
			};
			class 75Rnd_762x39_Mag_F {
				price = 900;
				stock = MAGAZINE_STOCK;
			};
			class 75Rnd_762x39_Mag_Tracer_F {
				price = 925;
				stock = MAGAZINE_STOCK;
			};

			class 30rnd_762x39_AK12_Lush_Mag_F {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 30rnd_762x39_AK12_Lush_Mag_Tracer_F {
				price = 375;
				stock = MAGAZINE_STOCK;
			};
			class 75rnd_762x39_AK12_Lush_Mag_F {
				price = 900;
				stock = MAGAZINE_STOCK;
			};
			class 75rnd_762x39_AK12_Lush_Mag_Tracer_F {
				price = 925;
				stock = MAGAZINE_STOCK;
			};

			class 30rnd_762x39_AK12_Arid_Mag_F {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 30rnd_762x39_AK12_Arid_Mag_Tracer_F {
				price = 375;
				stock = MAGAZINE_STOCK;
			};
			class 75rnd_762x39_AK12_Arid_Mag_F {
				price = 900;
				stock = MAGAZINE_STOCK;
			};
			class 75rnd_762x39_AK12_Arid_Mag_Tracer_F {
				price = 925;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_65x39_caseless_msbs_mag {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_msbs_mag_Tracer {
				price = 225;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_12Gauge_Pellets {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_12Gauge_Slug {
				price = 50;
				stock = MAGAZINE_STOCK;
			};

			class 10Rnd_50BW_Mag_F {
				price = 500;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// DMRs, Sniper Rifles
			///////////////////////////////////////////////////////
			class 5Rnd_127x108_Mag {
				price = 700;
				stock = MAGAZINE_STOCK;
			};
			class 5Rnd_127x108_APDS_Mag {
				price = 800;
				stock = MAGAZINE_STOCK;
			};

			class 7Rnd_408_Mag {
				price = 600;
				stock = MAGAZINE_STOCK;
			};

			class 20Rnd_762x51_Mag {
				price = 500;
				stock = MAGAZINE_STOCK;
			};
			class 10Rnd_Mk14_762x51_Mag {
				price = 300;
				stock = MAGAZINE_STOCK;
			};

			class 10Rnd_762x54_Mag {
				price = 225;
				stock = MAGAZINE_STOCK;
			};

			class 10Rnd_127x54_Mag {
				price = 600;
				stock = MAGAZINE_STOCK;
			};

			class 10Rnd_93x64_DMR_05_Mag {
				price = 500;
				stock = MAGAZINE_STOCK;
			};

			class 10Rnd_338_Mag {
				price = 500;
				stock = MAGAZINE_STOCK;
			};

			
			///////////////////////////////////////////////////////
			// MGs
			///////////////////////////////////////////////////////
			class 200Rnd_556x45_Box_F {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class 200Rnd_556x45_Box_Red_F {
				price = 275;
				stock = MAGAZINE_STOCK;
			};
			class 200Rnd_556x45_Box_Tracer_F {
				price = 275;
				stock = MAGAZINE_STOCK;
			};
			class 200Rnd_556x45_Box_Tracer_Red_F {
				price = 275;
				stock = MAGAZINE_STOCK;
			};

			class 200Rnd_65x39_cased_Box {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 200Rnd_65x39_cased_Box_Tracer {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class 200Rnd_65x39_cased_Box_Red {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 200Rnd_65x39_cased_Box_Tracer_Red {
				price = 400;
				stock = MAGAZINE_STOCK;
			};

			class 150Rnd_762x54_Box {
				price = 500;
				stock = MAGAZINE_STOCK;
			};
			class 150Rnd_762x54_Box_Tracer {
				price = 550;
				stock = MAGAZINE_STOCK;
			};

			class 130Rnd_338_Mag {
				price = 900;
				stock = MAGAZINE_STOCK;
			};

			class 150Rnd_93x64_Mag {
				price = 1200;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// SMGs
			///////////////////////////////////////////////////////
			class 50Rnd_570x28_SMG_03 {
				price = 100;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_9x21_Mag_SMG_02 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Mag_SMG_02_Tracer_Red {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Mag_SMG_02_Tracer_Yellow {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Mag_SMG_02_Tracer_Green {
				price = 65;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_45ACP_Mag_SMG_01 {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_45ACP_Mag_SMG_01_Tracer_Green {
				price = 85;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_45ACP_Mag_SMG_01_Tracer_Red {
				price = 85;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_45ACP_Mag_SMG_01_Tracer_Yellow {
				price = 85;
				stock = MAGAZINE_STOCK;
			};
		};

		///////////////////////////////////////////////////////
		// Vanilla
		///////////////////////////////////////////////////////
		class handgunsVanilla {
			displayName = "Handguns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\handgun_ca.paa";

			ITEM(hgun_Pistol_heavy_01_F, 700, PISTOL_STOCK);
			ITEM(hgun_Pistol_heavy_01_green_F, 700, PISTOL_STOCK);
			ITEM(hgun_ACPC2_F, 250, PISTOL_STOCK);
			ITEM(hgun_P07_F, 150, PISTOL_STOCK);
			ITEM(hgun_P07_khk_F, 150, PISTOL_STOCK);
			ITEM(hgun_Rook40_F, 150, PISTOL_STOCK);
			ITEM(hgun_Pistol_heavy_02_F, 800, PISTOL_STOCK);
		};

		class launchersVanilla {
			displayName = "Rocket Launchers";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\secondaryWeapon_ca.paa";

			ITEM(launch_RPG7_F, 1500, 15);

			ITEM(launch_NLAW_F, 3250, 10);

			ITEM(launch_RPG32_F, 2500, LAUNCHER_STOCK);
			ITEM(launch_RPG32_green_F, 2500, LAUNCHER_STOCK);
			ITEM(launch_RPG32_ghex_F, 2500, LAUNCHER_STOCK);

			ITEM(launch_MRAWS_olive_F, 2750, LAUNCHER_STOCK);
			ITEM(launch_MRAWS_olive_rail_F, 2500, LAUNCHER_STOCK);
			ITEM(launch_MRAWS_green_F, 2750, LAUNCHER_STOCK);
			ITEM(launch_MRAWS_green_rail_F, 2500, LAUNCHER_STOCK);
			ITEM(launch_MRAWS_sand_F, 2750, LAUNCHER_STOCK);
			ITEM(launch_MRAWS_sand_rail_F, 2500, LAUNCHER_STOCK);

			ITEM(launch_O_Vorona_brown_F, 4000, 4);
			ITEM(launch_O_Vorona_green_F, 4000, 4);

			ITEM(launch_B_Titan_F, 4500, 3);
			ITEM(launch_I_Titan_F, 4500, 3);
			ITEM(launch_O_Titan_F, 4500, 3);
			ITEM(launch_B_Titan_short_F, 5000, 3);
			ITEM(launch_I_Titan_short_F, 5000, 3);
			ITEM(launch_O_Titan_short_F, 5000, 3);
		};

		class launcherMagazinesVanilla {
			displayName = "Launcher Ammunition";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

			class RPG7_F {
				price = 300;
				stock = 50;
			};
			class NLAW_F {
				price = 750;
				stock = 30;
			};
			class MRAWS_HEAT_F {
				price = 450;
				stock = 50;
			};
			class MRAWS_HEAT55_F {
				price = 300;
				stock = 50;
			};
			class MRAWS_HE_F {
				price = 500;
				stock = 50;
			};
			class RPG32_HE_F {
				price = 500;
				stock = 50;
			};
			class RPG32_F {
				price = 450;
				stock = 50;
			};
			class Titan_AA {
				price = 1250;
				stock = 15;
			};
			class Titan_AP {
				price = 1500;
				stock = 15;
			};
			class Titan_AT {
				price = 1600;
				stock = 15;
			};
			class Vorona_HE {
				price = 1000;
				stock = 15;
			};
			class Vorona_HEAT {
				price = 1200;
				stock = 15;
			};
		};

		class riflesVanilla {
			displayName = "Assault Rifles";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(arifle_AKS_F, 350, RIFLE_STOCK);

			ITEM(arifle_Mk20_plain_F, 1000, RIFLE_STOCK);
			ITEM(arifle_Mk20C_plain_F, 850, RIFLE_STOCK);
			ITEM(arifle_Mk20_GL_plain_F, 1250, RIFLE_STOCK);

			ITEM(arifle_TRG21_F, 800, RIFLE_STOCK);
			ITEM(arifle_TRG20_F, 650, RIFLE_STOCK);
			ITEM(arifle_TRG21_GL_F, 1050, RIFLE_STOCK);

			ITEM(arifle_AKM_F, 1250, RIFLE_STOCK);

			ITEM(arifle_Katiba_F, 1500, RIFLE_STOCK);
			ITEM(arifle_Katiba_C_F, 1350, RIFLE_STOCK);
			ITEM(arifle_Katiba_GL_F, 1750, RIFLE_STOCK);

			ITEM(arifle_CTAR_blk_F, 1750, RIFLE_STOCK);
			ITEM(arifle_CTAR_GL_blk_F, 2000, RIFLE_STOCK);

			ITEM(arifle_CTAR_ghex_F, 1750, RIFLE_STOCK);
			ITEM(arifle_CTAR_GL_ghex_F, 2000, RIFLE_STOCK);

			ITEM(arifle_CTAR_hex_F, 1750, RIFLE_STOCK);
			ITEM(arifle_CTAR_GL_hex_F, 2000, RIFLE_STOCK);

			ITEM(arifle_MX_F, 2000, RIFLE_STOCK);
			ITEM(arifle_MXC_F, 1850, RIFLE_STOCK);
			ITEM(arifle_MX_GL_F, 2250, RIFLE_STOCK);

			ITEM(arifle_MX_Black_F, 2000, RIFLE_STOCK);
			ITEM(arifle_MXC_Black_F, 1850, RIFLE_STOCK);
			ITEM(arifle_MX_GL_Black_F, 2250, RIFLE_STOCK);

			ITEM(arifle_MX_khk_F, 2000, RIFLE_STOCK);
			ITEM(arifle_MXC_khk_F, 1850, RIFLE_STOCK);
			ITEM(arifle_MX_GL_khk_F, 2250, RIFLE_STOCK);

			ITEM(arifle_MSBS65_F, 2150, RIFLE_STOCK);
			ITEM(arifle_MSBS65_UBS_F, 2250, RIFLE_STOCK);
			ITEM(arifle_MSBS65_GL_F, 2350, RIFLE_STOCK);

			ITEM(arifle_MSBS65_black_F, 2150, RIFLE_STOCK);
			ITEM(arifle_MSBS65_UBS_black_F, 2250, RIFLE_STOCK);
			ITEM(arifle_MSBS65_GL_black_F, 2350, RIFLE_STOCK);

			ITEM(arifle_MSBS65_camo_F, 2150, RIFLE_STOCK);
			ITEM(arifle_MSBS65_UBS_camo_F, 2250, RIFLE_STOCK);
			ITEM(arifle_MSBS65_GL_camo_F, 2350, RIFLE_STOCK);

			ITEM(arifle_MSBS65_sand_F, 2150, RIFLE_STOCK);
			ITEM(arifle_MSBS65_UBS_sand_F, 2250, RIFLE_STOCK);
			ITEM(arifle_MSBS65_GL_sand_F, 2350, RIFLE_STOCK);

			ITEM(arifle_SPAR_01_blk_F, 2500, RIFLE_STOCK);
			ITEM(arifle_SPAR_01_GL_blk_F, 2750, RIFLE_STOCK);

			ITEM(arifle_SPAR_01_khk_F, 2500, RIFLE_STOCK);
			ITEM(arifle_SPAR_01_GL_khk_F, 2750, RIFLE_STOCK);

			ITEM(arifle_SPAR_01_snd_F, 2500, RIFLE_STOCK);
			ITEM(arifle_SPAR_01_GL_snd_F, 2750, RIFLE_STOCK);

			ITEM(arifle_AK12U_F, 3250, RIFLE_STOCK);
			ITEM(arifle_AK12_F, 3500, RIFLE_STOCK);
			ITEM(arifle_AK12_GL_F, 3750, RIFLE_STOCK);

			ITEM(arifle_AK12U_arid_F, 3250, RIFLE_STOCK);
			ITEM(arifle_AK12_arid_F, 3500, RIFLE_STOCK);
			ITEM(arifle_AK12_GL_arid_F, 3750, RIFLE_STOCK);

			ITEM(arifle_AK12U_lush_F, 3250, RIFLE_STOCK);
			ITEM(arifle_AK12_lush_F, 3500, RIFLE_STOCK);
			ITEM(arifle_AK12_GL_lush_F, 3750, RIFLE_STOCK);

			ITEM(arifle_ARX_blk_F, 4000, RIFLE_STOCK);
			ITEM(arifle_ARX_ghex_F, 4000, RIFLE_STOCK);
			ITEM(arifle_ARX_hex_F, 4000, RIFLE_STOCK);
		};

		class sniperRiflesVanilla {
			displayName = "DMRs, Sniper Rifles";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(srifle_DMR_07_blk_F, 2000, RIFLE_STOCK);
			ITEM(srifle_DMR_07_ghex_F, 2000, RIFLE_STOCK);
			ITEM(srifle_DMR_07_hex_F, 2000, RIFLE_STOCK);

			ITEM(arifle_MXM_F, 2200, RIFLE_STOCK);
			ITEM(arifle_MXM_Black_F, 2250, RIFLE_STOCK);
			ITEM(arifle_MXM_khk_F, 2250, RIFLE_STOCK);

			ITEM(arifle_MSBS65_Mark_F, 2400, RIFLE_STOCK);
			ITEM(arifle_MSBS65_Mark_black_F, 2400, RIFLE_STOCK);
			ITEM(arifle_MSBS65_Mark_camo_F, 2400, RIFLE_STOCK);
			ITEM(arifle_MSBS65_Mark_sand_F, 2400, RIFLE_STOCK);

			ITEM(srifle_DMR_01_F, 3000, RIFLE_STOCK);

			ITEM(srifle_DMR_06_hunter_F, 3450, RIFLE_STOCK);
			ITEM(srifle_DMR_06_camo_F, 3250, RIFLE_STOCK);
			ITEM(srifle_DMR_06_olive_F, 3250, RIFLE_STOCK);

			ITEM(srifle_DMR_03_F, 3550, RIFLE_STOCK);
			ITEM(srifle_DMR_03_multicam_F, 3550, RIFLE_STOCK);
			ITEM(srifle_DMR_03_khaki_F, 3550, RIFLE_STOCK);
			ITEM(srifle_DMR_03_tan_F, 3550, RIFLE_STOCK);
			ITEM(srifle_DMR_03_woodland_F, 3550, RIFLE_STOCK);

			ITEM(srifle_EBR_F, 3500, RIFLE_STOCK);

			ITEM(arifle_SPAR_03_blk_F, 3650, RIFLE_STOCK);
			ITEM(arifle_SPAR_03_khk_F, 3650, RIFLE_STOCK);
			ITEM(arifle_SPAR_03_snd_F, 3650, RIFLE_STOCK);

			ITEM(srifle_DMR_02_F, 4250, 10);
			ITEM(srifle_DMR_02_camo_F, 4250, 10);
			ITEM(srifle_DMR_02_sniper_F, 4250, 10);

			ITEM(srifle_DMR_05_blk_F, 4250, 10);
			ITEM(srifle_DMR_05_hex_F, 4250, 10);
			ITEM(srifle_DMR_05_tan_f, 4250, 10);

			ITEM(srifle_DMR_04_F, 4500, 10);

			ITEM(srifle_LRR_F, 4750, 5);
			ITEM(srifle_LRR_tna_F, 4750, 5);
			ITEM(srifle_LRR_camo_F, 4750, 5);

			ITEM(srifle_GM6_F, 5500, 5);
			ITEM(srifle_GM6_camo_F, 5500, 5);
			ITEM(srifle_GM6_ghex_F, 5500, 5);
		};

		class mgVanilla {
			displayName = "Machine Guns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(arifle_CTARS_blk_F, 1850, RIFLE_STOCK);
			ITEM(arifle_CTARS_ghex_F, 1850, RIFLE_STOCK);
			ITEM(arifle_CTARS_hex_F, 1850, RIFLE_STOCK);

			ITEM(arifle_MX_SW_F, 2100, RIFLE_STOCK);
			ITEM(arifle_MX_SW_Black_F, 2100, RIFLE_STOCK);
			ITEM(arifle_MX_SW_khk_F, 2100, RIFLE_STOCK);

			ITEM(arifle_SPAR_02_blk_F, 2600, RIFLE_STOCK);
			ITEM(arifle_SPAR_02_khk_F, 2600, RIFLE_STOCK);
			ITEM(arifle_SPAR_02_snd_F, 2600, RIFLE_STOCK);

			ITEM(LMG_03_F, 2750, RIFLE_STOCK);
			
			ITEM(LMG_Mk200_F, 3000, RIFLE_STOCK);
			ITEM(LMG_Mk200_black_F, 3000, RIFLE_STOCK);

			ITEM(arifle_RPK12_F, 3600, RIFLE_STOCK);
			ITEM(arifle_RPK12_arid_F, 3600, RIFLE_STOCK);
			ITEM(arifle_RPK12_lush_F, 3600, RIFLE_STOCK);

			ITEM(LMG_Zafir_F, 3900, RIFLE_STOCK);

			ITEM(MMG_01_hex_F, 5000, 10);
			ITEM(MMG_01_tan_F, 5000, 10);

			ITEM(MMG_02_black_F, 4500, 10);
			ITEM(MMG_02_camo_F, 4500, 10);
			ITEM(MMG_02_sand_F, 4500, 10);
		};

		class smgVanilla {
			displayName = "Submachine Guns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(SMG_03C_TR_black, 650, RIFLE_STOCK);
			ITEM(SMG_03C_TR_camo, 650, RIFLE_STOCK);
			ITEM(SMG_03C_TR_hex, 650, RIFLE_STOCK);
			ITEM(SMG_03C_TR_khaki, 650, RIFLE_STOCK);

			ITEM(SMG_03C_black, 750, RIFLE_STOCK);
			ITEM(SMG_03C_camo, 750, RIFLE_STOCK);
			ITEM(SMG_03C_hex, 750, RIFLE_STOCK);
			ITEM(SMG_03C_khaki, 750, RIFLE_STOCK);

			ITEM(SMG_03_TR_black, 725, RIFLE_STOCK);
			ITEM(SMG_03_TR_camo, 725, RIFLE_STOCK);
			ITEM(SMG_03_TR_hex, 725, RIFLE_STOCK);
			ITEM(SMG_03_TR_khaki, 725, RIFLE_STOCK);
			
			ITEM(SMG_03_black, 825, RIFLE_STOCK);
			ITEM(SMG_03_camo, 825, RIFLE_STOCK);
			ITEM(SMG_03_hex, 825, RIFLE_STOCK);
			ITEM(SMG_03_khaki, 825, RIFLE_STOCK);

			ITEM(SMG_05_F, 300, RIFLE_STOCK);
			ITEM(SMG_01_F, 300, RIFLE_STOCK);
		};

		class navigationVanilla {
			displayName = "Navigation";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\compass_ca.paa";

			ITEM(ItemGPS, 300, NN_STOCK);
			ITEM(ItemRadio, 75, NN_STOCK);
			ITEM(Rangefinder, 400, NN_STOCK);
			ITEM(Laserdesignator, 1500, NN_STOCK);
			ITEM(Laserdesignator_02, 1500, NN_STOCK);
			ITEM(Laserdesignator_03, 1500, NN_STOCK);
			ITEM(NVGoggles, 500, NN_STOCK);
			ITEM(NVGoggles_INDEP, 1000, NN_STOCK);
			ITEM(NVGoggles_OPFOR, 1000, NN_STOCK);
			ITEM(NVGoggles_tna_F, 1000, NN_STOCK);
			ITEM(O_NVGoggles_hex_F, 1000, NN_STOCK);
			ITEM(O_NVGoggles_urb_F, 1000, NN_STOCK);
			ITEM(O_NVGoggles_ghex_F, 1000, NN_STOCK);
			ITEM(O_NVGoggles_grn_F, 1000, NN_STOCK);
		};
		class underbarrelVanilla {
			displayName = "Underbarrel Accessories";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemBipod_ca.paa";

			ITEM(bipod_02_F_arid, 100, 50);
			ITEM(bipod_03_F_blk, 100, 50);
			ITEM(bipod_02_F_blk, 100, 50);
			ITEM(bipod_01_F_blk, 100, 50);
			ITEM(bipod_02_F_hex, 100, 50);
			ITEM(bipod_01_F_khk, 100, 50);
			ITEM(bipod_02_F_lush, 100, 50);
			ITEM(bipod_01_F_mtp, 100, 50);
			ITEM(bipod_03_F_oli, 100, 50);
			ITEM(bipod_01_F_snd, 100, 50);
			ITEM(bipod_02_F_tan, 100, 50);
		};
		class pointersVanilla {
			displayName = "Pointer Accessories";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemAcc_ca.paa";

			ITEM(acc_flashlight, 75, PN_STOCK);
			ITEM(acc_flashlight_smg_01, 75, PN_STOCK);
			ITEM(acc_pointer_IR, 100, PN_STOCK);
			ITEM(acc_flashlight_pistol, 75, PN_STOCK);
		};
		class muzzlesVanilla {
			displayName = "Muzzle Accessories";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemMuzzle_ca.paa";

			ITEM(muzzle_snds_338_black, 500, MZ_STOCK); //5
			ITEM(muzzle_snds_338_green, 500, MZ_STOCK);
			ITEM(muzzle_snds_338_sand, 500, MZ_STOCK);
			ITEM(muzzle_snds_93mmg, 600, MZ_STOCK); //4
			ITEM(muzzle_snds_93mmg_tan, 600, MZ_STOCK);
			ITEM(muzzle_snds_acp, 150, MZ_STOCK);
			ITEM(muzzle_snds_B, 200, MZ_STOCK);//3
			ITEM(muzzle_snds_B_khk_F, 200, MZ_STOCK);
			ITEM(muzzle_snds_B_snd_F, 200, MZ_STOCK);
			ITEM(muzzle_snds_H, 200, MZ_STOCK);//2
			ITEM(muzzle_snds_H_khk_F, 200, MZ_STOCK);//2
			ITEM(muzzle_snds_H_snd_F, 200, MZ_STOCK);
			ITEM(muzzle_snds_H_MG, 200, MZ_STOCK);
			ITEM(muzzle_snds_H_SW, 200, MZ_STOCK);
			ITEM(muzzle_snds_L, 200, MZ_STOCK);//1
			ITEM(muzzle_snds_M, 200, MZ_STOCK);
			ITEM(muzzle_snds_58_blk_F, 150, MZ_STOCK);//1
			ITEM(muzzle_snds_m_khk_F, 200, MZ_STOCK);
			ITEM(muzzle_snds_m_snd_F, 200, MZ_STOCK);
			ITEM(muzzle_snds_58_wdm_F, 150, MZ_STOCK);//1
			ITEM(muzzle_snds_58_ghex_F, 150, MZ_STOCK);
			ITEM(muzzle_snds_58_hex_F, 150, MZ_STOCK);
			ITEM(muzzle_snds_65_TI_blk_F, 350, MZ_STOCK); //2
			ITEM(muzzle_snds_65_TI_hex_F, 350, MZ_STOCK);
			ITEM(muzzle_snds_65_TI_ghex_F, 350, MZ_STOCK);
			ITEM(muzzle_snds_H_MG_blk_F, 200, MZ_STOCK);
			ITEM(muzzle_snds_H_MG_khk_F, 200, MZ_STOCK);
		};
		class opticsVanilla {
			displayName = "Optics Accessories";
			picture = "";

			class optic_tws {
				price = 2500;
				stock = 5;
			};
			class optic_tws_mg {
				price = 2500;
				stock = 5;
			};
			class optic_Hamr_khk_F {
				price = 700;
				stock = 100;
			};
			class optic_SOS_khk_F {
				price = 800;
				stock = 100;
			};
			class optic_Arco_ghex_F {
				price = 650;
				stock = 100;
			};
			class optic_Arco_blk_F {
				price = 650;
				stock = 100;
			};
			class optic_Arco_AK_blk_F {
				price = 650;
				stock = 100;
			};
			class optic_Arco_AK_lush_F {
				price = 650;
				stock = 100;
			};
			class optic_Arco_AK_arid_F {
				price = 650;
				stock = 100;
			};
			class optic_Arco_arid_F {
				price = 650;
				stock = 100;
			};
			class optic_Arco_lush_F {
				price = 650;
				stock = 100;
			};
			class optic_DMS_ghex_F {
				price = 900;
				stock = 100;
			};
			class optic_ERCO_blk_F {
				price = 800;
				stock = 100;
			};
			class optic_ERCO_khk_F {
				price = 800;
				stock = 100;
			};
			class optic_ERCO_snd_F {
				price = 800;
				stock = 100;
			};
			class optic_LRPS_ghex_F {
				price = 1000;
				stock = 100;
			};
			class optic_LRPS_tna_F {
				price = 1000;
				stock = 100;
			};
			class optic_Holosight_blk_F {
				price = 250;
				stock = 100;
			};
			class optic_Holosight_lush_F {
				price = 250;
				stock = 100;
			};
			class optic_Holosight_arid_F {
				price = 250;
				stock = 100;
			};
			class optic_Holosight_khk_F {
				price = 250;
				stock = 100;
			};
			class optic_Holosight_smg_blk_F {
				price = 250;
				stock = 100;
			};
			class optic_Holosight_smg_khk_F {
				price = 250;
				stock = 100;
			};
			class optic_DMS_weathered_Kir_F {
				price = 1000;
				stock = 100;
			};
			class optic_Aco {
				price = 200; 
				stock = 100;
			};
			class optic_ACO_grn {
				price = 200; 
				stock = 100;
			};
			class optic_ACO_grn_smg {
				price = 200; 
				stock = 100;
			};
			class optic_Aco_smg {
				price = 200; 
				stock = 100;
			};
			class optic_AMS {
				price = 1200;
				stock = 100;
			};
			class optic_AMS_khk {
				price = 1200;
				stock = 100;
			};
			class optic_AMS_snd {
				price = 1200;
				stock = 100;
			};
			class optic_Arco {
				price = 650;
				stock = 100;
			};
			class optic_DMS {
				price = 1000;
				stock = 100;
			};
			class optic_Hamr {
				price = 700;
				stock = 100;
			};
			class optic_Holosight {
				price = 250;
				stock = 100;
			};
			class optic_Holosight_smg {
				price = 250;
				stock = 100;
			};
			class optic_KHS_blk {
				price = 1100;
				stock = 100;
			};
			class optic_KHS_hex {
				price = 1100;
				stock = 100;
			};
			class optic_KHS_old {
				price = 1100;
				stock = 100;
			};
			class optic_KHS_tan {
				price = 1100;
				stock = 100;
			};
			class optic_LRPS {
				price = 1000;
				stock = 100;
			};
			class optic_MRCO {
				price = 500;
				stock = 100;
			};
			class optic_MRD {
				price = 100;
				stock = 100;
			};
			class optic_MRD_black {
				price = 100;
				stock = 100;
			};
			class optic_NVS {
				price = 1500;
				stock = 100;
			};
			class optic_SOS {
				price = 800;
				stock = 100;
			};
			class optic_Yorris {
				price = 100;
				stock = 100;
			};
		};
		class magazinesVanilla {
			displayName = "Magazines";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

			class Laserbatteries {
				price = 200;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// Underbarrel
			///////////////////////////////////////////////////////
			class 1Rnd_HE_Grenade_shell {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class UGL_FlareWhite_F {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class UGL_FlareGreen_F {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class UGL_FlareRed_F {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class UGL_FlareYellow_F {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class UGL_FlareCIR_F {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_Smoke_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokeRed_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokeGreen_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokeYellow_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokePurple_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokeBlue_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokeOrange_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};

			class 3Rnd_HE_Grenade_shell {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareWhite_F {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareGreen_F {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareRed_F {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareYellow_F {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareCIR_F {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_Smoke_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeRed_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeGreen_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeYellow_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokePurple_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeBlue_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeOrange_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};


			///////////////////////////////////////////////////////
			// Pistols, SMGs
			///////////////////////////////////////////////////////
			class 9Rnd_45ACP_Mag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_45ACP_Cylinder {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class 11Rnd_45ACP_Mag {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 16Rnd_9x21_Mag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 16Rnd_9x21_red_Mag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 16Rnd_9x21_green_Mag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 16Rnd_9x21_yellow_Mag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Mag {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Red_Mag {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Yellow_Mag {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Green_Mag {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 10Rnd_9x21_Mag {
				price = 25;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// RIFLES
			///////////////////////////////////////////////////////
			class 30Rnd_65x39_caseless_green {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_green_mag_Tracer {
				price = 210;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_556x45_Stanag {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Tracer_Red {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Tracer_Green {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Tracer_Yellow {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_red {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_green {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Sand_red {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Sand_Tracer_Red {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Sand_Tracer_Green {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Sand_Tracer_Yellow {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			
			class 150Rnd_556x45_Drum_Mag_Tracer_F {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 150Rnd_556x45_Drum_Sand_Mag_F {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 150Rnd_556x45_Drum_Green_Mag_F {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 150Rnd_556x45_Drum_Sand_Mag_Tracer_F {
				price = 375;
				stock = MAGAZINE_STOCK;
			};
			class 150Rnd_556x45_Drum_Green_Mag_Tracer_F {
				price = 375;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_65x39_caseless_mag {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_khaki_mag {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_black_mag {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_mag_Tracer {
				price = 210;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_khaki_mag_Tracer {
				price = 210;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_black_mag_Tracer {
				price = 210;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_65x39_caseless_mag {
				price = 650;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_65x39_caseless_khaki_mag {
				price = 650;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_65x39_caseless_black_mag {
				price = 650;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_65x39_caseless_mag_Tracer {
				price = 700;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_65x39_caseless_khaki_mag_tracer {
				price = 700;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_65x39_caseless_black_mag_tracer {
				price = 700;
				stock = MAGAZINE_STOCK;
			};
			
			class 30Rnd_580x42_Mag_F {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_580x42_Mag_Tracer_F {
				price = 160;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_580x42_Mag_F {
				price = 500;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_580x42_Mag_Tracer_F {
				price = 550;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_580x42_hex_Mag_F {
				price = 500;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_580x42_hex_Mag_Tracer_F {
				price = 550;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_580x42_ghex_Mag_F {
				price = 500;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_580x42_ghex_Mag_Tracer_F {
				price = 550;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_545x39_Mag_F {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_545x39_Mag_Green_F {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_545x39_Mag_Tracer_F {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_545x39_Mag_Tracer_Green_F {
				price = 60;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_762x39_Mag_F {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_762x39_Mag_Green_F {
				price = 375;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_762x39_Mag_Tracer_F {
				price = 375;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_762x39_Mag_Tracer_Green_F {
				price = 375;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_762x39_AK12_Mag_F {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_762x39_AK12_Mag_Tracer_F {
				price = 375;
				stock = MAGAZINE_STOCK;
			};
			class 75Rnd_762x39_Mag_F {
				price = 900;
				stock = MAGAZINE_STOCK;
			};
			class 75Rnd_762x39_Mag_Tracer_F {
				price = 925;
				stock = MAGAZINE_STOCK;
			};

			class 30rnd_762x39_AK12_Lush_Mag_F {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 30rnd_762x39_AK12_Lush_Mag_Tracer_F {
				price = 375;
				stock = MAGAZINE_STOCK;
			};
			class 75rnd_762x39_AK12_Lush_Mag_F {
				price = 900;
				stock = MAGAZINE_STOCK;
			};
			class 75rnd_762x39_AK12_Lush_Mag_Tracer_F {
				price = 925;
				stock = MAGAZINE_STOCK;
			};

			class 30rnd_762x39_AK12_Arid_Mag_F {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 30rnd_762x39_AK12_Arid_Mag_Tracer_F {
				price = 375;
				stock = MAGAZINE_STOCK;
			};
			class 75rnd_762x39_AK12_Arid_Mag_F {
				price = 900;
				stock = MAGAZINE_STOCK;
			};
			class 75rnd_762x39_AK12_Arid_Mag_Tracer_F {
				price = 925;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_65x39_caseless_msbs_mag {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_msbs_mag_Tracer {
				price = 225;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_12Gauge_Pellets {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_12Gauge_Slug {
				price = 50;
				stock = MAGAZINE_STOCK;
			};

			class 10Rnd_50BW_Mag_F {
				price = 500;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// DMRs, Sniper Rifles
			///////////////////////////////////////////////////////
			class 5Rnd_127x108_Mag {
				price = 700;
				stock = MAGAZINE_STOCK;
			};
			class 5Rnd_127x108_APDS_Mag {
				price = 800;
				stock = MAGAZINE_STOCK;
			};

			class 7Rnd_408_Mag {
				price = 600;
				stock = MAGAZINE_STOCK;
			};

			class 20Rnd_762x51_Mag {
				price = 500;
				stock = MAGAZINE_STOCK;
			};
			class 10Rnd_Mk14_762x51_Mag {
				price = 300;
				stock = MAGAZINE_STOCK;
			};

			class 10Rnd_762x54_Mag {
				price = 225;
				stock = MAGAZINE_STOCK;
			};

			class 10Rnd_127x54_Mag {
				price = 600;
				stock = MAGAZINE_STOCK;
			};

			class 10Rnd_93x64_DMR_05_Mag {
				price = 500;
				stock = MAGAZINE_STOCK;
			};

			class 10Rnd_338_Mag {
				price = 500;
				stock = MAGAZINE_STOCK;
			};

			
			///////////////////////////////////////////////////////
			// MGs
			///////////////////////////////////////////////////////
			class 200Rnd_556x45_Box_F {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class 200Rnd_556x45_Box_Red_F {
				price = 275;
				stock = MAGAZINE_STOCK;
			};
			class 200Rnd_556x45_Box_Tracer_F {
				price = 275;
				stock = MAGAZINE_STOCK;
			};
			class 200Rnd_556x45_Box_Tracer_Red_F {
				price = 275;
				stock = MAGAZINE_STOCK;
			};

			class 200Rnd_65x39_cased_Box {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 200Rnd_65x39_cased_Box_Tracer {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class 200Rnd_65x39_cased_Box_Red {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 200Rnd_65x39_cased_Box_Tracer_Red {
				price = 400;
				stock = MAGAZINE_STOCK;
			};

			class 150Rnd_762x54_Box {
				price = 500;
				stock = MAGAZINE_STOCK;
			};
			class 150Rnd_762x54_Box_Tracer {
				price = 550;
				stock = MAGAZINE_STOCK;
			};

			class 130Rnd_338_Mag {
				price = 900;
				stock = MAGAZINE_STOCK;
			};

			class 150Rnd_93x64_Mag {
				price = 1200;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// SMGs
			///////////////////////////////////////////////////////
			class 50Rnd_570x28_SMG_03 {
				price = 100;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_9x21_Mag_SMG_02 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Mag_SMG_02_Tracer_Red {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Mag_SMG_02_Tracer_Yellow {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Mag_SMG_02_Tracer_Green {
				price = 65;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_45ACP_Mag_SMG_01 {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_45ACP_Mag_SMG_01_Tracer_Green {
				price = 85;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_45ACP_Mag_SMG_01_Tracer_Red {
				price = 85;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_45ACP_Mag_SMG_01_Tracer_Yellow {
				price = 85;
				stock = MAGAZINE_STOCK;
			};
		};
		class miscVanilla {
			displayName = "Misc";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\backpack_ca.paa";

			ITEM(B_Bergen_dgtl_F, 900, MISC_STOCK);
			ITEM(B_Bergen_hex_F, 900, MISC_STOCK);
			ITEM(B_Bergen_mcamo_F, 900, MISC_STOCK);
			ITEM(B_Bergen_tna_F, 900, MISC_STOCK);
			ITEM(B_ViperLightHarness_blk_F, 650, MISC_STOCK);
			ITEM(B_ViperLightHarness_ghex_F, 650, MISC_STOCK);
			ITEM(B_ViperLightHarness_hex_F, 650, MISC_STOCK);
			ITEM(B_ViperLightHarness_khk_F, 650, MISC_STOCK);
			ITEM(B_ViperLightHarness_oli_F, 650, MISC_STOCK);
			ITEM(B_ViperHarness_blk_F, 750, MISC_STOCK);
			ITEM(B_ViperHarness_ghex_F, 750, MISC_STOCK);
			ITEM(B_ViperHarness_hex_F, 750, MISC_STOCK);
			ITEM(B_ViperHarness_khk_F, 750, MISC_STOCK);
			ITEM(B_ViperHarness_oli_F, 750, MISC_STOCK);

			ITEM(V_PlateCarrierIAGL_oli, 650, MISC_STOCK);

			ITEM(U_I_FullGhillie_lsh, 1000, MISC_STOCK);
			ITEM(U_I_FullGhillie_ard, 1000, MISC_STOCK);
			ITEM(U_I_FullGhillie_sard, 1000, MISC_STOCK);

			ITEM(APERSMineDispenser_Mag, 400, MISC_STOCK);
			ITEM(ClaymoreDirectionalMine_Remote_Mag, 300, MISC_STOCK);
			ITEM(DemoCharge_Remote_Mag, 250, MISC_STOCK);
			ITEM(SatchelCharge_Remote_Mag, 500, MISC_STOCK);
			ITEM(SLAMDirectionalMine_Wire_Mag, 400, MISC_STOCK);
			ITEM(ATMine_Range_Mag, 200, MISC_STOCK);
			ITEM(APERSMine_Range_Mag, 200, MISC_STOCK);
			ITEM(APERSBoundingMine_Range_Mag, 150, MISC_STOCK);
			ITEM(APERSTripMine_Wire_Mag, 100, MISC_STOCK);
		};

		///////////////////////////////////////////////////////
		// Antistasi Units
		///////////////////////////////////////////////////////
		class handgunsAu {
			displayName = "Handguns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\handgun_ca.paa";

			ITEM(hgun_P07_khk_F, 250, PISTOL_STOCK);
			ITEM(hgun_P07_blk_F, 250, PISTOL_STOCK);
			ITEM(hgun_Rook40_F, 250, PISTOL_STOCK);

			ITEM(hgun_ACPC2_F, 300, PISTOL_STOCK);
			ITEM(WAM_hgun_ACPC2_blk_F, 300, PISTOL_STOCK);
			ITEM(WAM_hgun_ACPC2_KDW_F, 300, PISTOL_STOCK);

			ITEM(CUP_hgun_Compact, 200, PISTOL_STOCK);
			ITEM(CUP_hgun_Duty, 150, PISTOL_STOCK);
			ITEM(CUP_hgun_Phantom, 250, PISTOL_STOCK);

			ITEM(ptv_g19, 200, PISTOL_STOCK);
			ITEM(ptv_g19t, 250, PISTOL_STOCK);
			ITEM(ptv_p80, 200, PISTOL_STOCK);
			ITEM(ptv_p80t, 250, PISTOL_STOCK);

			ITEM(ptv_hk69, 500, PISTOL_STOCK);

			ITEM(hgun_G17_F, 200, PISTOL_STOCK);
			ITEM(hgun_G17_black_F, 200, PISTOL_STOCK);
			ITEM(hgun_G17_khaki_F, 200, PISTOL_STOCK);

			ITEM(hgun_Pistol_heavy_01_F, 450, PISTOL_STOCK);
			ITEM(hgun_Pistol_heavy_01_green_F, 450, PISTOL_STOCK);
			ITEM(MYR_pistol_heavy_1_black_sage, 450, PISTOL_STOCK);
			ITEM(MYR_pistol_heavy_1_green, 450, PISTOL_STOCK);

			ITEM(CUP_hgun_Deagle, 500, PISTOL_STOCK);
			ITEM(CUP_hgun_PB6P9, 350, PISTOL_STOCK);
			ITEM(CUP_hgun_PMM, 200, PISTOL_STOCK);
			ITEM(CUP_hgun_TaurusTracker455_gold, 500, PISTOL_STOCK);
			ITEM(CUP_hgun_TEC9, 300, PISTOL_STOCK);
			ITEM(CUP_hgun_Mac10, 400, PISTOL_STOCK);

			ITEM(hgun_Pistol_heavy_03_F, 400, PISTOL_STOCK);

			ITEM(hgun_Mk26_F, 850, PISTOL_STOCK);

			ITEM(hgun_Pistol_heavy_02_F, 800, PISTOL_STOCK);
		};

		class riflesAu {
			displayName = "Assault Rifles";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(arifle_AKS_F, 300, RIFLE_STOCK);

			ITEM(CUP_arifle_SAIGA_MK03, 250, RIFLE_STOCK);
			ITEM(CUP_arifle_SAIGA_MK03_Wood, 250, RIFLE_STOCK);

			ITEM(CUP_arifle_Fort224, 650, RIFLE_STOCK);

			ITEM(CUP_arifle_M16A2, 600, RIFLE_STOCK);
			ITEM(CUP_arifle_M16A2_GL, 850, RIFLE_STOCK);

			ITEM(CUP_arifle_M4A1, 750, RIFLE_STOCK);

			ITEM(CUP_arifle_M16A4_Base, 650, RIFLE_STOCK);
			ITEM(CUP_arifle_M16A4_GL, 900, RIFLE_STOCK);
			
			ITEM(arifle_TRG21_F, 800, RIFLE_STOCK);
			ITEM(arifle_TRG20_F, 650, RIFLE_STOCK);
			ITEM(arifle_TRG21_GL_F, 1050, RIFLE_STOCK);

			ITEM(arifle_Mk20_plain_F, 1000, RIFLE_STOCK);
			ITEM(arifle_Mk20C_plain_F, 850, RIFLE_STOCK);
			ITEM(arifle_Mk20_GL_plain_F, 1250, RIFLE_STOCK);

			ITEM(NAA_arifle_Mk20_black_F, 1000, RIFLE_STOCK);
			ITEM(NAA_arifle_Mk20C_black_F, 850, RIFLE_STOCK);
			ITEM(NAA_arifle_Mk20_GL_black_F, 1250, RIFLE_STOCK);

			ITEM(CUP_arifle_OTS14_GROZA, 900, RIFLE_STOCK);
			ITEM(CUP_arifle_OTS14_GROZA_GL, 1150, RIFLE_STOCK);

			ITEM(CUP_arifle_AK74M, 700, RIFLE_STOCK);
			ITEM(CUP_arifle_AK74M_camo, 700, RIFLE_STOCK);
			ITEM(CUP_arifle_AK74M_top_rail, 750, RIFLE_STOCK);
			ITEM(CUP_arifle_AK74M_top_rail_camo, 750, RIFLE_STOCK);
			ITEM(CUP_arifle_AK74M_railed_afg, 800, RIFLE_STOCK);
			ITEM(CUP_arifle_AK74M_railed_afg_camo, 800, RIFLE_STOCK);

			ITEM(CUP_arifle_AK74M_GL, 900, RIFLE_STOCK);
			ITEM(CUP_arifle_AK74M_GL_top_rail, 950, RIFLE_STOCK);
			ITEM(CUP_arifle_AK74M_GL_camo, 900, RIFLE_STOCK);
			ITEM(CUP_arifle_AK74M_GL_top_rail_camo, 950, RIFLE_STOCK);
			ITEM(CUP_arifle_AK74M_GL_railed, 1000, RIFLE_STOCK);
			ITEM(CUP_arifle_AK74M_GL_railed_camo, 1000, RIFLE_STOCK);


			ITEM(arifle_AKM_F, 1250, RIFLE_STOCK);
			ITEM(CUP_arifle_AK47_Early, 1200, RIFLE_STOCK);

			ITEM(CUP_arifle_AUG_A1, 1300, RIFLE_STOCK);

			ITEM(CUP_arifle_AK102, 1100, RIFLE_STOCK);
			ITEM(CUP_arifle_AK102_top_rail, 1150, RIFLE_STOCK);
			ITEM(CUP_arifle_AK102_railed, 1200, RIFLE_STOCK);

			ITEM(CUP_arifle_AK101, 1300, RIFLE_STOCK);
			ITEM(CUP_arifle_AK101_top_rail, 1350, RIFLE_STOCK);
			ITEM(CUP_arifle_AK101_railed, 1400, RIFLE_STOCK);

			ITEM(CUP_arifle_AK101_GL, 1500, RIFLE_STOCK);
			ITEM(CUP_arifle_AK101_GL_top_rail, 1550, RIFLE_STOCK);
			ITEM(CUP_arifle_AK101_GL_railed, 1600, RIFLE_STOCK);

			ITEM(CUP_arifle_AK108, 1400, RIFLE_STOCK);
			ITEM(CUP_arifle_AK108_top_rail, 1450, RIFLE_STOCK);
			ITEM(CUP_arifle_AK108_railed, 1500, RIFLE_STOCK);

			ITEM(CUP_arifle_AK108_GL, 1600, RIFLE_STOCK);
			ITEM(CUP_arifle_AK108_GL_top_rail, 1650, RIFLE_STOCK);
			ITEM(CUP_arifle_AK108_GL_railed, 1500, RIFLE_STOCK);


			ITEM(arifle_Katiba_F, 1500, RIFLE_STOCK);
			ITEM(arifle_Katiba_C_F, 1350, RIFLE_STOCK);
			ITEM(arifle_Katiba_GL_F, 1750, RIFLE_STOCK);

			ITEM(arifle_CTAR_blk_F, 1750, RIFLE_STOCK);
			ITEM(arifle_CTAR_GL_blk_F, 2000, RIFLE_STOCK);

			ITEM(arifle_CTAR_ghex_F, 1750, RIFLE_STOCK);
			ITEM(arifle_CTAR_GL_ghex_F, 2000, RIFLE_STOCK);

			ITEM(arifle_CTAR_hex_F, 1750, RIFLE_STOCK);
			ITEM(arifle_CTAR_GL_hex_F, 2000, RIFLE_STOCK);

			ITEM(arifle_MX_F, 2000, RIFLE_STOCK);
			ITEM(arifle_MXC_F, 1850, RIFLE_STOCK);
			ITEM(arifle_MX_GL_F, 2250, RIFLE_STOCK);

			ITEM(arifle_MX_Black_F, 2000, RIFLE_STOCK);
			ITEM(arifle_MXC_Black_F, 1850, RIFLE_STOCK);
			ITEM(arifle_MX_GL_Black_F, 2250, RIFLE_STOCK);

			ITEM(arifle_MX_khk_F, 2000, RIFLE_STOCK);
			ITEM(arifle_MXC_khk_F, 1850, RIFLE_STOCK);
			ITEM(arifle_MX_GL_khk_F, 2250, RIFLE_STOCK);

			ITEM(MYR_arifle_MX_blkANDkhk_F, 2000, RIFLE_STOCK);
			ITEM(MYR_arifle_MXC_blkANDkhk_F, 1850, RIFLE_STOCK);
			ITEM(MYR_arifle_MX_GL_blkANDkhk_F, 2250, RIFLE_STOCK);

			ITEM(CUP_arifle_ACRC_blk_68,2050,RIFLE_STOCK);
			ITEM(CUP_arifle_ACRC_snw_68,2050,RIFLE_STOCK);
			ITEM(CUP_arifle_ACRC_tan_68,2050,RIFLE_STOCK);
			ITEM(CUP_arifle_ACRC_wdl_68,2050,RIFLE_STOCK);

			ITEM(CUP_arifle_ACRC_EGLM_blk_68,2350,RIFLE_STOCK);
			ITEM(CUP_arifle_ACRC_EGLM_snw_68,2350,RIFLE_STOCK);
			ITEM(CUP_arifle_ACRC_EGLM_tan_68,2350,RIFLE_STOCK);
			ITEM(CUP_arifle_ACRC_EGLM_wdl_68,2350,RIFLE_STOCK);

			ITEM(CUP_arifle_ACR_blk_68,2250,RIFLE_STOCK);
			ITEM(CUP_arifle_ACR_snw_68,2250,RIFLE_STOCK);
			ITEM(CUP_arifle_ACR_tan_68,2250,RIFLE_STOCK);
			ITEM(CUP_arifle_ACR_wdl_68,2250,RIFLE_STOCK);

			ITEM(CUP_arifle_ACR_DMR_blk_68,2250,RIFLE_STOCK);
			ITEM(CUP_arifle_ACR_DMR_snw_68,2250,RIFLE_STOCK);
			ITEM(CUP_arifle_ACR_DMR_tan_68,2250,RIFLE_STOCK);
			ITEM(CUP_arifle_ACR_DMR_wdl_68,2250,RIFLE_STOCK);

			ITEM(CUP_arifle_ACR_EGLM_blk_68,2450,RIFLE_STOCK);
			ITEM(CUP_arifle_ACR_EGLM_snw_68,2450,RIFLE_STOCK);
			ITEM(CUP_arifle_ACR_EGLM_tan_68,2450,RIFLE_STOCK);
			ITEM(CUP_arifle_ACR_EGLM_wdl_68,2450,RIFLE_STOCK);

			ITEM(arifle_MSBS65_F, 2150, RIFLE_STOCK);
			ITEM(arifle_MSBS65_UBS_F, 2250, RIFLE_STOCK);
			ITEM(arifle_MSBS65_GL_F, 2350, RIFLE_STOCK);

			ITEM(arifle_MSBS65_black_F, 2150, RIFLE_STOCK);
			ITEM(arifle_MSBS65_UBS_black_F, 2250, RIFLE_STOCK);
			ITEM(arifle_MSBS65_GL_black_F, 2350, RIFLE_STOCK);

			ITEM(arifle_MSBS65_camo_F, 2150, RIFLE_STOCK);
			ITEM(arifle_MSBS65_UBS_camo_F, 2250, RIFLE_STOCK);
			ITEM(arifle_MSBS65_GL_camo_F, 2350, RIFLE_STOCK);

			ITEM(arifle_MSBS65_sand_F, 2150, RIFLE_STOCK);
			ITEM(arifle_MSBS65_UBS_sand_F, 2250, RIFLE_STOCK);
			ITEM(arifle_MSBS65_GL_sand_F, 2350, RIFLE_STOCK);

			ITEM(arifle_SPAR_01_C_blk_F, 2250, RIFLE_STOCK);
			ITEM(arifle_SPAR_01_blk_F, 2500, RIFLE_STOCK);
			ITEM(arifle_SPAR_01_GL_blk_F, 2750, RIFLE_STOCK);

			ITEM(arifle_SPAR_01_C_khk_F, 2250, RIFLE_STOCK);
			ITEM(arifle_SPAR_01_khk_F, 2500, RIFLE_STOCK);
			ITEM(arifle_SPAR_01_GL_khk_F, 2750, RIFLE_STOCK);

			ITEM(arifle_SPAR_01_C_snd_F, 2250, RIFLE_STOCK);
			ITEM(arifle_SPAR_01_snd_F, 2500, RIFLE_STOCK);
			ITEM(arifle_SPAR_01_GL_snd_F, 2750, RIFLE_STOCK);

			ITEM(arifle_AK12U_F, 3250, RIFLE_STOCK);
			ITEM(arifle_AK12_F, 3500, RIFLE_STOCK);
			ITEM(arifle_AK12_GL_F, 3750, RIFLE_STOCK);

			ITEM(arifle_AK12U_arid_F, 3250, RIFLE_STOCK);
			ITEM(arifle_AK12_arid_F, 3500, RIFLE_STOCK);
			ITEM(arifle_AK12_GL_arid_F, 3750, RIFLE_STOCK);

			ITEM(arifle_AK12U_lush_F, 3250, RIFLE_STOCK);
			ITEM(arifle_AK12_lush_F, 3500, RIFLE_STOCK);
			ITEM(arifle_AK12_GL_lush_F, 3750, RIFLE_STOCK);

			ITEM(CUP_CZ_BREN2_762_8, 4050, RIFLE_STOCK);
			ITEM(CUP_CZ_BREN2_762_14, 4250, RIFLE_STOCK);
			ITEM(CUP_CZ_BREN2_762_14_GL, 4500, RIFLE_STOCK);

			ITEM(arifle_ARX_blk_F, 4000, RIFLE_STOCK);
			ITEM(arifle_ARX_ghex_F, 4000, RIFLE_STOCK);
			ITEM(arifle_ARX_hex_F, 4000, RIFLE_STOCK);

			ITEM(arifle_SCAR_F, 5000, RIFLE_STOCK);
			ITEM(arifle_SCAR_grip_F, 5100, RIFLE_STOCK);
			ITEM(arifle_SCAR_short_F, 4800, RIFLE_STOCK);
			ITEM(arifle_SCAR_GL_F, 5250, RIFLE_STOCK);

			ITEM(arifle_SCAR_khaki_F, 5000, RIFLE_STOCK);
			ITEM(arifle_SCAR_grip_khaki_F, 5100, RIFLE_STOCK);
			ITEM(arifle_SCAR_short_khaki_F, 4800, RIFLE_STOCK);
			ITEM(arifle_SCAR_GL_khaki_F, 5250, RIFLE_STOCK);

			ITEM(arifle_SCAR_black_F, 5000, RIFLE_STOCK);
			ITEM(arifle_SCAR_grip_black_F, 5100, RIFLE_STOCK);
			ITEM(arifle_SCAR_short_black_F, 4800, RIFLE_STOCK);
			ITEM(arifle_SCAR_GL_black_F, 5250, RIFLE_STOCK);
		};

		class specialWeaponsAu {
			displayName = "Special Weapons";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(CUP_glaunch_6G30, 1000, RIFLE_STOCK);
			ITEM(CUP_glaunch_M32, 1150, RIFLE_STOCK);
			ITEM(CUP_sgun_AA12, 1200, RIFLE_STOCK);
			
			ITEM(CUP_sgun_M1014_Entry, 400, RIFLE_STOCK);

			ITEM(CUP_sgun_Saiga12K, 500, RIFLE_STOCK);
		};

		class sniperRiflesAu {
			displayName = "DMRs, Sniper Rifles, Battle Rifles";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(CUP_srifle_CZ550, 900, RIFLE_STOCK);

			ITEM(CUP_arifle_FNFAL5061_wooden, 1350, RIFLE_STOCK);

			ITEM(CUP_arifle_FNFAL, 1500, RIFLE_STOCK);
			ITEM(CUP_arifle_FNFAL_desert, 1500, RIFLE_STOCK);
			ITEM(CUP_arifle_FNFAL_sand, 1500, RIFLE_STOCK);
			ITEM(CUP_arifle_FNFAL_woodland, 1500, RIFLE_STOCK);

			ITEM(CUP_arifle_FNFAL5061, 1600, RIFLE_STOCK);
			ITEM(CUP_arifle_FNFAL5061_railed, 2300, RIFLE_STOCK);

			ITEM(CUP_arifle_G3A3_ris, 2500, RIFLE_STOCK);
			ITEM(CUP_arifle_G3A3_ris_vfg_black, 2600, RIFLE_STOCK);
			ITEM(CUP_arifle_G3A3_modern_ris, 2500, RIFLE_STOCK);
			ITEM(CUP_arifle_G3A3_modern_ris_black, 2500, RIFLE_STOCK);

			ITEM(CUP_srifle_AWM_wdl, 2000, RIFLE_STOCK);
			ITEM(CUP_srifle_AWM_blk, 2000, RIFLE_STOCK);
			ITEM(CUP_srifle_AWM_des, 2000, RIFLE_STOCK);

			ITEM(CUP_srifle_SVD, 1800, RIFLE_STOCK);
			ITEM(CUP_srifle_SVD_des, 1800, RIFLE_STOCK);
			ITEM(CUP_srifle_SVD_wdl, 1800, RIFLE_STOCK);

			ITEM(srifle_DMR_07_blk_F, 2000, RIFLE_STOCK);
			ITEM(srifle_DMR_07_ghex_F, 2000, RIFLE_STOCK);
			ITEM(srifle_DMR_07_hex_F, 2000, RIFLE_STOCK);

			ITEM(arifle_MXM_F, 2200, RIFLE_STOCK);
			ITEM(arifle_MXM_Black_F, 2250, RIFLE_STOCK);
			ITEM(arifle_MXM_khk_F, 2250, RIFLE_STOCK);

			ITEM(arifle_MSBS65_Mark_F, 2400, RIFLE_STOCK);
			ITEM(arifle_MSBS65_Mark_black_F, 2400, RIFLE_STOCK);
			ITEM(arifle_MSBS65_Mark_camo_F, 2400, RIFLE_STOCK);
			ITEM(arifle_MSBS65_Mark_sand_F, 2400, RIFLE_STOCK);

			ITEM(CUP_srifle_RSASS_Black, 2750, RIFLE_STOCK);
			ITEM(CUP_srifle_RSASS_Dazzle, 2750, RIFLE_STOCK);
			ITEM(CUP_srifle_RSASS_Jungle, 2750, RIFLE_STOCK);
			ITEM(CUP_srifle_RSASS_Sand, 2750, RIFLE_STOCK);
			ITEM(CUP_srifle_RSASS_Winter, 2750, RIFLE_STOCK);
			ITEM(CUP_srifle_RSASS_WDLNet, 2750, RIFLE_STOCK);
			ITEM(CUP_srifle_RSASS_WDL, 2750, RIFLE_STOCK);

			ITEM(srifle_DMR_01_F, 3000, RIFLE_STOCK);

			ITEM(CUP_arifle_DSA_SA58_OSW_M203, 3500, RIFLE_STOCK);

			ITEM(srifle_DMR_06_hunter_F, 3450, RIFLE_STOCK);
			ITEM(srifle_DMR_06_camo_F, 3250, RIFLE_STOCK);
			ITEM(srifle_DMR_06_olive_F, 3250, RIFLE_STOCK);

			ITEM(srifle_DMR_03_F, 3550, RIFLE_STOCK);
			ITEM(srifle_DMR_03_multicam_F, 3550, RIFLE_STOCK);
			ITEM(srifle_DMR_03_khaki_F, 3550, RIFLE_STOCK);
			ITEM(srifle_DMR_03_tan_F, 3550, RIFLE_STOCK);
			ITEM(srifle_DMR_03_woodland_F, 3550, RIFLE_STOCK);

			ITEM(srifle_EBR_F, 3500, RIFLE_STOCK);
			ITEM(NAA_EBR_alpat, 3500, RIFLE_STOCK);
			ITEM(NAA_EBR_khaki, 3500, RIFLE_STOCK);

			ITEM(arifle_SPAR_03_blk_F, 3650, RIFLE_STOCK);
			ITEM(arifle_SPAR_03_khk_F, 3650, RIFLE_STOCK);
			ITEM(arifle_SPAR_03_snd_F, 3650, RIFLE_STOCK);

			ITEM(srifle_DMR_02_F, 4250, 10);
			ITEM(srifle_DMR_02_camo_F, 4250, 10);
			ITEM(srifle_DMR_02_sniper_F, 4250, 10);

			ITEM(srifle_DMR_05_blk_F, 4250, 10);
			ITEM(srifle_DMR_05_hex_F, 4250, 10);
			ITEM(srifle_DMR_05_tan_f, 4250, 10);

			ITEM(srifle_DMR_04_F, 4500, 10);

			ITEM(srifle_LRR_F, 4750, 5);
			ITEM(srifle_LRR_tna_F, 4750, 5);
			ITEM(srifle_LRR_camo_F, 4750, 5);

			ITEM(srifle_GM6_F, 5500, 5);
			ITEM(srifle_GM6_camo_F, 5500, 5);
			ITEM(srifle_GM6_ghex_F, 5500, 5);

			ITEM(CUP_srifle_M107_Base, 5000, 5);
			ITEM(CUP_srifle_M107_Pristine, 5000, 5);
			ITEM(CUP_srifle_M107_Desert, 5000, 5);
			ITEM(CUP_srifle_M107_Snow, 5000, 5);
			ITEM(CUP_srifle_M107_Woodland, 5000, 5);

			ITEM(CUP_srifle_ksvk, 5750, 5);
		};

		class mgAu {
			displayName = "Machine Guns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(CUP_lmg_M60, 1600, RIFLE_STOCK);

			ITEM(CUP_arifle_RPK74, 2000, RIFLE_STOCK);

			ITEM(CUP_lmg_Pecheneg, 2600, RIFLE_STOCK);
			ITEM(CUP_lmg_Pecheneg_desert, 2600, RIFLE_STOCK);
			ITEM(CUP_lmg_Pecheneg_woodland, 2600, RIFLE_STOCK);

			ITEM(arifle_CTARS_blk_F, 1850, RIFLE_STOCK);
			ITEM(arifle_CTARS_ghex_F, 1850, RIFLE_STOCK);
			ITEM(arifle_CTARS_hex_F, 1850, RIFLE_STOCK);

			ITEM(arifle_MX_SW_F, 2100, RIFLE_STOCK);
			ITEM(arifle_MX_SW_Black_F, 2100, RIFLE_STOCK);
			ITEM(arifle_MX_SW_khk_F, 2100, RIFLE_STOCK);

			ITEM(arifle_SPAR_02_blk_F, 2600, RIFLE_STOCK);
			ITEM(arifle_SPAR_02_khk_F, 2600, RIFLE_STOCK);
			ITEM(arifle_SPAR_02_snd_F, 2600, RIFLE_STOCK);

			ITEM(LMG_03_F, 2750, RIFLE_STOCK);
			ITEM(NAA_LMG_03_alpat_F, 2750, RIFLE_STOCK);
			
			ITEM(LMG_Mk200_F, 3000, RIFLE_STOCK);
			ITEM(LMG_Mk200_black_F, 3000, RIFLE_STOCK);

			ITEM(CUP_lmg_Mk48, 3300, RIFLE_STOCK);
			ITEM(CUP_lmg_Mk48_des, 3300, RIFLE_STOCK);
			ITEM(CUP_lmg_Mk48_od, 3300, RIFLE_STOCK);
			ITEM(CUP_lmg_Mk48_tan, 3300, RIFLE_STOCK);
			ITEM(CUP_lmg_Mk48_wdl, 3300, RIFLE_STOCK);

			ITEM(arifle_RPK12_F, 3300, RIFLE_STOCK);
			ITEM(arifle_RPK12_arid_F, 3300, RIFLE_STOCK);
			ITEM(arifle_RPK12_lush_F, 3300, RIFLE_STOCK);

			ITEM(LMG_Zafir_F, 3500, RIFLE_STOCK);

			ITEM(MMG_01_hex_F, 5000, 10);
			ITEM(MMG_01_tan_F, 5000, 10);
			ITEM(MMG_01_Black_F, 5000, 10);
			ITEM(MYR_navid_sage_F, 5000, 10);

			ITEM(MMG_02_black_F, 4500, 10);
			ITEM(MMG_02_camo_F, 4500, 10);
			ITEM(MMG_02_sand_F, 4500, 10);
			ITEM(NAA_MMG_02_alpat_F, 4500, 10);
		};

		class smgAu {
			displayName = "Submachine Guns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(SMG_03C_TR_black, 650, RIFLE_STOCK);
			ITEM(SMG_03C_TR_camo, 650, RIFLE_STOCK);
			ITEM(SMG_03C_TR_hex, 650, RIFLE_STOCK);
			ITEM(SMG_03C_TR_khaki, 650, RIFLE_STOCK);

			ITEM(SMG_03C_black, 750, RIFLE_STOCK);
			ITEM(SMG_03C_camo, 750, RIFLE_STOCK);
			ITEM(SMG_03C_hex, 750, RIFLE_STOCK);
			ITEM(SMG_03C_khaki, 750, RIFLE_STOCK);

			ITEM(SMG_03_TR_black, 725, RIFLE_STOCK);
			ITEM(SMG_03_TR_camo, 725, RIFLE_STOCK);
			ITEM(SMG_03_TR_hex, 725, RIFLE_STOCK);
			ITEM(SMG_03_TR_khaki, 725, RIFLE_STOCK);
			
			ITEM(SMG_03_black, 825, RIFLE_STOCK);
			ITEM(SMG_03_camo, 825, RIFLE_STOCK);
			ITEM(SMG_03_hex, 825, RIFLE_STOCK);
			ITEM(SMG_03_khaki, 825, RIFLE_STOCK);

			ITEM(SMG_05_F, 300, RIFLE_STOCK);
			ITEM(SMG_01_F, 300, RIFLE_STOCK);
		};

		class launchersAu {
			displayName = "Rocket Launchers";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\secondaryWeapon_ca.paa";

			ITEM(launch_RPG7_F, 1500, 15);

			ITEM(launch_NLAW_F, 3250, 10);

			ITEM(launch_RPG32_F, 2500, LAUNCHER_STOCK);
			ITEM(launch_RPG32_green_F, 2500, LAUNCHER_STOCK);
			ITEM(launch_RPG32_ghex_F, 2500, LAUNCHER_STOCK);

			ITEM(launch_MRAWS_olive_F, 2750, LAUNCHER_STOCK);
			ITEM(launch_MRAWS_olive_rail_F, 2500, LAUNCHER_STOCK);
			ITEM(launch_MRAWS_green_F, 2750, LAUNCHER_STOCK);
			ITEM(launch_MRAWS_green_rail_F, 2500, LAUNCHER_STOCK);
			ITEM(launch_MRAWS_sand_F, 2750, LAUNCHER_STOCK);
			ITEM(launch_MRAWS_sand_rail_F, 2500, LAUNCHER_STOCK);

			ITEM(launch_O_Vorona_brown_F, 4000, 4);
			ITEM(launch_O_Vorona_green_F, 4000, 4);

			ITEM(launch_B_Titan_F, 4500, 3);
			ITEM(launch_I_Titan_F, 4500, 3);
			ITEM(launch_O_Titan_F, 4500, 3);
			ITEM(launch_B_Titan_short_F, 5000, 3);
			ITEM(launch_I_Titan_short_F, 5000, 3);
			ITEM(launch_O_Titan_short_F, 5000, 3);

			ITEM(CUP_launch_M136, 750, 50);
			ITEM(CUP_launch_M72A6, 600, 50);
			ITEM(CUP_launch_RPG18, 500, 50);

			ITEM(CUP_launch_NLAW, 1600, 15);
			ITEM(CUP_launch_Igla, 2000, 30);
			ITEM(CUP_launch_M47, 4500, 8);
			ITEM(CUP_launch_Javelin, 8500, 3);
		};

		class launcherMagazinesAu {
			displayName = "Launcher Ammunition";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

			class CUP_PG7V_M {
				price = 200;
				stock = 50;
			};
			class CUP_PG7VL_M {
				price = 400;
				stock = 50;
			};
			class CUP_OG7_M {
				price = 350;
				stock = 50;
			};
			class CUP_PG7VR_M {
				price = 500;
				stock = 50;
			};
			class CUP_TBG7V_M {
				price = 500;
				stock = 50;
			};


			class RPG7_F {
				price = 300;
				stock = 50;
			};
			class NLAW_F {
				price = 750;
				stock = 30;
			};
			class MRAWS_HEAT_F {
				price = 450;
				stock = 50;
			};
			class MRAWS_HEAT55_F {
				price = 300;
				stock = 50;
			};
			class MRAWS_HE_F {
				price = 500;
				stock = 50;
			};
			class RPG32_HE_F {
				price = 500;
				stock = 50;
			};
			class RPG32_F {
				price = 450;
				stock = 50;
			};
			class Titan_AA {
				price = 1250;
				stock = 15;
			};
			class Titan_AP {
				price = 1500;
				stock = 15;
			};
			class Titan_AT {
				price = 1600;
				stock = 15;
			};
			class Vorona_HE {
				price = 1000;
				stock = 15;
			};
			class Vorona_HEAT {
				price = 1200;
				stock = 15;
			};

			class CUP_Javelin_M {
				price = 2500;
				stock = 15;
			};

			class CUP_Dragon_EP1_M {
				price = 1000;
				stock = 15;
			};
		};

		class underbarrelAu {
			displayName = "Underbarrel Accessories";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemBipod_ca.paa";

			ITEM(bipod_02_F_arid, 100, 50);
			ITEM(bipod_03_F_blk, 100, 50);
			ITEM(bipod_02_F_blk, 100, 50);
			ITEM(bipod_01_F_blk, 100, 50);
			ITEM(bipod_02_F_hex, 100, 50);
			ITEM(bipod_01_F_khk, 100, 50);
			ITEM(bipod_02_F_lush, 100, 50);
			ITEM(bipod_01_F_mtp, 100, 50);
			ITEM(bipod_03_F_oli, 100, 50);
			ITEM(bipod_01_F_snd, 100, 50);
			ITEM(bipod_02_F_tan, 100, 50);
			
			ITEM(CUP_bipod_FNFAL, 100, 50);
		};
		class pointersAu {
			displayName = "Pointer Accessories";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemAcc_ca.paa";

			ITEM(acc_flashlight, 75, PN_STOCK);
			ITEM(acc_flashlight_smg_01, 75, PN_STOCK);
			ITEM(acc_pointer_IR, 100, PN_STOCK);
			ITEM(acc_flashlight_pistol, 75, PN_STOCK);

			ITEM(CUP_acc_ANPEQ_15_Black, 100, PN_STOCK);
			ITEM(CUP_acc_ANPEQ_15_OD, 100, PN_STOCK);
			ITEM(CUP_acc_ANPEQ_15_OD_Top, 100, PN_STOCK);
			ITEM(CUP_acc_ANPEQ_15, 100, PN_STOCK);
			ITEM(CUP_acc_ANPEQ_15_Black_Top, 100, PN_STOCK);
			ITEM(CUP_acc_ANPEQ_15_Tan_Top, 100, PN_STOCK);
			ITEM(CUP_acc_ANPEQ_15_Flashlight_Black_L, 150, PN_STOCK);
			ITEM(CUP_acc_ANPEQ_15_Flashlight_OD_L, 150, PN_STOCK);
			ITEM(CUP_acc_ANPEQ_15_Flashlight_Tan_L, 150, PN_STOCK);
			ITEM(CUP_acc_ANPEQ_15_Top_Flashlight_Black_L, 150, PN_STOCK);
			ITEM(CUP_acc_ANPEQ_15_Top_Flashlight_OD_L, 150, PN_STOCK);
			ITEM(CUP_acc_ANPEQ_15_Top_Flashlight_Tan_L, 150, PN_STOCK);

			ITEM(CUP_acc_Flashlight, 50, PN_STOCK);
			ITEM(CUP_acc_Flashlight_desert, 50, PN_STOCK);
			ITEM(CUP_acc_Flashlight_wdl, 50, PN_STOCK);

			ITEM(ptv_LLM, 150, PN_STOCK);
			ITEM(ptv_LLM_des, 150, PN_STOCK);
			ITEM(ptv_LLM01, 150, PN_STOCK);
			
			ITEM(ptv_flash, 150, PN_STOCK);
			
			ITEM(CUP_acc_CZ_M3X, 75, PN_STOCK);
			ITEM(CUP_acc_Glock17_Flashlight, 75, PN_STOCK);
			ITEM(CUP_acc_MLPLS_Laser, 75, PN_STOCK);

			ITEM(CUP_SVD_camo_d, 25, PN_STOCK);
			ITEM(CUP_SVD_camo_g, 25, PN_STOCK);
			ITEM(CUP_SVD_camo_d_half, 15, PN_STOCK);
			ITEM(CUP_SVD_camo_g_half, 15, PN_STOCK);

			ITEM(ptv_M6X, 75, PN_STOCK);
			ITEM(ptv_x300, 75, PN_STOCK);
			ITEM(ptv_x300_des, 75, PN_STOCK);
		};
		class muzzlesAu {
			displayName = "Muzzle Accessories";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemMuzzle_ca.paa";

			ITEM(muzzle_snds_338_black, 500, MZ_STOCK); //5
			ITEM(muzzle_snds_338_green, 500, MZ_STOCK);
			ITEM(muzzle_snds_338_sand, 500, MZ_STOCK);
			ITEM(muzzle_snds_93mmg, 600, MZ_STOCK); //4
			ITEM(muzzle_snds_93mmg_tan, 600, MZ_STOCK);
			ITEM(muzzle_snds_acp, 150, MZ_STOCK);
			ITEM(muzzle_snds_B, 200, MZ_STOCK);//3
			ITEM(muzzle_snds_B_khk_F, 200, MZ_STOCK);
			ITEM(muzzle_snds_B_snd_F, 200, MZ_STOCK);
			ITEM(muzzle_snds_H, 200, MZ_STOCK);//2
			ITEM(muzzle_snds_H_khk_F, 200, MZ_STOCK);//2
			ITEM(muzzle_snds_H_snd_F, 200, MZ_STOCK);
			ITEM(muzzle_snds_H_MG, 200, MZ_STOCK);
			ITEM(muzzle_snds_H_SW, 200, MZ_STOCK);
			ITEM(muzzle_snds_L, 200, MZ_STOCK);//1
			ITEM(muzzle_snds_M, 200, MZ_STOCK);
			ITEM(muzzle_snds_58_blk_F, 150, MZ_STOCK);//1
			ITEM(muzzle_snds_m_khk_F, 200, MZ_STOCK);
			ITEM(muzzle_snds_m_snd_F, 200, MZ_STOCK);
			ITEM(muzzle_snds_58_wdm_F, 150, MZ_STOCK);//1
			ITEM(muzzle_snds_58_ghex_F, 150, MZ_STOCK);
			ITEM(muzzle_snds_58_hex_F, 150, MZ_STOCK);
			ITEM(muzzle_snds_65_TI_blk_F, 350, MZ_STOCK); //2
			ITEM(muzzle_snds_65_TI_hex_F, 350, MZ_STOCK);
			ITEM(muzzle_snds_65_TI_ghex_F, 350, MZ_STOCK);
			ITEM(muzzle_snds_H_MG_blk_F, 200, MZ_STOCK);
			ITEM(muzzle_snds_H_MG_khk_F, 200, MZ_STOCK);
			
			ITEM(muzzle_mzls_L, 100, MZ_STOCK);

			ITEM(CUP_muzzle_mfsup_Suppressor_Mac10, 100, MZ_STOCK);
			ITEM(CUP_muzzle_PB6P9, 150, MZ_STOCK);
			ITEM(CUP_muzzle_snds_mk23, 150, MZ_STOCK);

			ITEM(CUP_muzzle_mfsup_Flashhider_545x39_Black, 100, MZ_STOCK);
			ITEM(CUP_muzzle_mfsup_Flashhider_545x39_OD, 100, MZ_STOCK);
			ITEM(CUP_muzzle_mfsup_Flashhider_545x39_Tan, 100, MZ_STOCK);

			ITEM(CUP_muzzle_snds_KZRZP_AK545, 150, MZ_STOCK);
			ITEM(CUP_muzzle_snds_KZRZP_AK545_desert, 150, MZ_STOCK);
			ITEM(CUP_muzzle_snds_KZRZP_AK545_woodland, 150, MZ_STOCK);

			ITEM(CUP_muzzle_PBS4, 150, MZ_STOCK);
			
			ITEM(CUP_muzzle_TGPA, 150, MZ_STOCK);
			ITEM(CUP_muzzle_TGPA_desert, 150, MZ_STOCK);
			ITEM(CUP_muzzle_TGPA_woodland, 150, MZ_STOCK);

			ITEM(CUP_muzzle_snds_68SPC, 300, MZ_STOCK);
			ITEM(CUP_muzzle_snds_groza, 300, MZ_STOCK);

			ITEM(ptv_trant45, 125, MZ_STOCK);
			ITEM(ptv_trant9, 100, MZ_STOCK);
			ITEM(ptv_impuls, 100, MZ_STOCK);
			
			ITEM(ptv_rotex, 300, MZ_STOCK);
			ITEM(ptv_rotexs, 300, MZ_STOCK);
			ITEM(ptv_rotex2, 300, MZ_STOCK);
			ITEM(ptv_rotex308, 500, MZ_STOCK);

			ITEM(CUP_muzzle_Bizon, 300, MZ_STOCK);
			ITEM(CUP_muzzle_snds_AWM, 400, MZ_STOCK);
			ITEM(CUP_muzzle_mfsup_Suppressor_M107_Black, 760, MZ_STOCK);

			ITEM(CUP_muzzle_snds_KZRZP_SVD, 300, MZ_STOCK);
			ITEM(CUP_muzzle_snds_KZRZP_SVD_desert, 300, MZ_STOCK);
			ITEM(CUP_muzzle_snds_KZRZP_SVD_woodland, 300, MZ_STOCK);
		};
		class opticsAu {
			displayName = "Optics Accessories";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemOptic_ca.paa";


			class CUP_optic_GrozaScope {
				price = 300;
				stock = 100;
			};

			class CUP_optic_1p63 {
				price = 100;
				stock = 100;
			};
			class CUP_optic_Kobra {
				price = 100;
				stock = 100;
			};
			class CUP_optic_ekp_8_02 {
				price = 150;
				stock = 100;
			};
			class CUP_optic_NSPU {
				price = 450;
				stock = 100;
			};
			class CUP_optic_PechenegScope {
				price = 350;
				stock = 100;
			};
			class CUP_optic_PSO_1_1 {
				price = 500;
				stock = 100;
			};
			class CUP_optic_PSO_1_1_open {
				price = 500;
				stock = 100;
			};
			class CUP_optic_PSO_1 {
				price = 500;
				stock = 100;
			};
			class CUP_optic_PSO_1_AK {
				price = 500;
				stock = 100;
			};
			class CUP_optic_PSO_1_open {
				price = 500;
				stock = 100;
			};
			class CUP_optic_PSO_1_AK_open {
				price = 500;
				stock = 100;
			};
			class CUP_optic_PSO_3 {
				price = 800;
				stock = 100;
			};
			class CUP_optic_PSO_3_open {
				price = 800;
				stock = 100;
			};
			class CUP_optic_GOSHAWK {
				price = 2250;
				stock = 5;
			};

			class CUP_optic_AC11704_Black {
				price = 250;
				stock = 100;
			};
			class CUP_optic_AC11704_Coyote {
				price = 250;
				stock = 100;
			};
			class CUP_optic_AC11704_Jungle {
				price = 250;
				stock = 100;
			};
			class CUP_optic_AC11704_OD {
				price = 250;
				stock = 100;
			};
			class CUP_optic_AC11704_Tan {
				price = 250;
				stock = 100;
			};


			class CUP_optic_CompM2_low {
				price = 200;
				stock = 100;
			};
			class CUP_optic_CompM2_low_coyote {
				price = 200;
				stock = 100;
			};
			class CUP_optic_CompM2_low_OD {
				price = 200;
				stock = 100;
			};

			class CUP_optic_AIMM_M68_BLK {
				price = 400;
				stock = 100;
			};
			class CUP_optic_AIMM_M68_TAN {
				price = 400;
				stock = 100;
			};
			class CUP_optic_AIMM_M68_OD {
				price = 400;
				stock = 100;
			};

			class CUP_optic_AIMM_COMPM2_BLK {
				price = 400;
				stock = 100;
			};
			class CUP_optic_AIMM_COMPM2_TAN {
				price = 400;
				stock = 100;
			};
			class CUP_optic_AIMM_COMPM2_OD {
				price = 400;
				stock = 100;
			};

			class CUP_optic_CompM2_Black {
				price = 200;
				stock = 100;
			};
			class CUP_optic_CompM2_Coyote {
				price = 200;
				stock = 100;
			};
			class CUP_optic_CompM2_Desert {
				price = 200;
				stock = 100;
			};
			class CUP_optic_CompM2_OD {
				price = 200;
				stock = 100;
			};
			class CUP_optic_CompM2_Woodland2 {
				price = 200;
				stock = 100;
			};
			class CUP_optic_CompM2_Woodland {
				price = 200;
				stock = 100;
			};

			class CUP_optic_SB_11_4x20_PM {
				price = 1000;
				stock = 100;
			};
			class CUP_optic_SB_11_4x20_PM_od {
				price = 1000;
				stock = 100;
			};
			class CUP_optic_SB_11_4x20_PM_tan {
				price = 1000;
				stock = 100;
			};

			class CUP_optic_ACOG2 {
				price = 550;
				stock = 100;
			};


			class CUP_optic_TrijiconRx01_black {
				price = 200;
				stock = 100;
			};
			class CUP_optic_TrijiconRx01_desert {
				price = 200;
				stock = 100;
			};
			class CUP_optic_TrijiconRx01_od {
				price = 200;
				stock = 100;
			};


			class ptv_PMII_525 {
				price = 1500;
				stock = 100;
			};
			class ptv_PMII_525_des {
				price = 1500;
				stock = 100;
			};
			class ptv_PMII_525_wdl {
				price = 1500;
				stock = 100;
			};

			class CUP_optic_CompM4 {
				price = 200;
				stock = 100;
			};
			class CUP_optic_AIMM_COMPM4_BLK {
				price = 450;
				stock = 100;
			};
			class CUP_optic_MicroT1 {
				price = 200;
				stock = 100;
			};
			class CUP_optic_MicroT1_coyote {
				price = 200;
				stock = 100;
			};
			class CUP_optic_MicroT1_low {
				price = 200;
				stock = 100;
			};
			class CUP_optic_MicroT1_low_OD {
				price = 200;
				stock = 100;
			};
			class CUP_optic_MicroT1_OD {
				price = 200;
				stock = 100;
			};
			class CUP_optic_AN_PVS_4 {
				price = 600;
				stock = 100;
			};
			class CUP_optic_AN_PVS_4_M14 {
				price = 600;
				stock = 100;
			};
			class CUP_optic_AN_PVS_4_M16 {
				price = 600;
				stock = 100;
			};

			class CUP_optic_Elcan_SpecterDR_black {
				price = 600;
				stock = 100;
			};
			class CUP_optic_Elcan_SpecterDR_coyote {
				price = 600;
				stock = 100;
			};
			class CUP_optic_Elcan_SpecterDR_od {
				price = 600;
				stock = 100;
			};
			class CUP_optic_Elcan_SpecterDR {
				price = 600;
				stock = 100;
			};

			class CUP_optic_Elcan_SpecterDR_KF_black {
				price = 650;
				stock = 100;
			};
			class CUP_optic_Elcan_SpecterDR_KF_coyote {
				price = 650;
				stock = 100;
			};
			class CUP_optic_Elcan_SpecterDR_KF_od {
				price = 650;
				stock = 100;
			};
			class CUP_optic_Elcan_SpecterDR_KF {
				price = 650;
				stock = 100;
			};

			class CUP_optic_Elcan_SpecterDR_RMR_black {
				price = 750;
				stock = 100;
			};
			class CUP_optic_Elcan_SpecterDR_RMR_coyote {
				price = 750;
				stock = 100;
			};
			class CUP_optic_Elcan_SpecterDR_RMR_od {
				price = 750;
				stock = 100;
			};
			class CUP_optic_Elcan_SpecterDR_RMR {
				price = 750;
				stock = 100;
			};

			class CUP_optic_Elcan {
				price = 750;
				stock = 100;
			};
			class CUP_optic_Elcan_Coyote {
				price = 750;
				stock = 100;
			};
			class CUP_optic_Elcan_OD {
				price = 750;
				stock = 100;
			};

			class CUP_optic_Elcan_reflex {
				price = 900;
				stock = 100;
			};
			class CUP_optic_Elcan_reflex_Coyote {
				price = 900;
				stock = 100;
			};
			class CUP_optic_Elcan_reflex_OD {
				price = 900;
				stock = 100;
			};

			class CUP_optic_HensoldtZO {
				price = 500;
				stock = 100;
			};
			class CUP_optic_HensoldtZO_coyote {
				price = 500;
				stock = 100;
			};
			class CUP_optic_HensoldtZO_desert {
				price = 500;
				stock = 100;
			};
			class CUP_optic_HensoldtZO_hex {
				price = 500;
				stock = 100;
			};
			class CUP_optic_HensoldtZO_od {
				price = 500;
				stock = 100;
			};

			class CUP_optic_HensoldtZO_low {
				price = 500;
				stock = 100;
			};
			class CUP_optic_HensoldtZO_low_coyote {
				price = 500;
				stock = 100;
			};
			class CUP_optic_HensoldtZO_low_desert {
				price = 500;
				stock = 100;
			};
			class CUP_optic_HensoldtZO_low_hex {
				price = 500;
				stock = 100;
			};
			class CUP_optic_HensoldtZO_low_od {
				price = 500;
				stock = 100;
			};

			class CUP_optic_HensoldtZO_RDS {
				price = 650;
				stock = 100;
			};
			class CUP_optic_HensoldtZO_RDS_coyote {
				price = 650;
				stock = 100;
			};
			class CUP_optic_HensoldtZO_RDS_desert {
				price = 650;
				stock = 100;
			};
			class CUP_optic_HensoldtZO_RDS_hex {
				price = 650;
				stock = 100;
			};
			class CUP_optic_HensoldtZO_RDS_od {
				price = 650;
				stock = 100;
			};

			class CUP_optic_HensoldtZO_low_RDS {
				price = 650;
				stock = 100;
			};
			class CUP_optic_HensoldtZO_low_RDS_coyote {
				price = 650;
				stock = 100;
			};
			class CUP_optic_HensoldtZO_low_RDS_desert {
				price = 650;
				stock = 100;
			};
			class CUP_optic_HensoldtZO_low_RDS_hex {
				price = 650;
				stock = 100;
			};
			class CUP_optic_HensoldtZO_low_RDS_od {
				price = 650;
				stock = 100;
			};
			
			class CUP_optic_LeupoldMk4 {
				price = 1000;
				stock = 100;
			};
			class CUP_optic_LeupoldMk4_10x40_LRT_Desert {
				price = 650;
				stock = 100;
			};
			class CUP_optic_LeupoldMk4_10x40_LRT_Woodland {
				price = 650;
				stock = 100;
			};
			
			class CUP_optic_LeupoldMk4_25x50_LRT {
				price = 1300;
				stock = 100;
			};
			class CUP_optic_LeupoldMk4_25x50_LRT_DESERT {
				price = 1300;
				stock = 100;
			};
			class CUP_optic_LeupoldMk4_25x50_LRT_SNOW {
				price = 650;
				stock = 100;
			};
			class CUP_optic_LeupoldMk4_25x50_LRT_WOODLAND {
				price = 650;
				stock = 100;
			};

			class CUP_optic_LeupoldMk4_CQ_T {
				price = 400;
				stock = 100;
			};


			class CUP_optic_AN_PAS_13c1 {
				price = 3000;
				stock = 5;
			};			
			class optic_Hamr_khk_F {
				price = 700;
				stock = 100;
			};
			class optic_SOS_khk_F {
				price = 800;
				stock = 100;
			};
			class optic_Arco_ghex_F {
				price = 650;
				stock = 100;
			};
			class optic_Arco_blk_F {
				price = 650;
				stock = 100;
			};
			class optic_Arco_AK_blk_F {
				price = 650;
				stock = 100;
			};
			class optic_Arco_AK_lush_F {
				price = 650;
				stock = 100;
			};
			class optic_Arco_AK_arid_F {
				price = 650;
				stock = 100;
			};
			class optic_Arco_arid_F {
				price = 650;
				stock = 100;
			};
			class optic_Arco_lush_F {
				price = 650;
				stock = 100;
			};
			class optic_DMS_ghex_F {
				price = 900;
				stock = 100;
			};
			class optic_ERCO_blk_F {
				price = 800;
				stock = 100;
			};
			class optic_ERCO_khk_F {
				price = 800;
				stock = 100;
			};
			class optic_ERCO_snd_F {
				price = 800;
				stock = 100;
			};
			class optic_LRPS_ghex_F {
				price = 1000;
				stock = 100;
			};
			class optic_LRPS_tna_F {
				price = 1000;
				stock = 100;
			};
			class optic_Holosight_blk_F {
				price = 250;
				stock = 100;
			};
			class optic_Holosight_lush_F {
				price = 250;
				stock = 100;
			};
			class optic_Holosight_arid_F {
				price = 250;
				stock = 100;
			};
			class optic_Holosight_khk_F {
				price = 250;
				stock = 100;
			};
			class optic_Holosight_smg_blk_F {
				price = 250;
				stock = 100;
			};
			class optic_Holosight_smg_khk_F {
				price = 250;
				stock = 100;
			};
			class optic_DMS_weathered_Kir_F {
				price = 1000;
				stock = 100;
			};
			class optic_Aco {
				price = 200; 
				stock = 100;
			};
			class optic_ACO_grn {
				price = 200; 
				stock = 100;
			};
			class optic_ACO_grn_smg {
				price = 200; 
				stock = 100;
			};
			class optic_Aco_smg {
				price = 200; 
				stock = 100;
			};
			class optic_AMS {
				price = 1200;
				stock = 100;
			};
			class optic_AMS_khk {
				price = 1200;
				stock = 100;
			};
			class optic_AMS_snd {
				price = 1200;
				stock = 100;
			};
			class optic_Arco {
				price = 650;
				stock = 100;
			};
			class optic_DMS {
				price = 1000;
				stock = 100;
			};
			class optic_Hamr {
				price = 700;
				stock = 100;
			};
			class optic_Holosight {
				price = 250;
				stock = 100;
			};
			class optic_Holosight_smg {
				price = 250;
				stock = 100;
			};
			class optic_KHS_blk {
				price = 1100;
				stock = 100;
			};
			class optic_KHS_hex {
				price = 1100;
				stock = 100;
			};
			class optic_KHS_old {
				price = 1100;
				stock = 100;
			};
			class optic_KHS_tan {
				price = 1100;
				stock = 100;
			};
			class optic_LRPS {
				price = 1000;
				stock = 100;
			};
			class optic_MRCO {
				price = 500;
				stock = 100;
			};
			class optic_MRD {
				price = 100;
				stock = 100;
			};
			class optic_MRD_black {
				price = 100;
				stock = 100;
			};
			class optic_NVS {
				price = 1500;
				stock = 100;
			};
			class optic_SOS {
				price = 800;
				stock = 100;
			};
			class optic_Yorris {
				price = 100;
				stock = 100;
			};
		};
		class magazinesAu {
			displayName = "Magazines";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

			class Laserbatteries {
				price = 200;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// Underbarrel
			///////////////////////////////////////////////////////
			class 1Rnd_HE_Grenade_shell {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class UGL_FlareWhite_F {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class UGL_FlareGreen_F {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class UGL_FlareRed_F {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class UGL_FlareYellow_F {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class UGL_FlareCIR_F {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_Smoke_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokeRed_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokeGreen_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokeYellow_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokePurple_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokeBlue_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 1Rnd_SmokeOrange_Grenade_shell {
				price = 50;
				stock = MAGAZINE_STOCK;
			};

			class ptv_1Rnd_HE_Grenade_shell {
				price = 100;
				stock = MAGAZINE_STOCK;
			};

			class CUP_1Rnd_HE_GP25_M {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class CUP_IlumFlareGreen_GP25_M {
				price = 35;
				stock = MAGAZINE_STOCK;
			};
			class CUP_IlumFlareWhite_GP25_M {
				price = 35;
				stock = MAGAZINE_STOCK;
			};
			class CUP_IlumFlareRed_GP25_M {
				price = 35;
				stock = MAGAZINE_STOCK;
			};
			class CUP_FlareWhite_GP25_M {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class CUP_FlareGreen_GP25_M {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class CUP_FlareRed_GP25_M {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class CUP_FlareYellow_GP25_M {
				price = 30;
				stock = MAGAZINE_STOCK;
			};
			class CUP_1Rnd_SMOKE_GP25_M {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class CUP_1Rnd_SmokeRed_GP25_M {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class CUP_1Rnd_SmokeGreen_GP25_M {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class CUP_1Rnd_SmokeYellow_GP25_M {
				price = 50;
				stock = MAGAZINE_STOCK;
			};

			class 3Rnd_HE_Grenade_shell {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareWhite_F {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareGreen_F {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareRed_F {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareYellow_F {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_UGL_FlareCIR_F {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_Smoke_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeRed_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeGreen_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeYellow_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokePurple_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeBlue_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 3Rnd_SmokeOrange_Grenade_shell {
				price = 200;
				stock = MAGAZINE_STOCK;
			};

			class CUP_6Rnd_HE_GP25_M {
				price = 500;
				stock = MAGAZINE_STOCK;
			};

			class CUP_6Rnd_FlareWhite_GP25_M {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_FlareGreen_GP25_M {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_FlareRed_GP25_M {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_FlareYellow_GP25_M {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_Smoke_GP25 {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_SmokeRed_GP25 {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_SmokeGreen_GP25 {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_SmokeYellow_GP25 {
				price = 350;
				stock = MAGAZINE_STOCK;
			};

			class CUP_6Rnd_HE_M203 {
				price = 500;
				stock = MAGAZINE_STOCK;
			};

			class CUP_6Rnd_FlareWhite_M203 {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_FlareGreen_M203 {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_FlareRed_M203 {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_FlareYellow_M203 {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_Smoke_M203 {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_SmokeRed_M203 {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_SmokeGreen_M203 {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_SmokeYellow_M203 {
				price = 350;
				stock = MAGAZINE_STOCK;
			};

			class CUP_1Rnd_HE_M203 {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class CUP_1Rnd_HEDP_M203 {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class CUP_1Rnd_StarCluster_Red_M203 {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class CUP_1Rnd_StarCluster_Green_M203 {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class CUP_1Rnd_StarFlare_Red_M203 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class CUP_1Rnd_StarFlare_Green_M203 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class CUP_FlareWhite_M203 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class CUP_FlareGreen_M203 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class CUP_FlareRed_M203 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class CUP_FlareYellow_M203 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class CUP_1Rnd_Smoke_M203 {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class CUP_1Rnd_SmokeRed_M203 {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class CUP_1Rnd_SmokeGreen_M203 {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class CUP_1Rnd_SmokeYellow_M203 {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class CUP_1Rnd_StarFlare_White_M203 {
				price = 75;
				stock = MAGAZINE_STOCK;
			};



			///////////////////////////////////////////////////////
			// Pistols, SMGs
			///////////////////////////////////////////////////////
			class CUP_10Rnd_9x19_Compact {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class CUP_18Rnd_9x19_Phantom {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class CUP_7Rnd_50AE_Deagle {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_45ACP_MAC10_M {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_45ACP_Yellow_Tracer_MAC10_M {
				price = 135;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_45ACP_Green_Tracer_MAC10_M {
				price = 135;
				stock = MAGAZINE_STOCK;
			};
			class CUP_8Rnd_9x18_Makarov_M {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class CUP_8Rnd_9x18_MakarovSD_M {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class CUP_12Rnd_9x18_PMM_M {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_45ACP_M {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class CUP_32Rnd_9x19_TEC9 {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			

			class 9Rnd_45ACP_Mag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_45ACP_Cylinder {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class 11Rnd_45ACP_Mag {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 16Rnd_9x21_Mag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 16Rnd_9x21_red_Mag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 16Rnd_9x21_green_Mag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 16Rnd_9x21_yellow_Mag {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Mag {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Red_Mag {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Yellow_Mag {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Green_Mag {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 10Rnd_9x21_Mag {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class 7Rnd_127x33_Mag {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_9x33_Cylinder {
				price = 125;
				stock = MAGAZINE_STOCK;
			};

			class ptv_15Rnd_9mm_G19 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class ptv_17Rnd_9mm_G17 {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class ptv_33Rnd_9mm_G17 {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			class ptv_12Rnd_45ACP_USP {
				price = 110;
				stock = MAGAZINE_STOCK;
			};


			///////////////////////////////////////////////////////
			// RIFLES
			///////////////////////////////////////////////////////
			class CUP_10Rnd_762x39_SaigaMk03_M {
				price = 30;
				stock = MAGAZINE_STOCK;
			};

			class CUP_20Rnd_9x39_SP5_GROZA_M {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			
			class CUP_30Rnd_545x39_Fort224_M {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Green_Tracer_545x39_Fort224_M {
				price = 85;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Red_Tracer_545x39_Fort224_M {
				price = 85;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_White_Tracer_545x39_Fort224_M {
				price = 85;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Yellow_Tracer_545x39_Fort224_M {
				price = 85;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_Subsonic_545x39_Fort224_M {
				price = 100;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_65x39_caseless_green {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_green_mag_Tracer {
				price = 210;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_556x45_Stanag {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Tracer_Red {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Tracer_Green {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Tracer_Yellow {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_red {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_green {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Sand_red {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Sand_Tracer_Red {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Sand_Tracer_Green {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_556x45_Stanag_Sand_Tracer_Yellow {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			
			class 150Rnd_556x45_Drum_Mag_Tracer_F {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 150Rnd_556x45_Drum_Sand_Mag_F {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 150Rnd_556x45_Drum_Green_Mag_F {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 150Rnd_556x45_Drum_Sand_Mag_Tracer_F {
				price = 375;
				stock = MAGAZINE_STOCK;
			};
			class 150Rnd_556x45_Drum_Green_Mag_Tracer_F {
				price = 375;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_65x39_caseless_mag {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_khaki_mag {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_black_mag {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_mag_Tracer {
				price = 210;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_khaki_mag_Tracer {
				price = 210;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_black_mag_Tracer {
				price = 210;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_65x39_caseless_mag {
				price = 650;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_65x39_caseless_khaki_mag {
				price = 650;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_65x39_caseless_black_mag {
				price = 650;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_65x39_caseless_mag_Tracer {
				price = 700;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_65x39_caseless_khaki_mag_tracer {
				price = 700;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_65x39_caseless_black_mag_tracer {
				price = 700;
				stock = MAGAZINE_STOCK;
			};
			
			class 30Rnd_580x42_Mag_F {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_580x42_Mag_Tracer_F {
				price = 160;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_580x42_Mag_F {
				price = 500;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_580x42_Mag_Tracer_F {
				price = 550;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_580x42_hex_Mag_F {
				price = 500;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_580x42_hex_Mag_Tracer_F {
				price = 550;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_580x42_ghex_Mag_F {
				price = 500;
				stock = MAGAZINE_STOCK;
			};
			class 100Rnd_580x42_ghex_Mag_Tracer_F {
				price = 550;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_545x39_Mag_F {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_545x39_Mag_Green_F {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_545x39_Mag_Tracer_F {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_545x39_Mag_Tracer_Green_F {
				price = 60;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_545x39_AK12_Mag_F {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_545x39_AK12_Mag_Tracer_F {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_545x39_AK12_Lush_Mag_F {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_545x39_AK12_Lush_Mag_Tracer_F {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_545x39_AK12_Arid_Mag_F {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_545x39_AK12_Arid_Mag_Tracer_F {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_545x39_Black_Mag_F {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_545x39_Black_Mag_Tracer_F {
				price = 60;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_762x39_Mag_F {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_762x39_Mag_Green_F {
				price = 375;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_762x39_Mag_Tracer_F {
				price = 375;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_762x39_Mag_Tracer_Green_F {
				price = 375;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_762x39_AK12_Mag_F {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_762x39_AK12_Mag_Tracer_F {
				price = 375;
				stock = MAGAZINE_STOCK;
			};
			class 75Rnd_762x39_Mag_F {
				price = 900;
				stock = MAGAZINE_STOCK;
			};
			class 75Rnd_762x39_Mag_Tracer_F {
				price = 925;
				stock = MAGAZINE_STOCK;
			};

			class 30rnd_762x39_AK12_Lush_Mag_F {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 30rnd_762x39_AK12_Lush_Mag_Tracer_F {
				price = 375;
				stock = MAGAZINE_STOCK;
			};
			class 75rnd_762x39_AK12_Lush_Mag_F {
				price = 900;
				stock = MAGAZINE_STOCK;
			};
			class 75rnd_762x39_AK12_Lush_Mag_Tracer_F {
				price = 925;
				stock = MAGAZINE_STOCK;
			};

			class 30rnd_762x39_AK12_Arid_Mag_F {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 30rnd_762x39_AK12_Arid_Mag_Tracer_F {
				price = 375;
				stock = MAGAZINE_STOCK;
			};
			class 75rnd_762x39_AK12_Arid_Mag_F {
				price = 900;
				stock = MAGAZINE_STOCK;
			};
			class 75rnd_762x39_AK12_Arid_Mag_Tracer_F {
				price = 925;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_65x39_caseless_msbs_mag {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_65x39_caseless_msbs_mag_Tracer {
				price = 225;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_12Gauge_Pellets {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class 6Rnd_12Gauge_Slug {
				price = 50;
				stock = MAGAZINE_STOCK;
			};

			class 10Rnd_50BW_Mag_F {
				price = 500;
				stock = MAGAZINE_STOCK;
			};

			class CUP_30Rnd_680x43_Stanag {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_680x43_Stanag_Tracer_Red {
				price = 275;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_680x43_Stanag_Tracer_Green {
				price = 275;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_680x43_Stanag_Tracer_Yellow {
				price = 275;
				stock = MAGAZINE_STOCK;
			};

			class CUP_30Rnd_545x39_AK74M_M {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_White_Tracer_545x39_AK74M_M {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Yellow_Tracer_545x39_AK74M_M {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M {
				price = 60;
				stock = MAGAZINE_STOCK;
			};
			class CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK74M_M {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class CUP_60Rnd_545x39_AK74M_M {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class CUP_60Rnd_TE1_Green_Tracer_545x39_AK74M_M {
				price = 225;
				stock = MAGAZINE_STOCK;
			};
			class CUP_60Rnd_TE1_White_Tracer_545x39_AK74M_M {
				price = 225;
				stock = MAGAZINE_STOCK;
			};
			class CUP_60Rnd_TE1_Red_Tracer_545x39_AK74M_M {
				price = 225;
				stock = MAGAZINE_STOCK;
			};
			class CUP_60Rnd_TE1_Yellow_Tracer_545x39_AK74M_M {
				price = 225;
				stock = MAGAZINE_STOCK;
			};

			class CUP_30Rnd_556x45_AK {
				price = 120;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Red_Tracer_556x45_AK {
				price = 130;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Green_Tracer_556x45_AK {
				price = 130;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Yellow_Tracer_556x45_AK {
				price = 130;
				stock = MAGAZINE_STOCK;
			};

			class CUP_30Rnd_556x45_AUG {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Red_Tracer_556x45_AUG {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Yellow_Tracer_556x45_AUG {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Green_Tracer_556x45_AUG {
				price = 110;
				stock = MAGAZINE_STOCK;
			};

			class CUP_30Rnd_762x39_CZ807 {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Green_Tracer_762x39_CZ807 {
				price = 375;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Red_Tracer_762x39_CZ807 {
				price = 375;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Yellow_Tracer_762x39_CZ807 {
				price = 375;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// DMRs, Sniper Rifles
			///////////////////////////////////////////////////////
			class CUP_5Rnd_86x70_L115A1 {
				price = 350;
				stock = MAGAZINE_STOCK;
			};

			class CUP_20Rnd_762x51_G3 {
				price = 500;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Red_Tracer_762x51_G3 {
				price = 525;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Green_Tracer_762x51_G3 {
				price = 525;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Yellow_Tracer_762x51_G3 {
				price = 525;
				stock = MAGAZINE_STOCK;
			};


			class CUP_20Rnd_762x51_B_M110 {
				price = 500;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_White_Tracer_762x51_M110 {
				price = 525;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Green_Tracer_762x51_M110 {
				price = 525;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Red_Tracer_762x51_M110 {
				price = 525;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Yellow_Tracer_762x51_M110 {
				price = 525;
				stock = MAGAZINE_STOCK;
			};

			class CUP_20Rnd_762x51_FNFAL_M {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Yellow_Tracer_762x51_FNFAL_M {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Red_Tracer_762x51_FNFAL_M {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Green_Tracer_762x51_FNFAL_M {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_762x51_FNFAL_Desert_M {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Yellow_Tracer_762x51_FNFAL_Desert_M {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Red_Tracer_762x51_FNFAL_Desert_M {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Green_Tracer_762x51_FNFAL_Desert_M {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_762x51_FNFAL_Woodland_M {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Yellow_Tracer_762x51_FNFAL_Woodland_M {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Red_Tracer_762x51_FNFAL_Woodland_M {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_TE1_Green_Tracer_762x51_FNFAL_Woodland_M {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_762x51_FNFAL_M {
				price = 650;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Yellow_Tracer_762x51_FNFAL_M {
				price = 650;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Red_Tracer_762x51_FNFAL_M {
				price = 650;
				stock = MAGAZINE_STOCK;
			};
			class CUP_30Rnd_TE1_Green_Tracer_762x51_FNFAL_M {
				price = 650;
				stock = MAGAZINE_STOCK;
			};

			class CUP_5x_22_LR_17_HMR_M {
				price = 25;
				stock = MAGAZINE_STOCK;
			};
			class 5Rnd_127x108_Mag {
				price = 700;
				stock = MAGAZINE_STOCK;
			};
			class 5Rnd_127x108_APDS_Mag {
				price = 800;
				stock = MAGAZINE_STOCK;
			};

			class 7Rnd_408_Mag {
				price = 600;
				stock = MAGAZINE_STOCK;
			};

			class 20Rnd_762x51_Mag {
				price = 500;
				stock = MAGAZINE_STOCK;
			};
			class 10Rnd_Mk14_762x51_Mag {
				price = 300;
				stock = MAGAZINE_STOCK;
			};

			class 10Rnd_762x54_Mag {
				price = 225;
				stock = MAGAZINE_STOCK;
			};

			class 10Rnd_127x54_Mag {
				price = 600;
				stock = MAGAZINE_STOCK;
			};

			class 10Rnd_93x64_DMR_05_Mag {
				price = 500;
				stock = MAGAZINE_STOCK;
			};

			class 10Rnd_338_Mag {
				price = 500;
				stock = MAGAZINE_STOCK;
			};

			class CUP_10Rnd_127x99_M107 {
				price = 750;
				stock = MAGAZINE_STOCK;
			};

			class CUP_5Rnd_127x108_KSVK_M {
				price = 600;
				stock = MAGAZINE_STOCK;
			};

			
			///////////////////////////////////////////////////////
			// MGs
			///////////////////////////////////////////////////////
			class CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Yellow_M {
				price = 200;
				stock = MAGAZINE_STOCK;
			};


			class CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M {
				price = 325;
				stock = MAGAZINE_STOCK;
			};
			class CUP_100Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M {
				price = 325;
				stock = MAGAZINE_STOCK;
			};
			class CUP_100Rnd_TE4_LRT4_Yellow_Tracer_762x51_Belt_M {
				price = 325;
				stock = MAGAZINE_STOCK;
			};

			class 200Rnd_556x45_Box_F {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class 200Rnd_556x45_Box_Red_F {
				price = 275;
				stock = MAGAZINE_STOCK;
			};
			class 200Rnd_556x45_Box_Tracer_F {
				price = 275;
				stock = MAGAZINE_STOCK;
			};
			class 200Rnd_556x45_Box_Tracer_Red_F {
				price = 275;
				stock = MAGAZINE_STOCK;
			};

			class 200Rnd_65x39_cased_Box {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 200Rnd_65x39_cased_Box_Tracer {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class 200Rnd_65x39_cased_Box_Red {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class 200Rnd_65x39_cased_Box_Tracer_Red {
				price = 400;
				stock = MAGAZINE_STOCK;
			};

			class 150Rnd_762x54_Box {
				price = 500;
				stock = MAGAZINE_STOCK;
			};
			class 150Rnd_762x54_Box_Tracer {
				price = 550;
				stock = MAGAZINE_STOCK;
			};

			class 130Rnd_338_Mag {
				price = 900;
				stock = MAGAZINE_STOCK;
			};

			class 150Rnd_93x64_Mag {
				price = 1200;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// SMGs
			///////////////////////////////////////////////////////
			class 50Rnd_570x28_SMG_03 {
				price = 100;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_9x21_Mag_SMG_02 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Mag_SMG_02_Tracer_Red {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Mag_SMG_02_Tracer_Yellow {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Mag_SMG_02_Tracer_Green {
				price = 65;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_45ACP_Mag_SMG_01 {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_45ACP_Mag_SMG_01_Tracer_Green {
				price = 85;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_45ACP_Mag_SMG_01_Tracer_Red {
				price = 85;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_45ACP_Mag_SMG_01_Tracer_Yellow {
				price = 85;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// Special Weapons
			///////////////////////////////////////////////////////
			class CUP_20Rnd_B_AA12_Pellets {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_B_AA12_74Slug {
				price = 500;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_B_AA12_HE {
				price = 700;
				stock = MAGAZINE_STOCK;
			};
			class 8Rnd_12Gauge_Pellets {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class 8Rnd_12Gauge_Slug {
				price = 175;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_B_Beneli_74Pellets {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class CUP_6Rnd_B_Benelli_74Slug {
				price = 125;
				stock = MAGAZINE_STOCK;
			};

			class CUP_20Rnd_B_Saiga12_74Slug_M {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class CUP_8Rnd_B_Saiga12_74Pellets_M {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class CUP_8Rnd_B_Saiga12_74Slug_M {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class CUP_20Rnd_B_Saiga12_74Pellets_M {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
		};
		class miscAu {
			displayName = "Misc";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\backpack_ca.paa";

			ITEM(B_Bergen_dgtl_F, 900, MISC_STOCK);
			ITEM(B_Bergen_hex_F, 900, MISC_STOCK);
			ITEM(B_Bergen_mcamo_F, 900, MISC_STOCK);
			ITEM(B_Bergen_tna_F, 900, MISC_STOCK);
			ITEM(B_ViperLightHarness_blk_F, 650, MISC_STOCK);
			ITEM(B_ViperLightHarness_ghex_F, 650, MISC_STOCK);
			ITEM(B_ViperLightHarness_hex_F, 650, MISC_STOCK);
			ITEM(B_ViperLightHarness_khk_F, 650, MISC_STOCK);
			ITEM(B_ViperLightHarness_oli_F, 650, MISC_STOCK);
			ITEM(B_ViperHarness_blk_F, 750, MISC_STOCK);
			ITEM(B_ViperHarness_ghex_F, 750, MISC_STOCK);
			ITEM(B_ViperHarness_hex_F, 750, MISC_STOCK);
			ITEM(B_ViperHarness_khk_F, 750, MISC_STOCK);
			ITEM(B_ViperHarness_oli_F, 750, MISC_STOCK);

			ITEM(V_PlateCarrierIAGL_oli, 650, MISC_STOCK);

			ITEM(U_I_FullGhillie_lsh, 1000, MISC_STOCK);
			ITEM(U_I_FullGhillie_ard, 1000, MISC_STOCK);
			ITEM(U_I_FullGhillie_sard, 1000, MISC_STOCK);

			ITEM(U_O_R_Gorka_01_F, 250, MISC_STOCK);
			ITEM(U_O_R_Gorka_01_brown_F, 250, MISC_STOCK);
			ITEM(U_O_R_Gorka_01_black_F, 250, MISC_STOCK);
			ITEM(U_O_R_Gorka_01_camo_F, 250, MISC_STOCK);
			ITEM(U_O_E_Gorka_01_autumn_F, 250, MISC_STOCK);
			ITEM(U_O_E_Gorka_01_summer_F, 250, MISC_STOCK);

			ITEM(APERSMineDispenser_Mag, 400, MISC_STOCK);
			ITEM(ClaymoreDirectionalMine_Remote_Mag, 300, MISC_STOCK);
			ITEM(DemoCharge_Remote_Mag, 250, MISC_STOCK);
			ITEM(SatchelCharge_Remote_Mag, 500, MISC_STOCK);
			ITEM(SLAMDirectionalMine_Wire_Mag, 400, MISC_STOCK);
			ITEM(ATMine_Range_Mag, 200, MISC_STOCK);
			ITEM(APERSMine_Range_Mag, 200, MISC_STOCK);
			ITEM(APERSBoundingMine_Range_Mag, 150, MISC_STOCK);
			ITEM(APERSTripMine_Wire_Mag, 100, MISC_STOCK);
		};

		///////////////////////////////////////////////////////
		// Vanilla
		///////////////////////////////////////////////////////
		class handgunsRhs {
			displayName = "Handguns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\handgun_ca.paa";

			ITEM(rhs_weap_6p53, 150, PISTOL_STOCK);
			ITEM(rhs_weap_pya, 200, PISTOL_STOCK);
			ITEM(rhs_weap_pb_6p9, 250, PISTOL_STOCK);

			ITEM(rhsusf_weap_m9, 250, PISTOL_STOCK);
			ITEM(rhsusf_weap_m1911a1, 250, PISTOL_STOCK);

			ITEM(rhs_weap_cz99, 350, PISTOL_STOCK);
			ITEM(rhsusf_weap_glock17g4, 300, PISTOL_STOCK);

			ITEM(rhs_weap_M320, 500, PISTOL_STOCK);
		};

		class launchersRhs {
			displayName = "Rocket Launchers";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\secondaryWeapon_ca.paa";

			ITEM(rhs_weap_rpg26, 400, 50);
			ITEM(rhs_weap_rshg2, 400, 50);
			ITEM(rhs_weap_rpg75, 400, 50);

			ITEM(rhs_weap_m80, 450, 50);

			ITEM(rhs_weap_m72a7, 500, 50);

			ITEM(rhs_weap_M136, 650, 50);
			ITEM(rhs_weap_M136_hedp, 700, 50);
			ITEM(rhs_weap_M136_hp, 750, 50);

			ITEM(rhs_weap_rpg7, 1500, 15);

			ITEM(rhs_weap_maaws, 1750, 15);

			ITEM(rhs_weap_smaw, 2000, 15);
			ITEM(rhs_weap_smaw_green, 2000, 15);

			ITEM(rhs_weap_fgm148, 5000, 6);
		};

		class launcherMagazinesRhs {
			displayName = "Launcher Ammunition";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

			class rhs_rpg7_PG7V_mag {
				price = 300;
				stock = 50;
			};
			class rhs_rpg7_PG7VL_mag {
				price = 400;
				stock = 50;
			};
			class rhs_rpg7_PG7VR_mag {
				price = 500;
				stock = 50;
			};
			class rhs_rpg7_OG7V_mag {
				price = 350;
				stock = 50;
			};
			class rhs_rpg7_TBG7V_mag {
				price = 500;
				stock = 50;
			};

			class rhs_mag_maaws_HEAT {
				price = 600;
				stock = 50;
			};
			class rhs_mag_maaws_HEDP {
				price = 650;
				stock = 50;
			};
			class rhs_mag_maaws_HE {
				price = 550;
				stock = 50;
			};

			class rhs_mag_smaw_SR {
				price = 100;
				stock = 500;
			};
			class rhs_mag_smaw_HEAA {
				price = 650;
				stock = 50;
			};
			class rhs_mag_smaw_HEDP {
				price = 750;
				stock = 50;
			};

			class rhs_fgm148_magazine_AT {
				price = 1500;
				stock = 50;
			};
		};

		class riflesRhs {
			displayName = "Assault Rifles";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(rhs_weap_aks74u, 500, RIFLE_STOCK);

			ITEM(rhs_weap_MP44, 800, RIFLE_STOCK);

			ITEM(rhs_weap_pm63, 1000, RIFLE_STOCK);

			ITEM(rhs_weap_savz58p, 1150, RIFLE_STOCK);
			ITEM(rhs_weap_savz58p_black, 1150, RIFLE_STOCK);
			ITEM(rhs_weap_savz58v, 1150, RIFLE_STOCK);
			ITEM(rhs_weap_savz58v_black, 1150, RIFLE_STOCK);

			ITEM(rhs_weap_vhsd2, 1900, RIFLE_STOCK);
			ITEM(rhs_weap_vhsk2, 2000, RIFLE_STOCK);
			ITEM(rhs_weap_vhsd2_ct15x, 2200, RIFLE_STOCK);
			ITEM(rhs_weap_vhsd2_bg, 2250, RIFLE_STOCK);
			ITEM(rhs_weap_vhsd2_bg_ct15x, 2450, RIFLE_STOCK);

			ITEM(rhs_weap_ak103_1, 800, RIFLE_STOCK);
			ITEM(rhs_weap_ak103_1_npz, 850, RIFLE_STOCK);
			ITEM(rhs_weap_ak103_2, 900, RIFLE_STOCK);
			ITEM(rhs_weap_ak103_2_npz, 950, RIFLE_STOCK);
			ITEM(rhs_weap_ak103, 1300, RIFLE_STOCK);
			ITEM(rhs_weap_ak103_npz, 1350, RIFLE_STOCK);
			ITEM(rhs_weap_ak103_zenitco01_b33, 1400, RIFLE_STOCK);
			ITEM(rhs_weap_ak103_gp25, 1650, RIFLE_STOCK);
			ITEM(rhs_weap_ak103_gp25_npz, 1700, RIFLE_STOCK);

			ITEM(rhs_weap_ak104, 1100, RIFLE_STOCK);
			ITEM(rhs_weap_ak104_npz, 1150, RIFLE_STOCK);
			ITEM(rhs_weap_ak104_zenitco01_b33, 1200, RIFLE_STOCK);

			ITEM(rhs_weap_aks74, 1000, RIFLE_STOCK);
			ITEM(rhs_weap_aks74_2, 1000, RIFLE_STOCK);
			ITEM(rhs_weap_ak74, 1000, RIFLE_STOCK);
			ITEM(rhs_weap_ak74_2, 1000, RIFLE_STOCK);
			ITEM(rhs_weap_ak74_3, 1000, RIFLE_STOCK);
			ITEM(rhs_weap_ak74_gp25, 1250, RIFLE_STOCK);

			ITEM(rhs_weap_ak105, 1200, RIFLE_STOCK);
			ITEM(rhs_weap_ak105_zenitco01, 1250, RIFLE_STOCK);
			ITEM(rhs_weap_ak105_zenitco01_b33, 1350, RIFLE_STOCK);


			ITEM(rhs_weap_m21a, 1100, RIFLE_STOCK);
			ITEM(rhs_weap_m21a_pr, 1150, RIFLE_STOCK);
			ITEM(rhs_weap_m21s, 1000, RIFLE_STOCK);
			ITEM(rhs_weap_m21s_pr, 1050, RIFLE_STOCK);
			ITEM(rhs_weap_m21a_pbg40, 1350, RIFLE_STOCK);
			ITEM(rhs_weap_m21a_pr_pbg40, 1400, RIFLE_STOCK);
	
			ITEM(rhs_weap_g36c, 1500, RIFLE_STOCK);
			ITEM(rhs_weap_g36kv, 1600, RIFLE_STOCK);
			ITEM(rhs_weap_g36kv_ag36, 1850, RIFLE_STOCK);

			ITEM(rhs_weap_mk18, 2300, RIFLE_STOCK);
			ITEM(rhs_weap_mk18_bk, 2300, RIFLE_STOCK);
			ITEM(rhs_weap_mk18_KAC_bk, 2300, RIFLE_STOCK);
			ITEM(rhs_weap_mk18_d, 2300, RIFLE_STOCK);
			ITEM(rhs_weap_mk18_KAC_d, 2300, RIFLE_STOCK);
			ITEM(rhs_weap_mk18_m320, 2550, RIFLE_STOCK);
			ITEM(rhs_weap_mk18_KAC, 2300, RIFLE_STOCK);
			ITEM(rhs_weap_mk18_wd, 2300, RIFLE_STOCK);
			ITEM(rhs_weap_mk18_KAC_wd, 2300, RIFLE_STOCK);

			ITEM(rhs_weap_hk416d10, 2500, RIFLE_STOCK);
			ITEM(rhs_weap_hk416d10_LMT, 2500, RIFLE_STOCK);
			ITEM(rhs_weap_hk416d10_LMT_d, 2500, RIFLE_STOCK);
			ITEM(rhs_weap_hk416d10_LMT_wd, 2500, RIFLE_STOCK);
			ITEM(rhs_weap_hk416d10_m320, 2750, RIFLE_STOCK);

			ITEM(rhs_weap_hk416d145, 2650, RIFLE_STOCK);
			ITEM(rhs_weap_hk416d145_d, 2650, RIFLE_STOCK);
			ITEM(rhs_weap_hk416d145_d_2, 2650, RIFLE_STOCK);
			ITEM(rhs_weap_hk416d145_wd, 2650, RIFLE_STOCK);
			ITEM(rhs_weap_hk416d145_wd_2, 2650, RIFLE_STOCK);
			ITEM(rhs_weap_hk416d145_m320, 2900, RIFLE_STOCK);
		};

		class sniperRiflesRhs {
			displayName = "DMRs, Sniper Rifles, Battle Rifles";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(rhs_weap_vss, 2600, RIFLE_STOCK);
			ITEM(rhs_weap_vss_grip, 2650, RIFLE_STOCK);
			ITEM(rhs_weap_vss_grip_npz, 2600, RIFLE_STOCK);
			ITEM(rhs_weap_vss_npz, 2650, RIFLE_STOCK);

			ITEM(rhs_weap_m76, 1300, RIFLE_STOCK);

			ITEM(rhs_weap_l1a1, 1500, RIFLE_STOCK);
			ITEM(rhs_weap_l1a1_wood, 1500, RIFLE_STOCK);

			ITEM(rhs_weap_t5000, 1750, RIFLE_STOCK);

			ITEM(rhs_weap_svdp_wd, 2250, RIFLE_STOCK);
			ITEM(rhs_weap_svdp_wd_npz, 2300, RIFLE_STOCK);

			ITEM(rhs_weap_svds, 2200, RIFLE_STOCK);
			ITEM(rhs_weap_svds_npz, 2250, RIFLE_STOCK);
			
			ITEM(rhs_weap_m14, 1800, RIFLE_STOCK);
			ITEM(rhs_weap_m14_d, 1800, RIFLE_STOCK);
			ITEM(rhs_weap_m14_fiberglass, 1800, RIFLE_STOCK);

			ITEM(rhs_weap_m14_rail, 2450, RIFLE_STOCK);
			ITEM(rhs_weap_m14_rail_d, 2450, RIFLE_STOCK);
			ITEM(rhs_weap_m14_rail_fiberglass, 2450, RIFLE_STOCK);
			ITEM(rhs_weap_m14_rail_wd, 2450, RIFLE_STOCK);

			ITEM(rhs_weap_m14_ris_d, 2550, RIFLE_STOCK);
			ITEM(rhs_weap_m14_ris_fiberglass, 2550, RIFLE_STOCK);
			ITEM(rhs_weap_m14_ris_wd, 2550, RIFLE_STOCK);

			ITEM(rhs_weap_m14ebrri, 2650, RIFLE_STOCK);

			ITEM(rhs_weap_m24sws, 2500, RIFLE_STOCK);
			ITEM(rhs_weap_m24sws_d, 2500, RIFLE_STOCK);
			ITEM(rhs_weap_m24sws_wd, 2500, RIFLE_STOCK);

			ITEM(rhs_weap_m40a5, 2600, RIFLE_STOCK);
			ITEM(rhs_weap_m40a5_d, 2600, RIFLE_STOCK);
			ITEM(rhs_weap_m40a5_Wd, 2600, RIFLE_STOCK);

			ITEM(rhs_weap_XM2010, 3000, RIFLE_STOCK);
			ITEM(rhs_weap_XM2010_wd, 3000, RIFLE_STOCK);
			ITEM(rhs_weap_XM2010_d, 3000, RIFLE_STOCK);
			ITEM(rhs_weap_XM2010_sa, 3000, RIFLE_STOCK);

			ITEM(rhs_weap_M107, 5500, 5);
			ITEM(rhs_weap_M107_d, 5500, 5);
			ITEM(rhs_weap_M107_w, 5500, 5);

			ITEM(rhs_weap_mk17_CQC, 3500, RIFLE_STOCK);
			ITEM(rhs_weap_mk17_STD, 3600, RIFLE_STOCK);
			ITEM(rhs_weap_mk17_LB, 3700, RIFLE_STOCK);

			ITEM(rhs_weap_SCARH_CQC, 3500, RIFLE_STOCK);
			ITEM(rhs_weap_SCARH_FDE_CQC, 3500, RIFLE_STOCK);

			ITEM(rhs_weap_SCARH_STD, 3600, RIFLE_STOCK);
			ITEM(rhs_weap_SCARH_FDE_STD, 3600, RIFLE_STOCK);

			ITEM(rhs_weap_SCARH_LB, 3700, RIFLE_STOCK);
			ITEM(rhs_weap_SCARH_FDE_LB, 3700, RIFLE_STOCK);
		};

		class mgRhs {
			displayName = "Machine Guns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(rhs_weap_m27iar, 2800, RIFLE_STOCK);

			ITEM(rhs_weap_m249, 1300, RIFLE_STOCK);

			ITEM(rhs_weap_m84, 2000, RIFLE_STOCK);

			ITEM(rhs_weap_pkp, 2500, RIFLE_STOCK);
			
			ITEM(rhs_weap_m240G, 3000, RIFLE_STOCK);
		};

		class smgRhs {
			displayName = "Submachine Guns";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(rhs_weap_pp2000, 1000, RIFLE_STOCK);

			ITEM(rhs_weap_asval, 2200, RIFLE_STOCK);
			ITEM(rhs_weap_asval_grip, 2250, RIFLE_STOCK);
			ITEM(rhs_weap_asval_grip_npz, 2300, RIFLE_STOCK);
			ITEM(rhs_weap_asval_npz, 2250, RIFLE_STOCK);

			ITEM(rhsusf_weap_MP7A2, 500, RIFLE_STOCK);
			ITEM(rhsusf_weap_MP7A2_aor1, 500, RIFLE_STOCK);
			ITEM(rhsusf_weap_MP7A2_desert, 500, RIFLE_STOCK);
			ITEM(rhsusf_weap_MP7A2_winter, 500, RIFLE_STOCK);
		};

		class specialWeaponsRhs {
			displayName = "Special Weapons";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\primaryWeapon_ca.paa";

			ITEM(rhs_weap_m79, 650, RIFLE_STOCK);

			ITEM(rhs_weap_m32, 1150, RIFLE_STOCK);

			ITEM(rhs_weap_M590_8RD, 500, RIFLE_STOCK);
		};

		class navigationRhs {
			displayName = "Navigation";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\compass_ca.paa";

			ITEM(ItemGPS, 300, NN_STOCK);
			ITEM(ItemRadio, 75, NN_STOCK);

			ITEM(rhs_tr8_periscope_pip, 50, NN_STOCK);

			ITEM(rhsusf_bino_lrf_Vector21, 100, NN_STOCK);
			ITEM(rhsusf_bino_leopold_mk4, 100, NN_STOCK);
			ITEM(rhsusf_bino_m24, 100, NN_STOCK);
			ITEM(rhsusf_bino_m24_ARD, 200, NN_STOCK);
			ITEM(rhssaf_zrak_rd7j, 100, NN_STOCK);

			ITEM(rhsusf_bino_lerca_1200_tan, 350, NN_STOCK);
			ITEM(rhsusf_bino_lerca_1200_black, 350, NN_STOCK);

			ITEM(rhs_pdu4, 500, NN_STOCK);

			ITEM(Laserdesignator, 1500, NN_STOCK);
			ITEM(Laserdesignator_02, 1500, NN_STOCK);
			ITEM(Laserdesignator_03, 1500, NN_STOCK);
			ITEM(rhs_1PN138, 500, NN_STOCK);
			ITEM(rhsusf_ANPVS_14, 500, NN_STOCK);
			ITEM(rhsusf_ANPVS_15, 1000, NN_STOCK);
		};
		class underbarrelRhs {
			displayName = "Underbarrel Accessories";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemBipod_ca.paa";

			ITEM(rhs_acc_harris_swivel, 100, 50);
			ITEM(rhsusf_acc_harris_bipod, 100, 50);

			ITEM(rhsusf_acc_grip2, 200, 50);
			ITEM(rhsusf_acc_grip2_tan, 200, 50);
			ITEM(rhsusf_acc_grip2_wd, 200, 50);
			ITEM(rhs_acc_grip_ffg2, 200, 50);
			ITEM(rhsusf_acc_grip1, 200, 50);
			ITEM(rhsusf_acc_kac_grip, 200, 50);
			ITEM(rhs_acc_grip_rk2, 200, 50);
			ITEM(rhs_acc_grip_rk6, 200, 50);
			ITEM(rhsusf_acc_rvg_blk, 200, 50);
			ITEM(rhsusf_acc_rvg_de, 200, 50);
			ITEM(rhsusf_acc_tacsac_blk, 200, 50);
			ITEM(rhsusf_acc_tacsac_blue, 200, 50);
			ITEM(rhsusf_acc_tacsac_tan, 200, 50);
			ITEM(rhsusf_acc_tdstubby_blk, 200, 50);
			ITEM(rhsusf_acc_tdstubby_tan, 200, 50);
			ITEM(rhsusf_acc_grip3, 200, 50);
			ITEM(rhsusf_acc_grip3_tan, 200, 50);
			
			ITEM(rhsusf_acc_m14_bipod, 200, 50);

			ITEM(bipod_02_F_arid, 100, 50);
			ITEM(bipod_03_F_blk, 100, 50);
			ITEM(bipod_02_F_blk, 100, 50);
			ITEM(bipod_01_F_blk, 100, 50);
			ITEM(bipod_02_F_hex, 100, 50);
			ITEM(bipod_01_F_khk, 100, 50);
			ITEM(bipod_02_F_lush, 100, 50);
			ITEM(bipod_01_F_mtp, 100, 50);
			ITEM(bipod_03_F_oli, 100, 50);
			ITEM(bipod_01_F_snd, 100, 50);
			ITEM(bipod_02_F_tan, 100, 50);
		};
		class pointersRhs {
			displayName = "Pointer Accessories";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemAcc_ca.paa";

			ITEM(acc_flashlight, 75, PN_STOCK);
			ITEM(acc_flashlight_smg_01, 75, PN_STOCK);
			ITEM(rhsusf_acc_anpeq15A, 100, PN_STOCK);
			ITEM(acc_flashlight_pistol, 75, PN_STOCK);

			ITEM(rhs_acc_2dpZenit, 50, MZ_STOCK);
			ITEM(rhs_acc_perst1ik, 75, MZ_STOCK);

			ITEM(rhs_acc_2dpZenit_ris, 50, MZ_STOCK);
			ITEM(rhs_acc_perst1ik_ris, 75, MZ_STOCK);
			ITEM(rhs_acc_perst3, 100, MZ_STOCK);

			ITEM(rhsusf_acc_anpeq15side, 100, PN_STOCK);
			ITEM(rhsusf_acc_anpeq15_top, 100, PN_STOCK);
			ITEM(rhsusf_acc_anpeq15_wmx, 150, PN_STOCK);
			ITEM(rhsusf_acc_anpeq15_wmx_light, 150, PN_STOCK);
			ITEM(rhsusf_acc_anpeq15side_bk, 100, PN_STOCK);
			ITEM(rhsusf_acc_anpeq15_bk_top, 100, PN_STOCK);
			ITEM(rhsusf_acc_anpeq15, 150, PN_STOCK);
			ITEM(rhsusf_acc_anpeq15_bk, 150, PN_STOCK);
			ITEM(rhsusf_acc_anpeq16a, 100, PN_STOCK);
			ITEM(rhsusf_acc_anpeq16a_top, 100, PN_STOCK);

			ITEM(rhsusf_acc_M952V, 75, PN_STOCK);
			ITEM(rhsusf_acc_wmx, 75, PN_STOCK);
			ITEM(rhsusf_acc_wmx_bk, 75, PN_STOCK);
		};
		class muzzlesRhs {
			displayName = "Muzzle Accessories";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\itemMuzzle_ca.paa";

			ITEM(rhs_acc_6p9_suppressor, 200, MZ_STOCK);

			ITEM(rhsusf_acc_rotex_mp7_aor1, 200, MZ_STOCK);
			ITEM(rhsusf_acc_rotex_mp7, 200, MZ_STOCK);
			ITEM(rhsusf_acc_rotex_mp7_desert, 200, MZ_STOCK);
			ITEM(rhsusf_acc_rotex_mp7_winter, 200, MZ_STOCK);

			ITEM(rhsusf_acc_omega9k, 200, MZ_STOCK);
			ITEM(rhsusf_acc_nt4_black, 200, MZ_STOCK);
			ITEM(rhsusf_acc_nt4_tan, 200, MZ_STOCK);
			ITEM(rhsusf_acc_rotex5_grey, 200, MZ_STOCK);
			ITEM(rhsusf_acc_rotex5_tan, 200, MZ_STOCK);

			ITEM(rhsusf_acc_aac_762sd_silencer, 300, MZ_STOCK);
			ITEM(rhsusf_acc_aac_762sdn6_silencer, 300, MZ_STOCK);
			ITEM(rhsgref_sdn6_suppressor, 300, MZ_STOCK);
			ITEM(rhsusf_acc_aac_scarh_silencer, 300, MZ_STOCK);
			ITEM(rhsusf_acc_aac_m14dcqd_silencer, 300, MZ_STOCK);
			ITEM(rhsusf_acc_aac_m14dcqd_silencer_d, 300, MZ_STOCK);
			ITEM(rhsusf_acc_aac_m14dcqd_silencer_wd, 300, MZ_STOCK);

			ITEM(rhsgref_acc_falMuzzle_l1a1, 150, MZ_STOCK);

			ITEM(rhsusf_acc_m14_flashsuppresor, 200, MZ_STOCK);

			ITEM(rhsusf_acc_SF3P556, 50, MZ_STOCK);
			ITEM(rhsusf_acc_SFMB556, 65, MZ_STOCK);

			ITEM(rhs_acc_tgpv, 200, MZ_STOCK);
			ITEM(rhs_acc_tgpv2, 200, MZ_STOCK);

			ITEM(rhs_acc_ak5, 50, MZ_STOCK);
			ITEM(rhs_acc_dtk, 15, MZ_STOCK);
			ITEM(rhs_acc_dtk1, 25, MZ_STOCK);
			ITEM(rhs_acc_dtk2, 35, MZ_STOCK);
			ITEM(rhs_acc_dtk3, 50, MZ_STOCK);
			ITEM(rhs_acc_dtk4long, 200, MZ_STOCK);
			ITEM(rhs_acc_dtk4screws, 200, MZ_STOCK);
			ITEM(rhs_acc_pbs1, 200, MZ_STOCK);


			ITEM(rhsusf_acc_M2010S, 350, MZ_STOCK);
			ITEM(rhsusf_acc_M2010S_d, 350, MZ_STOCK);
			ITEM(rhsusf_acc_M2010S_wd, 350, MZ_STOCK);
			ITEM(rhsusf_acc_M2010S_sa, 350, MZ_STOCK);

			ITEM(rhsusf_acc_m24_silencer_d, 300, MZ_STOCK);
			ITEM(rhsusf_acc_m24_silencer_wd, 300, MZ_STOCK);
			ITEM(rhsusf_acc_m24_silencer_black, 300, MZ_STOCK);

			ITEM(rhsusf_acc_m24_muzzlehider_black, 200, MZ_STOCK);
			ITEM(rhsusf_acc_m24_muzzlehider_d, 200, MZ_STOCK);
			ITEM(rhsusf_acc_m24_muzzlehider_wd, 200, MZ_STOCK);

			ITEM(muzzle_snds_acp, 150, MZ_STOCK);
			ITEM(muzzle_snds_B, 200, MZ_STOCK);//3
			ITEM(muzzle_snds_B_khk_F, 200, MZ_STOCK);
			ITEM(muzzle_snds_B_snd_F, 200, MZ_STOCK);
			ITEM(muzzle_snds_H, 200, MZ_STOCK);//2
			ITEM(muzzle_snds_H_khk_F, 200, MZ_STOCK);//2
			ITEM(muzzle_snds_H_snd_F, 200, MZ_STOCK);
			ITEM(muzzle_snds_H_MG, 200, MZ_STOCK);
			ITEM(muzzle_snds_H_SW, 200, MZ_STOCK);
			ITEM(muzzle_snds_L, 200, MZ_STOCK);//1
			ITEM(muzzle_snds_M, 200, MZ_STOCK);
			ITEM(muzzle_snds_58_blk_F, 150, MZ_STOCK);//1
			ITEM(muzzle_snds_m_khk_F, 200, MZ_STOCK);
			ITEM(muzzle_snds_m_snd_F, 200, MZ_STOCK);
			ITEM(muzzle_snds_58_wdm_F, 150, MZ_STOCK);//1
			ITEM(muzzle_snds_58_ghex_F, 150, MZ_STOCK);
			ITEM(muzzle_snds_58_hex_F, 150, MZ_STOCK);
			ITEM(muzzle_snds_65_TI_blk_F, 350, MZ_STOCK); //2
			ITEM(muzzle_snds_65_TI_hex_F, 350, MZ_STOCK);
			ITEM(muzzle_snds_65_TI_ghex_F, 350, MZ_STOCK);
			ITEM(muzzle_snds_H_MG_blk_F, 200, MZ_STOCK);
		};
		class opticsRhs {
			displayName = "Optics Accessories";
			picture = "";

			class rhsgref_acc_l1a1_l2a2 {
				price = 450;
				stock = 100;
			};

			class rhsgref_acc_l1a1_anpvs2 {
				price = 1100;
				stock = 100;
			};

			class rhs_acc_1pn93_1 {
				price = 1000;
				stock = 100;
			};
			class rhs_acc_1pn93_2 {
				price = 1000;
				stock = 100;
			};
			class rhs_acc_pgo7v {
				price = 500;
				stock = 100;
			};
			class rhs_acc_pgo7v2 {
				price = 525;
				stock = 100;
			};
			class rhs_acc_pgo7v3 {
				price = 550;
				stock = 100;
			};

			class rhs_optic_maaws {
				price = 500;
				stock = 100;
			};

			class rhs_acc_1p29 {
				price = 400;
				stock = 100;
			};
			class rhs_acc_1p63 {
				price = 250;
				stock = 100;
			};
			class rhs_acc_1p78 {
				price = 500;
				stock = 100;
			};
			class rhs_acc_1pn34 {
				price = 850;
				stock = 100;
			};
			class rhs_acc_ekp1 {
				price = 200;
				stock = 100;
			};
			class rhs_acc_ekp8_02 {
				price = 200;
				stock = 100;
			};
			class rhs_acc_nita {
				price = 350;
				stock = 100;
			};
			class rhs_acc_okp7_dovetail {
				price = 250;
				stock = 100;
			};
			class rhs_acc_pkas {
				price = 300;
				stock = 100;
			};
			class rhs_acc_pso1m2 {
				price = 750;
				stock = 100;
			};
			class rhs_acc_pso1m21 {
				price = 750;
				stock = 100;
			};

			class rhs_acc_rakursPM {
				price = 200;
				stock = 100;
			};
			class rhs_acc_1p87 {
				price = 200;
				stock = 100;
			};
			class rhs_acc_ekp8_18 {
				price = 200;
				stock = 100;
			};
			class rhs_acc_okp7_picatinny {
				price = 200;
				stock = 100;
			};
			class rhs_acc_dh520x56 {
				price = 1500;
				stock = 100;
			};

			class rhsusf_acc_EOTECH {
				price = 250;
				stock = 100;
			};
			class rhsusf_acc_eotech_552 {
				price = 250;
				stock = 100;
			};
			class rhsusf_acc_eotech_552_d {
				price = 250;
				stock = 100;
			};
			class rhsusf_acc_eotech_552_wd {
				price = 250;
				stock = 100;
			};
			class rhsusf_acc_compm4 {
				price = 300;
				stock = 100;
			};

			class rhsusf_acc_M8541 {
				price = 1000;
				stock = 100;
			};
			class rhsusf_acc_M8541_low {
				price = 1000;
				stock = 100;
			};
			class rhsusf_acc_M8541_low_d {
				price = 1000;
				stock = 100;
			};
			class rhsusf_acc_M8541_low_wd {
				price = 1000;
				stock = 100;
			};
			class rhsusf_acc_premier_low {
				price = 1000;
				stock = 100;
			};
			class rhsusf_acc_premier_anpvs27 {
				price = 1600;
				stock = 100;
			};
			class rhsusf_acc_premier {
				price = 1000;
				stock = 100;
			};

			class rhsusf_acc_LEUPOLDMK4 {
				price = 900;
				stock = 100;
			};
			class rhsusf_acc_LEUPOLDMK4_2 {
				price = 1250;
				stock = 100;
			};
			class rhsusf_acc_LEUPOLDMK4_d {
				price = 1500;
				stock = 100;
			};
			class rhsusf_acc_LEUPOLDMK4_wd {
				price = 1500;
				stock = 100;
			};
			class rhsusf_acc_LEUPOLDMK4_2_d {
				price = 1500;
				stock = 100;
			};
			class rhsusf_acc_LEUPOLDMK4_2_mrds {
				price = 1750;
				stock = 100;
			};


			class rhsusf_acc_mrds {
				price = 200;
				stock = 100;
			};
			class rhsusf_acc_mrds_fwd {
				price = 200;
				stock = 100;
			};
			class rhsusf_acc_mrds_c {
				price = 200;
				stock = 100;
			};
			class rhsusf_acc_mrds_fwd_c {
				price = 200;
				stock = 100;
			};
			class rhsusf_acc_RM05 {
				price = 200;
				stock = 100;
			};
			class rhsusf_acc_RM05_fwd {
				price = 200;
				stock = 100;
			};


			class rhsusf_acc_RX01_NoFilter {
				price = 250;
				stock = 100;
			};
			class rhsusf_acc_RX01 {
				price = 300;
				stock = 100;
			};
			class rhsusf_acc_RX01_NoFilter_tan {
				price = 250;
				stock = 100;
			};

			class rhsusf_acc_T1_high {
				price = 250;
				stock = 100;
			};
			class rhsusf_acc_T1_low {
				price = 300;
				stock = 100;
			};
			class rhsusf_acc_T1_low_fwd {
				price = 250;
				stock = 100;
			};


			class rhsusf_acc_su230 {
				price = 800;
				stock = 100;
			};
			class rhsusf_acc_su230_c {
				price = 800;
				stock = 100;
			};
			class rhsusf_acc_su230_mrds {
				price = 1050;
				stock = 100;
			};
			class rhsusf_acc_su230_mrds_c {
				price = 1050;
				stock = 100;
			};


			class rhsusf_acc_su230a {
				price = 850;
				stock = 100;
			};
			class rhsusf_acc_su230a_c {
				price = 850;
				stock = 100;
			};
			class rhsusf_acc_su230a_mrds {
				price = 1100;
				stock = 100;
			};
			class rhsusf_acc_su230a_mrds_c {
				price = 1100;
				stock = 100;
			};

			class rhsusf_acc_ACOG_MDO {
				price = 1500;
				stock = 100;
			};


			class rhsusf_acc_premier_mrds {
				price = 1250;
				stock = 100;
			};
			class rhsusf_acc_M8541_mrds {
				price = 1250;
				stock = 100;
			};

			class rhsusf_acc_g33_T1 {
				price = 550;
				stock = 100;
			};
			class rhsusf_acc_g33_xps3 {
				price = 500;
				stock = 100;
			};
			class rhsusf_acc_g33_xps3_tan {
				price = 500;
				stock = 100;
			};

			class rhsusf_acc_anpas13gv1 {
				price = 2500;
				stock = 5;
			};

			class rhsusf_acc_anpvs27 {
				price = 600;
				stock = 100;
			};

			class rhsusf_acc_ACOG2_USMC {
				price = 900;
				stock = 100;
			};
			class rhsusf_acc_ACOG3_USMC {
				price = 950;
				stock = 100;
			};
			class rhsusf_acc_ACOG_USMC {
				price = 850;
				stock = 100;
			};

			class rhsusf_acc_ACOG_RMR {
				price = 1100;
				stock = 100;
			};
			class rhsusf_acc_ACOG_d {
				price = 850;
				stock = 100;
			};
			class rhsusf_acc_ACOG_wd {
				price = 850;
				stock = 100;
			};

			class rhsusf_acc_ELCAN {
				price = 700;
				stock = 100;
			};
			class rhsusf_acc_ELCAN_ard {
				price = 750;
				stock = 100;
			};
			
			class rhsusf_acc_ACOG_anpvs27 {
				price = 1450;
				stock = 100;
			};

			class optic_Holosight_blk_F {
				price = 250;
				stock = 100;
			};
			class optic_Holosight_lush_F {
				price = 250;
				stock = 100;
			};
			class optic_Holosight_arid_F {
				price = 250;
				stock = 100;
			};
			class optic_Holosight_khk_F {
				price = 250;
				stock = 100;
			};
			class optic_Holosight_smg_blk_F {
				price = 250;
				stock = 100;
			};
			class optic_Holosight_smg_khk_F {
				price = 250;
				stock = 100;
			};
			class optic_DMS_weathered_Kir_F {
				price = 1000;
				stock = 100;
			};
			class optic_Aco {
				price = 200; 
				stock = 100;
			};
			class optic_ACO_grn {
				price = 200; 
				stock = 100;
			};
			class optic_ACO_grn_smg {
				price = 200; 
				stock = 100;
			};
			class optic_Aco_smg {
				price = 200; 
				stock = 100;
			};
			class optic_Holosight {
				price = 250;
				stock = 100;
			};
			class optic_Holosight_smg {
				price = 250;
				stock = 100;
			};
			class optic_MRD {
				price = 100;
				stock = 100;
			};
			class optic_MRD_black {
				price = 100;
				stock = 100;
			};
			class optic_Yorris {
				price = 100;
				stock = 100;
			};
		};
		class magazinesRhs {
			displayName = "Magazines";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\cargoMag_ca.paa";

			class Laserbatteries {
				price = 200;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// Underbarrel
			///////////////////////////////////////////////////////
			ITEM(rhs_mag_M441_HE, 100, MZ_STOCK);
			ITEM(rhs_mag_M433_HEDP, 150, MZ_STOCK);
			ITEM(rhs_mag_M397_HET, 115, MZ_STOCK);
			ITEM(rhs_mag_m4009, 150, MZ_STOCK);
			ITEM(rhs_mag_m576, 75, MZ_STOCK);
			ITEM(rhs_mag_M585_white, 30, MZ_STOCK);
			ITEM(rhs_mag_m661_green, 30, MZ_STOCK);
			ITEM(rhs_mag_m662_red, 30, MZ_STOCK);
			ITEM(rhs_mag_m713_Red, 50, MZ_STOCK);
			ITEM(rhs_mag_m714_White, 50, MZ_STOCK);
			ITEM(rhs_mag_m716_yellow, 50, MZ_STOCK);

			ITEM(rhs_VOG25, 100, MZ_STOCK);
			ITEM(rhs_VG40TB, 150, MZ_STOCK);
			ITEM(rhs_VOG25P, 115, MZ_STOCK);
			ITEM(rhs_VG40SZ, 150, MZ_STOCK);
			ITEM(rhs_GDM40, 75, MZ_STOCK);
			ITEM(rhs_VG40OP_white, 30, MZ_STOCK);
			ITEM(rhs_VG40OP_green, 30, MZ_STOCK);
			ITEM(rhs_VG40OP_red, 30, MZ_STOCK);
			ITEM(rhs_GRD40_White, 50, MZ_STOCK);
			ITEM(rhs_GRD40_Green, 50, MZ_STOCK);
			ITEM(rhs_GRD40_Red, 50, MZ_STOCK);
			ITEM(rhs_VG40MD, 200, MZ_STOCK);


			class rhsusf_mag_6Rnd_M576_Buckshot {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_mag_6Rnd_M441_HE {
				price = 500;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_mag_6Rnd_M397_HET {
				price = 550;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_mag_6Rnd_M433_HEDP {
				price = 650;
				stock = MAGAZINE_STOCK;
			};

			class rhsusf_mag_6Rnd_m4009 {
				price = 450;
				stock = MAGAZINE_STOCK;
			};

			class rhsusf_mag_6Rnd_M585_white {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_mag_6Rnd_m661_green {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_mag_6Rnd_m662_red {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_mag_6Rnd_M713_red {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_mag_6Rnd_M714_white {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_mag_6Rnd_M715_green {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_mag_6Rnd_M716_yellow {
				price = 350;
				stock = MAGAZINE_STOCK;
			};


			///////////////////////////////////////////////////////
			// Pistols, SMGs
			///////////////////////////////////////////////////////
			ITEM(rhs_18rnd_9x21mm_7N28, 25, MAGAZINE_STOCK);
			ITEM(rhs_18rnd_9x21mm_7N29, 50, MAGAZINE_STOCK);
			ITEM(rhs_18rnd_9x21mm_7BT3, 35, MAGAZINE_STOCK);

			ITEM(rhsusf_mag_40Rnd_46x30_FMJ, 50, MAGAZINE_STOCK);
			ITEM(rhsusf_mag_40Rnd_46x30_JHP, 75, MAGAZINE_STOCK);
			ITEM(rhsusf_mag_40Rnd_46x30_AP, 100, MAGAZINE_STOCK);

			ITEM(rhs_mag_9x18_8_57N181S, 25, MAGAZINE_STOCK);

			ITEM(rhsusf_mag_7x45acp_MHP, 50, MAGAZINE_STOCK);

			ITEM(rhs_mag_9x19_17, 50, MAGAZINE_STOCK);

			ITEM(rhs_mag_9x19mm_7n21_20, 50, MAGAZINE_STOCK);
			ITEM(rhs_mag_9x19mm_7n31_20, 65, MAGAZINE_STOCK);
			ITEM(rhs_mag_9x19mm_7n21_44, 125, MAGAZINE_STOCK);
			ITEM(rhs_mag_9x19mm_7n31_44, 135, MAGAZINE_STOCK);

			ITEM(rhsusf_mag_17Rnd_9x19_JHP, 50, MAGAZINE_STOCK);
			ITEM(rhsusf_mag_17Rnd_9x19_FMJ, 65, MAGAZINE_STOCK);

			ITEM(rhsusf_mag_15Rnd_9x19_JHP, 45, MAGAZINE_STOCK);
			ITEM(rhsusf_mag_15Rnd_9x19_FMJ, 60, MAGAZINE_STOCK);

			ITEM(rhssaf_mag_15Rnd_9x19_JHP, 45, MAGAZINE_STOCK);
			ITEM(rhssaf_mag_15Rnd_9x19_FMJ, 60, MAGAZINE_STOCK);

			ITEM(rhs_20rnd_9x39mm_SP5, 200, MAGAZINE_STOCK);
			ITEM(rhs_20rnd_9x39mm_SP6, 250, MAGAZINE_STOCK);
			ITEM(rhs_10rnd_9x39mm_SP5, 100, MAGAZINE_STOCK);
			ITEM(rhs_10rnd_9x39mm_SP6, 150, MAGAZINE_STOCK);


			///////////////////////////////////////////////////////
			// SPECIAL
			///////////////////////////////////////////////////////
			ITEM(rhsusf_8Rnd_Slug, 100, MAGAZINE_STOCK);
			ITEM(rhsusf_8Rnd_00Buck, 125, MAGAZINE_STOCK);
			ITEM(rhsusf_8Rnd_HE, 500, MAGAZINE_STOCK);
			ITEM(rhsusf_8Rnd_FRAG, 550, MAGAZINE_STOCK);


			///////////////////////////////////////////////////////
			// RIFLES
			///////////////////////////////////////////////////////
			class rhs_30Rnd_762x39mm_Savz58 {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_762x39mm_Savz58_tracer {
				price = 165;
				stock = MAGAZINE_STOCK;
			};

			class rhsgref_25Rnd_792x33_SmE_StG {
				price = 50;
				stock = MAGAZINE_STOCK;
			};

			class rhs_mag_20Rnd_SCAR_762x51_m80_ball {
				price = 500;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_SCAR_762x51_m80a1_epr {
				price = 550;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_SCAR_762x51_m118_special {
				price = 600;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_SCAR_762x51_mk316_special {
				price = 650;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_SCAR_762x51_m62_tracer {
				price = 525;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_SCAR_762x51_m61_ap {
				price = 700;
				stock = MAGAZINE_STOCK;
			};

			class rhs_mag_20Rnd_SCAR_762x51_m80_ball_bk {
				price = 500;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_SCAR_762x51_m80a1_epr_bk {
				price = 550;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_SCAR_762x51_m118_special_bk {
				price = 600;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_SCAR_762x51_mk316_special_bk {
				price = 650;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_SCAR_762x51_m62_tracer_bk {
				price = 525;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_SCAR_762x51_m61_ap_bk {
				price = 700;
				stock = MAGAZINE_STOCK;
			};
			
			

			class rhs_mag_20Rnd_556x45_M193_Stanag {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_556x45_M193_2MAG_Stanag {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_556x45_M196_2MAG_Stanag_Tracer_Red {
				price = 85;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_556x45_M196_Stanag_Tracer_Red {
				price = 85;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_556x45_M855_Stanag {
				price = 90;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_556x45_M855A1_Stanag {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_556x45_Mk262_Stanag {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_30Rnd_556x45_M193_Stanag {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_30Rnd_556x45_M196_Stanag_Tracer_Red {
				price = 115;
				stock = MAGAZINE_STOCK;
			};

			class rhs_mag_30Rnd_556x45_M855_Stanag {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_30Rnd_556x45_M855_Stanag_Ranger {
				price = 130;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_30Rnd_556x45_M855_PMAG {
				price = 125;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_30Rnd_556x45_M855_PMAG_Tracer_Red {
				price = 130;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red {
				price = 140;
				stock = MAGAZINE_STOCK;
			};

			class rhs_mag_30Rnd_556x45_M855A1_Stanag {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red {
				price = 165;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_30Rnd_556x45_M855A1_PMAG {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red {
				price = 165;
				stock = MAGAZINE_STOCK;
			};

			class rhs_mag_30Rnd_556x45_Mk262_Stanag {
				price = 200;
				stock = MAGAZINE_STOCK;
			};		
			class rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull {
				price = 205;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_30Rnd_556x45_Mk262_Stanag_Ranger {
				price = 205;
				stock = MAGAZINE_STOCK;
			};

			class rhs_mag_30Rnd_556x45_Mk318_Stanag {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_30Rnd_556x45_Mk318_Stanag_Pull {
				price = 255;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_30Rnd_556x45_Mk318_Stanag_Ranger {
				price = 255;
				stock = MAGAZINE_STOCK;
			};

			class rhs_mag_30Rnd_556x45_Mk318_SCAR {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_30Rnd_556x45_Mk318_SCAR_Pull {
				price = 255;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_30Rnd_556x45_Mk318_SCAR_Ranger {
				price = 255;
				stock = MAGAZINE_STOCK;
			};

			class rhs_mag_100Rnd_556x45_M855A1_cmag {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_100Rnd_556x45_M855A1_cmag_mixed {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_100Rnd_556x45_M855_cmag {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_100Rnd_556x45_M855_cmag_mixed {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_100Rnd_556x45_Mk318_cmag {
				price = 800;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_100Rnd_556x45_Mk262_cmag {
				price = 650;
				stock = MAGAZINE_STOCK;
			};


			class rhs_30Rnd_762x39mm_polymer {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_762x39mm_polymer_tracer {
				price = 210;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_762x39mm_polymer_89 {
				price = 225;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_762x39mm_polymer_U {
				price = 330;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_762x39mm_bakelite {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_762x39mm_bakelite_tracer {
				price = 210;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_762x39mm_bakelite_89 {
				price = 225;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_762x39mm_bakelite_U {
				price = 330;
				stock = MAGAZINE_STOCK;
			};
			class rhs_75Rnd_762x39mm {
				price = 650;
				stock = MAGAZINE_STOCK;
			};
			class rhs_75Rnd_762x39mm_tracer {
				price = 660;
				stock = MAGAZINE_STOCK;
			};
			class rhs_75Rnd_762x39mm_89 {
				price = 675;
				stock = MAGAZINE_STOCK;
			};

			class rhs_30Rnd_545x39_7N10_AK {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_7N10_plum_AK {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_7N10_desert_AK {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_7N10_camo_AK {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_7N6_AK {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_7N6_green_AK {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_AK_green {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_AK_plum_green {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_7U1_AK {
				price = 115;
				stock = MAGAZINE_STOCK;
			};
			class rhs_45Rnd_545X39_7N10_AK {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class rhs_45Rnd_545X39_AK_Green {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class rhs_45Rnd_545X39_7N22_AK {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class rhs_45Rnd_545X39_7U1_AK {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_7N22_AK {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_7N22_plum_AK {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_7N22_camo_AK {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_7N10_2mag_AK {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_7N10_2mag_plum_AK {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_7N10_2mag_desert_AK {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class rhs_30Rnd_545x39_7N22_desert_AK {
				price = 150;
				stock = MAGAZINE_STOCK;
			};

			class rhsgref_30rnd_556x45_m21 {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class rhsgref_30rnd_556x45_m21_t {
				price = 115;
				stock = MAGAZINE_STOCK;
			};

			class rhsgref_30rnd_556x45_vhs2 {
				price = 100;
				stock = MAGAZINE_STOCK;
			};
			class rhsgref_30rnd_556x45_vhs2_t {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			class rhssaf_30rnd_556x45_EPR_G36 {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class rhssaf_30rnd_556x45_SOST_G36 {
				price = 175;
				stock = MAGAZINE_STOCK;
			};
			class rhssaf_30rnd_556x45_SPR_G36 {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class rhssaf_30rnd_556x45_Tracers_G36 {
				price = 110;
				stock = MAGAZINE_STOCK;
			};
			class rhssaf_30rnd_556x45_MDIM_G36 {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class rhssaf_30rnd_556x45_TDIM_G36 {
				price = 160;
				stock = MAGAZINE_STOCK;
			};
			class rhssaf_100rnd_556x45_EPR_G36 {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			

			///////////////////////////////////////////////////////
			// DMRs, Sniper Rifles
			///////////////////////////////////////////////////////
			class rhsgref_10Rnd_792x57_m76 {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class rhssaf_10Rnd_792x57_m76_tracer {
				price = 215;
				stock = MAGAZINE_STOCK;
			};

			class rhs_10Rnd_762x54mmR_7N1 {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class rhs_10Rnd_762x54mmR_7N14 {
				price = 300;
				stock = MAGAZINE_STOCK;
			};

			class rhs_5Rnd_338lapua_t5000 {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class 5Rnd_127x108_APDS_Mag {
				price = 800;
				stock = MAGAZINE_STOCK;
			};

			class rhsusf_5Rnd_300winmag_xm2010 {
				price = 600;
				stock = MAGAZINE_STOCK;
			};

			class rhsusf_5Rnd_762x51_m62_Mag {
				price = 375;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_5Rnd_762x51_m993_Mag {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_5Rnd_762x51_m118_special_Mag {
				price = 350;
				stock = MAGAZINE_STOCK;
			};

			class rhsusf_5Rnd_762x51_AICS_m62_Mag {
				price = 375;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_5Rnd_762x51_AICS_m993_Mag {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_5Rnd_762x51_AICS_m118_special_Mag {
				price = 350;
				stock = MAGAZINE_STOCK;
			};

			class rhsusf_10Rnd_762x51_m62_Mag {
				price = 700;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_10Rnd_762x51_m993_Mag {
				price = 950;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_10Rnd_762x51_m118_special_Mag {
				price = 750;
				stock = MAGAZINE_STOCK;
			};

			class rhs_mag_20Rnd_762x51_m80_fnfal {
				price = 500;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_762x51_m62_fnfal {
				price = 525;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_762x51_m80a1_fnfal {
				price = 550;
				stock = MAGAZINE_STOCK;
			};
			class rhs_mag_20Rnd_762x51_m61_fnfal {
				price = 700;
				stock = MAGAZINE_STOCK;
			};

			class rhsusf_20Rnd_762x51_m80_Mag {
				price = 500;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_20Rnd_762x51_m62_Mag {
				price = 550;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_20Rnd_762x51_m118_special_Mag {
				price = 600;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_20Rnd_762x51_m993_Mag {
				price = 700;
				stock = MAGAZINE_STOCK;
			};

			class rhsusf_mag_10Rnd_STD_50BMG_M33 {
				price = 600;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_mag_10Rnd_STD_50BMG_mk211 {
				price = 800;
				stock = MAGAZINE_STOCK;
			};
			
			///////////////////////////////////////////////////////
			// MGs
			///////////////////////////////////////////////////////
			class rhsusf_200Rnd_556x45_box {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_200rnd_556x45_mixed_box {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_200rnd_556x45_M855_box {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_200rnd_556x45_M855_mixed_box {
				price = 450;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_100Rnd_556x45_soft_pouch {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_100Rnd_556x45_mixed_soft_pouch {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_100Rnd_556x45_M855_soft_pouch {
				price = 250;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_100Rnd_556x45_M855_mixed_soft_pouch {
				price = 250;
				stock = MAGAZINE_STOCK;
			};


			class rhsusf_100Rnd_762x51 {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_100Rnd_762x51_m80a1epr {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_100Rnd_762x51_m62_tracer {
				price = 375;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_100Rnd_762x51_m61_ap {
				price = 550;
				stock = MAGAZINE_STOCK;
			};

			class rhsusf_50Rnd_762x51 {
				price = 175;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_50Rnd_762x51_m80a1epr {
				price = 200;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_50Rnd_762x51_m62_tracer {
				price = 150;
				stock = MAGAZINE_STOCK;
			};
			class rhsusf_50Rnd_762x51_m61_ap {
				price = 300;
				stock = MAGAZINE_STOCK;
			};

			class rhs_100Rnd_762x54mmR {
				price = 300;
				stock = MAGAZINE_STOCK;
			};
			class rhs_100Rnd_762x54mmR_green {
				price = 350;
				stock = MAGAZINE_STOCK;
			};
			class rhs_100Rnd_762x54mmR_7N13 {
				price = 400;
				stock = MAGAZINE_STOCK;
			};
			class rhs_100Rnd_762x54mmR_7N26 {
				price = 550;
				stock = MAGAZINE_STOCK;
			};
			class rhs_100Rnd_762x54mmR_7BZ3 {
				price = 600;
				stock = MAGAZINE_STOCK;
			};

			///////////////////////////////////////////////////////
			// SMGs
			///////////////////////////////////////////////////////
			class 50Rnd_570x28_SMG_03 {
				price = 100;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_9x21_Mag_SMG_02 {
				price = 50;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Mag_SMG_02_Tracer_Red {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Mag_SMG_02_Tracer_Yellow {
				price = 65;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_9x21_Mag_SMG_02_Tracer_Green {
				price = 65;
				stock = MAGAZINE_STOCK;
			};

			class 30Rnd_45ACP_Mag_SMG_01 {
				price = 75;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_45ACP_Mag_SMG_01_Tracer_Green {
				price = 85;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_45ACP_Mag_SMG_01_Tracer_Red {
				price = 85;
				stock = MAGAZINE_STOCK;
			};
			class 30Rnd_45ACP_Mag_SMG_01_Tracer_Yellow {
				price = 85;
				stock = MAGAZINE_STOCK;
			};
		};
		class miscRhs {
			displayName = "Misc";
			picture = "a3\ui_f\data\gui\Rsc\RscDisplayArsenal\backpack_ca.paa";

			ITEM(B_Bergen_dgtl_F, 900, MISC_STOCK);
			ITEM(B_Bergen_hex_F, 900, MISC_STOCK);
			ITEM(B_Bergen_mcamo_F, 900, MISC_STOCK);
			ITEM(B_Bergen_tna_F, 900, MISC_STOCK);

			ITEM(rhsgref_hidf_alicepack, 750, MISC_STOCK);
			ITEM(rhsgref_ttsko_alicepack, 750, MISC_STOCK);
			ITEM(rhsgref_wdl_alicepack, 750, MISC_STOCK);
			ITEM(rhssaf_alice_md2camo, 750, MISC_STOCK);
			ITEM(rhssaf_alice_smb, 750, MISC_STOCK);

			ITEM(U_I_FullGhillie_lsh, 1000, MISC_STOCK);
			ITEM(U_I_FullGhillie_ard, 1000, MISC_STOCK);
			ITEM(U_I_FullGhillie_sard, 1000, MISC_STOCK);

			ITEM(rhsusf_m112_mag, 350, MISC_STOCK);
			ITEM(rhsusf_m112x4_mag, 1400, MISC_STOCK);
			ITEM(rhsusf_mine_m14_mag, 400, MISC_STOCK);
			ITEM(rhs_mine_M19_mag, 300, MISC_STOCK);
			ITEM(rhs_mine_M7A2_mag, 200, MISC_STOCK);
			ITEM(rhssaf_mine_pma3_mag, 300, MISC_STOCK);
			ITEM(rhs_mag_mine_pfm1, 250, MISC_STOCK);
			ITEM(rhs_mine_tm62m_mag, 350, MISC_STOCK);
		};
	};

	class stores {
		class vanilla {
			displayName = "Arms Dealer Store";
			categories[] = {
				"handgunsVanilla", 
				"launchersVanilla", 
				"riflesVanilla", 
				"sniperRiflesVanilla", 
				"mgVanilla",
				"smgVanilla", 
				"launcherMagazinesVanilla", 
				"magazinesVanilla", 
				"opticsVanilla", 
				"muzzlesVanilla", 
				"underbarrelVanilla", 
				"pointersVanilla", 
				"navigationVanilla", 
				"miscVanilla"
			};
		};

		class aegis {
			displayName = "Arms Dealer Store";
			categories[] = {
				"handgunsAegis", 
				"launchersAegis", 
				"riflesAegis", 
				"sniperRiflesAegis", 
				"mgAegis",
				"smgAegis", 
				"launcherMagazinesVanilla", 
				"magazinesAegis", 
				"opticsVanilla", 
				"muzzlesVanilla", 
				"underbarrelVanilla", 
				"pointersVanilla", 
				"navigationVanilla", 
				"miscVanilla"
			};
		};

		class antistasiUnits {
			displayName = "Arms Dealer Store";
			categories[] = {
			"handgunsAu", 
			"launchersAu", 
			"riflesAu", 
			"sniperRiflesAu",
			"specialWeaponsAu", 
			"mgAu", 
			"smgAu", 
			"launcherMagazinesAu", 
			"magazinesAu", 
			"opticsAu", 
			"muzzlesAu", 
			"underbarrelAu", 
			"pointersAu", 
			"navigationVanilla", 
			"miscAu"
			};
		};

		class rhs {
			displayName = "Arms Dealer Store";
			categories[] = {
			"handgunsRhs", 
			"launchersRhs", 
			"riflesRhs", 
			"sniperRiflesRhs", 
			"specialWeaponsRhs",
			"mgRhs", 
			"smgRhs", 
			"launcherMagazinesRhs", 
			"magazinesRhs", 
			"opticsRhs", 
			"muzzlesRhs", 
			"underbarrelRhs", 
			"pointersRhs", 
			"navigationRhs", 
			"miscRhs"
			};
		};
	};
};

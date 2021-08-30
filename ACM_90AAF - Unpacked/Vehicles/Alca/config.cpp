class CfgPatches
{
	class ACM_ALTIS90_Vehicles
	{
		units[]={};
		weapons[]={};
		requiredAddons[]={};
		author="Anthrax";
	};
};
class gm_texturesource_base;
class CfgVehicles
{
	class I_Plane_Fighter_03_dynamicLoadout_F;
	class ACM_AAFGM_Vehicle_Alca: I_Plane_Fighter_03_dynamicLoadout_F
	{
		scope=0;
		side=0;
		faction="ACM_AAFGM";
		class TextureSources
		{
			class acm_aafgm_camo: gm_texturesource_base
			{
				factions[]=
				{
					"ACM_AAFGM",
					"ACM_AAFGM_Win"
				};
				displayname="ALTPAT";
				textures[]=
				{
					"ACM_90AAF\Vehicles\Alca\ACM_AAFGM_Alca_Body1_CO.paa",
					"ACM_90AAF\Vehicles\Alca\ACM_AAFGM_Alca_Body2_CO.paa"
				};
			};
			class acm_aafgm_grey: gm_texturesource_base
			{
				factions[]=
				{
					"ACM_AAFGM",
					"ACM_AAFGM_Win"
				};
				displayname="Grey";
				textures[]=
				{
					"ACM_90AAF\Vehicles\Alca\ACM_AAFGM_Alca_Body_GREY1_CO.paa",
					"ACM_90AAF\Vehicles\Alca\ACM_AAFGM_Alca_Body_GREY2_CO.paa"
				};
			};
		};
		hiddenSelectionsTextures[]=
		{
			"ACM_90AAF\Vehicles\Alca\ACM_AAFGM_Alca_Body1_CO.paa",
			"ACM_90AAF\Vehicles\Alca\ACM_AAFGM_Alca_Body2_CO.paa"
		};
	};
};
class cfgMods
{
	author="Anthrax";
	timepacked="1608140490";
};

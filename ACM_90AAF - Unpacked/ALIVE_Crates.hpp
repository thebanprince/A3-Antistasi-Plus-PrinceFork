// Copy this part to your CfgVehicles config. Switch the Arma 3 vanilla boxes for CUP ones if necessary (replace all instances).
    class Box_IND_Ammo_F; 
    class Box_IND_Wps_F; 
    class Box_IND_Support_F; 
    class Box_IND_WpsLaunch_F; 
    class Box_AAF_Uniforms_F; 
    class B_SupplyCrate_F; 
	class Box_NATO_Ammo_F;
	class Box_NATO_Wps_F;
	class Box_NATO_Support_F;
	class Box_NATO_WpsLaunch_F;
	class Box_NATO_Uniforms_F;

    class AAFGM_AmmoBox : Box_IND_Ammo_F {
        author = ALiVE ORBAT CREATOR;
        displayName = "AAF(90's) Ammo Box";
        class TransportMagazines {
            mag_xx(30Rnd_556x45_Stanag,50);
            mag_xx(gm_handgrenade_frag_dm51a1,50);
            mag_xx(gm_smokeshell_wht_dm25,50);
            mag_xx(gm_explosive_petn_charge,50);
            mag_xx(gm_smokeshell_blu_gc,50);
            mag_xx(gm_smokeshell_grn_gc,50);
            mag_xx(gm_smokeshell_org_gc,50);
            mag_xx(gm_smokeshell_red_gc,50);
            mag_xx(gm_1Rnd_265mm_smoke_single_yel_gc,50);
            mag_xx(gm_1Rnd_265mm_flare_single_red_DM13,50);
            mag_xx(gm_1Rnd_265mm_flare_single_grn_DM11,50);
            mag_xx(20Rnd_762x51_Mag,50);
            mag_xx(200Rnd_556x45_Box_F,50);
            mag_xx(50Rnd_570x28_SMG_03,50);
            mag_xx(gm_1Rnd_84x245mm_heat_t_DM32_carlgustaf,50);
            mag_xx(gm_1Rnd_84x245mm_ILLUM_DM16_carlgustaf,50);
            mag_xx(gm_1Rnd_44x537mm_heat_dm32_pzf44_2,50);
            mag_xx(gm_20Rnd_762x51mm_B_T_DM21_g3_blk,50);
            mag_xx(gm_8Rnd_9x19mm_B_DM11_p1_blk,50);
            mag_xx(9Rnd_45ACP_Mag,50);
            mag_xx(gm_20Rnd_762x51mm_B_DM111_g3_blk,50);
            mag_xx(gm_120Rnd_762x51mm_B_T_DM21_mg3_grn,50);
            mag_xx(gm_mine_ap_dm31,50);
            mag_xx(ClaymoreDirectionalMine_Remote_Mag,50);
            mag_xx(APERSTripMine_Wire_Mag,50);
            mag_xx(gm_explosive_plnp_charge,50);
            mag_xx(SmokeShellOrange,50);
            mag_xx(Chemlight_green,50);
            mag_xx(SmokeShellGreen,50);
            mag_xx(HandGrenade,50);
            mag_xx(SmokeShell,50);
        };
        class TransportWeapons {
        };
        class TransportItems {
        };
    };
    class AAFGM_WeaponsBox : Box_IND_Wps_F {
        author = ALiVE ORBAT CREATOR;
        displayName = "AAF(90's) Weapons Box";
        class TransportMagazines {
            mag_xx(30Rnd_556x45_Stanag,50);
            mag_xx(gm_1Rnd_265mm_flare_multi_red_gc,50);
            mag_xx(gm_1Rnd_265mm_smoke_single_yel_gc,50);
            mag_xx(20Rnd_762x51_Mag,50);
            mag_xx(200Rnd_556x45_Box_F,50);
            mag_xx(50Rnd_570x28_SMG_03,50);
            mag_xx(gm_20Rnd_762x51mm_B_T_DM21_g3_blk,50);
            mag_xx(9Rnd_45ACP_Mag,50);
            mag_xx(gm_20Rnd_762x51mm_B_DM111_g3_blk,50);
            mag_xx(gm_120Rnd_762x51mm_B_T_DM21_mg3_grn,50);
        };
        class TransportWeapons {
            weap_xx(gm_m16a1_blk,10);
            weap_xx(AAFGM_c7a1_Optic,10);
            weap_xx(gm_p2a1_blk,10);
            weap_xx(AAFGM_m14_Optic,10);
            weap_xx(LMG_03_F,10);
            weap_xx(gm_m16a2_blk,10);
            weap_xx(SMG_03C_black,10);
            weap_xx(gm_g3a4_oli,10);
            weap_xx(hgun_ACPC2_F,10);
            weap_xx(gm_g3a3_oli,10);
            weap_xx(AAFGM_g3_optic,10);
            weap_xx(gm_mg3_blk,10);
            weap_xx(gm_g3a4_blk,10);
        };
        class TransportItems {
            item_xx(gm_c79a1_oli,10);
            item_xx(optic_SOS,10);
            item_xx(gm_feroz24_blk,10);
        };
    };
    class AAFGM_LaunchersBox : Box_IND_WpsLaunch_F {
        author = ALiVE ORBAT CREATOR;
        displayName = "AAF(90's) Launchers Box";
        class TransportMagazines {
            mag_xx(gm_1Rnd_84x245mm_heat_t_DM22_carlgustaf,5);
            mag_xx(gm_1Rnd_44x537mm_heat_dm32_pzf44_2,5);
        };
        class TransportWeapons {
            weap_xx(gm_pzf84_oli,5);
            weap_xx(gm_pzf44_2_oli,5);
        };
        class TransportItems {
        };
    };
    class AAFGM_UniformBox : Box_AAF_Uniforms_F {
        author = ALiVE ORBAT CREATOR;
        displayName = "AAF(90's) Uniform Box";
        class TransportWeapons {
        };
        class TransportMagazines {
        };
        class TransportItems {
            item_xx(ACM_AAFGM_Clothes_AFU_Winter2,15);
            item_xx(ACM_AAFGM_Clothes_AFU_Winter,15);
            item_xx(ACM_AAFGM_Clothes_ASAS_Winter2,15);
            item_xx(ACM_AAFGM_Clothes_ASAS_Winter,15);
            item_xx(ACM_AAFGM_Clothes_Altpat_AFU,15);
            item_xx(ACM_AAFGM_Clothes_AFU_Altpat_rolled,15);
            item_xx(ACM_AAFGM_Clothes_AFU_Altpat_autumn,15);
            item_xx(ACM_AAFGM_Clothes_AAF_DressUni,15);
            item_xx(ACM_AAFGM_Clothes_AAF_Crewman,15);
            item_xx(ACM_AAFGM_Clothes_AFU_autumn,15);
            item_xx(ACM_AAFGM_Clothes_BDU_2,15);
            item_xx(ACM_AAFGM_Clothes_BDU,15);
            item_xx(ACM_AAFGM_Clothes_Heli_Rolled,15);
            item_xx(ACM_AAFGM_Clothes_Pilot,15);
            item_xx(ACM_AAFGM_Clothes_CBRN_1,15);
            item_xx(ACM_AAFGM_Clothes_CBRN_2,15);
        };
    };
    class AAFGM_SupportBox : Box_IND_Support_F {
        author = ALiVE ORBAT CREATOR;
        displayName = "AAF(90's) Support Box";
        class TransportWeapons {
        };
        class TransportMagazines {
        };
        class TransportItems {
            item_xx(ACM_AAFGM_Vest_m84_rifleman,10);
            item_xx(ACM_AAFGM_Helmet_M96_Cover,10);
            item_xx(ItemMap,10);
            item_xx(ItemCompass,10);
            item_xx(ItemWatch,10);
            item_xx(ItemRadio,10);
            item_xx(AFGM_Fieldpack_Repair,10);
            item_xx(gm_dk_army_vest_54_rifleman,10);
            item_xx(ACM_AAFGM_Headgear_Beret_Headset,10);
            item_xx(ACM_AAFGM_Vest_M84,10);
            item_xx(ACM_AAFGM_Vest_m84_MachGunner,10);
            item_xx(ACM_AAFGM_Headgear_Beret_blk,10);
            item_xx(gm_ge_army_vest_80_leader,10);
            item_xx(AAFGM_Medic_Pack,10);
            item_xx(AAFGM_AT_Pack,10);
            item_xx(AAFGM_AT_Lite_Pack,10);
            item_xx(gm_milan_launcher_weaponBag,10);
            item_xx(ACM_AAFGM_Headgear_Beret_Headset_MP,10);
            item_xx(gm_ge_army_vest_80_officer,10);
            item_xx(ACM_AAFGM_Headgear_Beret_MP,10);
            item_xx(ACM_AAFGM_Vest_Lizard_rifleman,10);
            item_xx(ACM_AAFGM_Helmet_M96_Lizard,10);
            item_xx(G_Bandanna_oli,10);
            item_xx(NVGoggles_INDEP,10);
            item_xx(ACM_AAFGM_Vest_Lizard,10);
            item_xx(G_Bandanna_aviator,10);
            item_xx(ACM_AAFGM_Headgear_Boonie_Lizard,10);
            item_xx(ACM_AAFGM_Headgear_Milcap_Lizard,10);
            item_xx(ACM_AAFGM_Vest_Lizard_MachGunner,10);
            item_xx(AFGM_Demo_Pack,10);
            item_xx(gm_ge_bgs_vest_80_rifleman,10);
            item_xx(H_PilotHelmetHeli_O,10);
            item_xx(V_TacVest_oli,10);
            item_xx(H_PilotHelmetFighter_I,10);
            item_xx(B_Parachute,10);
            item_xx(G_RegulatorMask_F,10);
            item_xx(B_SCBA_01_F,10);
        };
    };
    class AAFGM_SupplyBox : B_SupplyCrate_F {
        author = ALiVE ORBAT CREATOR;
        displayName = "AAF(90's) Supply Box";
        class TransportMagazines {
             mag_xx(gm_30Rnd_545x39mm_B_7N6_ak74_prp,50);
            mag_xx(30Rnd_556x45_Stanag,50);
            mag_xx(gm_handgrenade_frag_dm51a1,50);
            mag_xx(gm_smokeshell_wht_dm25,50);
            mag_xx(gm_explosive_petn_charge,50);
            mag_xx(gm_smokeshell_blu_gc,50);
            mag_xx(gm_smokeshell_grn_gc,50);
            mag_xx(gm_smokeshell_org_gc,50);
            mag_xx(gm_smokeshell_red_gc,50);
            mag_xx(gm_1Rnd_265mm_smoke_single_yel_gc,50);
            mag_xx(gm_1Rnd_265mm_flare_single_red_DM13,50);
            mag_xx(gm_1Rnd_265mm_flare_single_grn_DM11,50);
            mag_xx(20Rnd_762x51_Mag,50);
            mag_xx(200Rnd_556x45_Box_F,50);
            mag_xx(50Rnd_570x28_SMG_03,50);
            mag_xx(gm_1Rnd_84x245mm_heat_t_DM32_carlgustaf,50);
            mag_xx(gm_1Rnd_84x245mm_ILLUM_DM16_carlgustaf,50);
            mag_xx(gm_1Rnd_44x537mm_heat_dm32_pzf44_2,50);
            mag_xx(gm_20Rnd_762x51mm_B_T_DM21_g3_blk,50);
            mag_xx(gm_8Rnd_9x19mm_B_DM11_p1_blk,50);
            mag_xx(9Rnd_45ACP_Mag,50);
            mag_xx(gm_1Rnd_70mm_he_m585_fim43,50);
            mag_xx(gm_20Rnd_762x51mm_B_DM111_g3_blk,50);
            mag_xx(gm_120Rnd_762x51mm_B_T_DM21_mg3_grn,50);
            mag_xx(gm_mine_ap_dm31,50);
            mag_xx(ClaymoreDirectionalMine_Remote_Mag,50);
            mag_xx(APERSTripMine_Wire_Mag,50);
            mag_xx(gm_explosive_plnp_charge,50);
            mag_xx(SmokeShellOrange,50);
            mag_xx(Chemlight_green,50);
            mag_xx(SmokeShellGreen,50);
            mag_xx(HandGrenade,50);
            mag_xx(SmokeShell,50);
        };
        class TransportWeapons {
             weap_xx(gm_mpiaks74nk_brn,10);
            weap_xx(gm_m16a1_blk,10);
            weap_xx(AAFGM_c7a1_Optic,10);
            weap_xx(gm_p2a1_blk,10);
            weap_xx(AAFGM_m14_Optic,10);
            weap_xx(LMG_03_F,10);
            weap_xx(gm_m16a2_blk,10);
            weap_xx(SMG_03C_black,10);
            weap_xx(gm_g3a4_oli,10);
            weap_xx(hgun_ACPC2_F,10);
            weap_xx(gm_g3a3_oli,10);
            weap_xx(AAFGM_g3_optic,10);
            weap_xx(gm_mg3_blk,10);
            weap_xx(gm_g3a4_blk,10);
            weap_xx(gm_pzf84_oli,10);
            weap_xx(gm_pzf44_2_oli,10);
            weap_xx(gm_fim43_oli,10);
        };
        class TransportItems {
            item_xx(gm_c79a1_oli,10);
            item_xx(optic_SOS,10);
            item_xx(gm_feroz24_blk,10);
            item_xx(gm_gc_headgear_zsh3_wht,10);
            item_xx(ItemMap,10);
            item_xx(ItemCompass,10);
            item_xx(ItemWatch,10);
            item_xx(ItemRadio,10);
            item_xx(ACM_AAFGM_Vest_m84_rifleman,10);
            item_xx(ACM_AAFGM_Helmet_M96_Cover,10);
            item_xx(AFGM_Fieldpack_Repair,10);
            item_xx(gm_dk_army_vest_54_rifleman,10);
            item_xx(ACM_AAFGM_Headgear_Beret_Headset,10);
            item_xx(ACM_AAFGM_Vest_M84,10);
            item_xx(ACM_AAFGM_Vest_m84_MachGunner,10);
            item_xx(ACM_AAFGM_Headgear_Beret_blk,10);
            item_xx(gm_ge_army_vest_80_leader,10);
            item_xx(G_Aviator,10);
            item_xx(AAFGM_Medic_Pack,10);
            item_xx(AAFGM_AT_Pack,10);
            item_xx(AAFGM_AT_Lite_Pack,10);
            item_xx(gm_milan_launcher_weaponBag,10);
            item_xx(ACM_AAFGM_Headgear_Beret_Headset_MP,10);
            item_xx(gm_ge_army_vest_80_officer,10);
            item_xx(ACM_AAFGM_Headgear_Beret_MP,10);
            item_xx(gm_gc_army_facewear_dustglasses,10);
            item_xx(gm_headgear_foliage_summer_grass_03,10);
            item_xx(gm_backpack_t10_parachute,10);
            item_xx(ACM_AAFGM_Vest_Lizard_rifleman,10);
            item_xx(ACM_AAFGM_Helmet_M96_Lizard,10);
            item_xx(G_Bandanna_oli,10);
            item_xx(NVGoggles_INDEP,10);
            item_xx(ACM_AAFGM_Vest_Lizard,10);
            item_xx(G_Bandanna_aviator,10);
            item_xx(ACM_AAFGM_Headgear_Boonie_Lizard,10);
            item_xx(ACM_AAFGM_Headgear_Milcap_Lizard,10);
            item_xx(ACM_AAFGM_Vest_Lizard_MachGunner,10);
            item_xx(AFGM_Demo_Pack,10);
            item_xx(gm_ge_bgs_vest_80_rifleman,10);
            item_xx(gm_ge_headgear_sph4_oli,10);
            item_xx(V_TacVest_oli,10);
            item_xx(H_PilotHelmetFighter_I,10);
            item_xx(B_Parachute,10);
            item_xx(G_RegulatorMask_F,10);
            item_xx(B_SCBA_01_F,10);
            item_xx(ACM_AAFGM_Clothes_Altpat_AFU,10);
            item_xx(ACM_AAFGM_Clothes_AFU_Altpat_rolled,10);
            item_xx(ACM_AAFGM_Clothes_AFU_Altpat_autumn,10);
            item_xx(ACM_AAFGM_Clothes_AAF_DressUni,10);
            item_xx(ACM_AAFGM_Clothes_AAF_Crewman,10);
            item_xx(ACM_AAFGM_Clothes_AFU_autumn,10);
            item_xx(ACM_AAFGM_Clothes_BDU_2,10);
            item_xx(ACM_AAFGM_Clothes_BDU,10);
            item_xx(ACM_AAFGM_Clothes_Heli_Rolled,10);
            item_xx(ACM_AAFGM_Clothes_Pilot,10);
            item_xx(ACM_AAFGM_Clothes_CBRN_1,10);
            item_xx(ACM_AAFGM_Clothes_CBRN_2,10);
            item_xx(ACM_AAFGM_Clothes_AFU_Winter2,15);
            item_xx(ACM_AAFGM_Clothes_AFU_Winter,15);
            item_xx(ACM_AAFGM_Clothes_ASAS_Winter2,15);
            item_xx(ACM_AAFGM_Clothes_ASAS_Winter,15);
        };
    };


	//APLIF

	class Box_Syndicate_Ammo_F;
	class ACM_APLIF_AmmoBox : Box_Syndicate_Ammo_F {
        author = ALiVE ORBAT CREATOR;
        displayName = APLIF Ammo Box;
        class TransportMagazines {
            mag_xx(gm_30Rnd_762x39mm_B_57N231_ak47_blk,50);
            mag_xx(gm_handgrenade_frag_dm51a1,50);
            mag_xx(gm_smokeshell_wht_dm25,50);
            mag_xx(gm_1Rnd_40mm_heat_pg7v_rpg7,50);
            mag_xx(gm_1Rnd_44x537mm_heat_dm32_pzf44_2,50);
            mag_xx(gm_30Rnd_556x45mm_B_M855_stanag_gry,50);
            mag_xx(gm_10Rnd_762x54mmR_AP_7N1_svd_blk,50);
            mag_xx(gm_75Rnd_762x39mm_B_M43_ak47_blk,50);
            mag_xx(gm_100Rnd_762x54mmR_B_T_7t2_pk_grn,50);
            mag_xx(gm_30Rnd_545x39mm_B_7N6_ak74_prp,50);
            mag_xx(gm_15Rnd_9x18mm_B_pst_pm63_blk,50);
            mag_xx(ATMine_Range_Mag,50);
            mag_xx(APERSTripMine_Wire_Mag,50);
            mag_xx(gm_explosive_plnp_charge,50);
            mag_xx(gm_75Rnd_762x39mm_B_T_M43_ak47_blk,50);
            mag_xx(gm_handgrenade_frag_rgd5,50);
        };
        class TransportWeapons {
        };
        class TransportItems {
        };
    };
	class gm_AmmoBox_wood_03_empty;
    class ACM_APLIF_WeaponsBox : gm_AmmoBox_wood_03_empty {
        author = ALiVE ORBAT CREATOR;
        displayName = APLIF Weapons Box;
        class TransportMagazines {
            mag_xx(gm_30Rnd_762x39mm_B_57N231_ak47_blk,50);
            mag_xx(gm_30Rnd_556x45mm_B_M855_stanag_gry,50);
            mag_xx(gm_10Rnd_762x54mmR_AP_7N1_svd_blk,50);
            mag_xx(gm_75Rnd_762x39mm_B_M43_ak47_blk,50);
            mag_xx(gm_100Rnd_762x54mmR_B_T_7t2_pk_grn,50);
            mag_xx(gm_30Rnd_545x39mm_B_7N6_ak74_prp,50);
            mag_xx(gm_15Rnd_9x18mm_B_pst_pm63_blk,50);
            mag_xx(gm_75Rnd_762x39mm_B_T_M43_ak47_blk,50);
        };
        class TransportWeapons {
            weap_xx(gm_akmn_wud,10);
            weap_xx(gm_mpikms72_brn,10);
            weap_xx(APLIF_AK_Bayo,10);
            weap_xx(AAFGM_c7a1_Optic,10);
            weap_xx(APLIF_Sniper,10);
            weap_xx(gm_rpk_wud,10);
            weap_xx(gm_hmgpkm_prp,10);
            weap_xx(gm_mpiaks74n_brn,10);
            weap_xx(gm_mpikm72_brn,10);
            weap_xx(APLIF_SMG_pm63,10);
            weap_xx(gm_lmgrpk_brn_zfk4x25,10);
            weap_xx(gm_mpiaks74nk_brn,10);
        };
        class TransportItems {
            item_xx(gm_bayonet_6x3_wud,10);
            item_xx(gm_c79a1_oli,10);
            item_xx(gm_pso1_gry,10);
            item_xx(gm_suppressor_safloryt_blk,10);
            item_xx(gm_zfk4x25_blk,10);
        };
    };

	class Box_Syndicate_WpsLaunch_F;
    class ACM_APLIF_LaunchersBox : Box_Syndicate_WpsLaunch_F {
        author = ALiVE ORBAT CREATOR;
        displayName = APLIF Launchers Box;
        class TransportMagazines {
            mag_xx(gm_1Rnd_40mm_heat_pg7v_rpg7,5);
            mag_xx(gm_1Rnd_44x537mm_heat_dm32_pzf44_2,5);
            mag_xx(gm_1Rnd_72mm_he_9m32m,5);
        };
        class TransportWeapons {
            weap_xx(gm_rpg7_wud,5);
            weap_xx(gm_pzf44_2_oli,5);
            weap_xx(gm_9k32m_oli,5);
        };
        class TransportItems {
        };
    };
    class ACM_APLIF_UniformBox : gm_AmmoBox_wood_03_empty {
        author = ALiVE ORBAT CREATOR;
        displayName = APLIF Uniform Box;
        class TransportWeapons {
        };
        class TransportMagazines {
        };
        class TransportItems {
            item_xx(ACM_APLIF_Clothes_StaUni,15);
            item_xx(U_I_C_Soldier_Para_3_F,15);
            item_xx(U_I_C_Soldier_Para_2_F,15);
            item_xx(ACM_APLIF_Clothes_StaUni_Gloves,15);
            item_xx(U_OG_Guerilla3_1,15);
            item_xx(U_I_C_Soldier_Para_4_F,15);
            item_xx(gm_gc_army_uniform_soldier_80_blk,15);
            item_xx(ACM_APLIF_Clothes_VSR_Rolled,15);
            item_xx(gm_gc_army_uniform_soldier_gloves_80_str,15);
            item_xx(ACM_AAFGM_Clothes_parka_mlmk,15);
            item_xx(ACM_APLIF_Clothes_TTSKO_Rolled,15);
            item_xx(gm_gc_airforce_uniform_pilot_80_blu,15);
        };
    };

	class gm_AmmoBox_wood_04_empty;
    class ACM_APLIF_SupportBox : gm_AmmoBox_wood_04_empty {
        author = ALiVE ORBAT CREATOR;
        displayName = APLIF Support Box;
        class TransportWeapons {
        };
        class TransportMagazines {
        };
       class TransportItems {
            item_xx(gm_pl_army_vest_80_rifleman_gry,10);
            item_xx(gm_gc_army_headgear_m56,10);
            item_xx(ItemMap,10);
            item_xx(ItemCompass,10);
            item_xx(ItemWatch,10);
            item_xx(ItemRadio,10);
            item_xx(gm_ge_headgear_hat_80_m62_oli,10);
            item_xx(V_TacChestrig_grn_F,10);
            item_xx(gm_gc_army_headgear_m56_net,10);
            item_xx(gm_ge_army_vest_80_leader,10);
            item_xx(H_Booniehat_khk,10);
            item_xx(ACM_APLIF_Helmet_Cover,10);
            item_xx(APLIF_AT_Pack,10);
            item_xx(gm_pl_army_vest_80_at_gry,10);
            item_xx(H_Bandanna_khk,10);
            item_xx(AAFGM_AT_Lite_Pack,10);
            item_xx(gm_pl_army_vest_80_leader_gry,10);
            item_xx(gm_ge_headgear_hat_80_gry,10);
            item_xx(V_BandollierB_khk,10);
            item_xx(gm_ge_headgear_hat_80_oli,10);
            item_xx(gm_pl_army_vest_80_mg_gry,10);
            item_xx(gm_pl_army_vest_80_rig_gry,10);
            item_xx(gm_ge_headgear_crewhat_80_blk,10);
            item_xx(AAFGM_Medic_Pack,10);
            item_xx(gm_gc_army_facewear_schm41m,10);
            item_xx(gm_ge_headgear_hat_beanie_blk,10);
            item_xx(gm_gc_army_vest_80_rifleman_str,10);
            item_xx(APLIF_EXPL_Pack,10);
            item_xx(gm_gc_vest_combatvest3_str,10);
            item_xx(gm_ge_headgear_hat_boonie_oli,10);
            item_xx(gm_pl_headgear_beret_bdx,10);
            item_xx(gm_gc_army_backpack_80_lmg_str,10);
            item_xx(gm_gc_headgear_zsh3_wht,10);
        };
    };
    class ACM_APLIF_SupplyBox : Box_IND_Support_F {
        author = ALiVE ORBAT CREATOR;
        displayName = APLIF Supply Box;
        class TransportMagazines {
            mag_xx(gm_30Rnd_762x39mm_B_57N231_ak47_blk,50);
            mag_xx(gm_handgrenade_frag_dm51a1,50);
            mag_xx(gm_smokeshell_wht_dm25,50);
            mag_xx(gm_1Rnd_40mm_heat_pg7v_rpg7,50);
            mag_xx(gm_1Rnd_44x537mm_heat_dm32_pzf44_2,50);
            mag_xx(gm_30Rnd_556x45mm_B_M855_stanag_gry,50);
            mag_xx(gm_10Rnd_762x54mmR_AP_7N1_svd_blk,50);
            mag_xx(gm_75Rnd_762x39mm_B_M43_ak47_blk,50);
            mag_xx(gm_100Rnd_762x54mmR_B_T_7t2_pk_grn,50);
            mag_xx(gm_30Rnd_545x39mm_B_7N6_ak74_prp,50);
            mag_xx(gm_15Rnd_9x18mm_B_pst_pm63_blk,50);
            mag_xx(ATMine_Range_Mag,50);
            mag_xx(APERSTripMine_Wire_Mag,50);
            mag_xx(gm_explosive_plnp_charge,50);
            mag_xx(gm_75Rnd_762x39mm_B_T_M43_ak47_blk,50);
            mag_xx(gm_handgrenade_frag_rgd5,50);
        };
        class TransportWeapons {
            weap_xx(gm_akmn_wud,10);
            weap_xx(gm_mpikms72_brn,10);
            weap_xx(APLIF_AK_Bayo,10);
            weap_xx(AAFGM_c7a1_Optic,10);
            weap_xx(APLIF_Sniper,10);
            weap_xx(gm_rpk_wud,10);
            weap_xx(gm_hmgpkm_prp,10);
            weap_xx(gm_mpiaks74n_brn,10);
            weap_xx(gm_mpikm72_brn,10);
            weap_xx(APLIF_SMG_pm63,10);
            weap_xx(gm_lmgrpk_brn_zfk4x25,10);
            weap_xx(gm_mpiaks74nk_brn,10);
            weap_xx(gm_rpg7_wud,10);
            weap_xx(gm_pzf44_2_oli,10);
            weap_xx(gm_9k32m_oli,10);
        };
        class TransportItems {
            item_xx(gm_bayonet_6x3_wud,10);
            item_xx(gm_c79a1_oli,10);
            item_xx(gm_pso1_gry,10);
            item_xx(gm_suppressor_safloryt_blk,10);
            item_xx(gm_zfk4x25_blk,10);
            item_xx(gm_pl_army_vest_80_rifleman_gry,10);
            item_xx(gm_gc_army_headgear_m56,10);
            item_xx(ItemMap,10);
            item_xx(ItemCompass,10);
            item_xx(ItemWatch,10);
            item_xx(ItemRadio,10);
            item_xx(gm_ge_headgear_hat_80_m62_oli,10);
            item_xx(V_TacChestrig_grn_F,10);
            item_xx(gm_gc_army_headgear_m56_net,10);
            item_xx(gm_ge_army_vest_80_leader,10);
            item_xx(H_Booniehat_khk,10);
            item_xx(ACM_APLIF_Helmet_Cover,10);
            item_xx(APLIF_AT_Pack,10);
            item_xx(gm_pl_army_vest_80_at_gry,10);
            item_xx(H_Bandanna_khk,10);
            item_xx(AAFGM_AT_Lite_Pack,10);
            item_xx(gm_pl_army_vest_80_leader_gry,10);
            item_xx(gm_ge_headgear_hat_80_gry,10);
            item_xx(V_BandollierB_khk,10);
            item_xx(gm_ge_headgear_hat_80_oli,10);
            item_xx(gm_pl_army_vest_80_mg_gry,10);
            item_xx(gm_pl_army_vest_80_rig_gry,10);
            item_xx(gm_ge_headgear_crewhat_80_blk,10);
            item_xx(AAFGM_Medic_Pack,10);
            item_xx(gm_gc_army_facewear_schm41m,10);
            item_xx(gm_ge_headgear_hat_beanie_blk,10);
            item_xx(gm_gc_army_vest_80_rifleman_str,10);
            item_xx(APLIF_EXPL_Pack,10);
            item_xx(gm_gc_vest_combatvest3_str,10);
            item_xx(gm_ge_headgear_hat_boonie_oli,10);
            item_xx(gm_pl_headgear_beret_bdx,10);
            item_xx(gm_gc_army_backpack_80_lmg_str,10);
            item_xx(gm_gc_headgear_zsh3_wht,10);
            item_xx(ACM_APLIF_Clothes_StaUni,10);
            item_xx(U_I_C_Soldier_Para_3_F,10);
            item_xx(U_I_C_Soldier_Para_2_F,10);
            item_xx(ACM_APLIF_Clothes_StaUni_Gloves,10);
            item_xx(U_OG_Guerilla3_1,10);
            item_xx(U_I_C_Soldier_Para_4_F,10);
            item_xx(gm_gc_army_uniform_soldier_80_blk,10);
            item_xx(ACM_APLIF_Clothes_VSR_Rolled,10);
            item_xx(gm_gc_army_uniform_soldier_gloves_80_str,10);
            item_xx(ACM_AAFGM_Clothes_parka_mlmk,10);
            item_xx(ACM_APLIF_Clothes_TTSKO_Rolled,10);
            item_xx(gm_gc_airforce_uniform_pilot_80_blu,10);
        };
    };


	//Xiphos
	class XIPHOS_AmmoBox : Box_NATO_Ammo_F {
        author = ALiVE ORBAT CREATOR;
        displayName = Xiphos Ammo Box;
        class TransportMagazines {
            mag_xx(30Rnd_556x45_Stanag,50);
            mag_xx(gm_handgrenade_frag_dm51a1,50);
            mag_xx(gm_smokeshell_wht_dm25,50);
            mag_xx(50Rnd_570x28_SMG_03,50);
            mag_xx(20Rnd_762x51_Mag,50);
            mag_xx(150Rnd_762x54_Box,50);
            mag_xx(gm_1Rnd_84x245mm_heat_t_DM32_carlgustaf,50);
            mag_xx(gm_1Rnd_84x245mm_ILLUM_DM16_carlgustaf,50);
        };
        class TransportWeapons {
        };
        class TransportItems {
        };
    };
    class XIPHOS_WeaponsBox : Box_NATO_Wps_F {
        author = ALiVE ORBAT CREATOR;
        displayName = Xiphos Weapons Box;
        class TransportMagazines {
            mag_xx(30Rnd_556x45_Stanag,50);
            mag_xx(50Rnd_570x28_SMG_03,50);
            mag_xx(20Rnd_762x51_Mag,50);
            mag_xx(150Rnd_762x54_Box,50);
        };
        class TransportWeapons {
            weap_xx(Xiph_c7a1_Holo,10);
            weap_xx(SMG_03C_black,10);
            weap_xx(Xiph_c7a1_nv,10);
            weap_xx(AAFGM_c7a1_Optic_blk,10);
            weap_xx(Xiph_dmr_optic,10);
            weap_xx(LMG_Zafir_F,10);
        };
        class TransportItems {
            item_xx(optic_Holosight_blk_F,10);
            item_xx(muzzle_snds_M,10);
            item_xx(optic_NVS,10);
            item_xx(gm_c79a1_blk,10);
            item_xx(optic_DMS_weathered_F,10);
        };
    };
    class XIPHOS_LaunchersBox : Box_NATO_WpsLaunch_F {
        author = ALiVE ORBAT CREATOR;
        displayName = Xiphos Launchers Box;
        class TransportMagazines {
            mag_xx(gm_1Rnd_84x245mm_heat_t_DM22_carlgustaf,5);
        };
        class TransportWeapons {
            weap_xx(gm_pzf84_oli,5);
        };
        class TransportItems {
        };
    };
    class XIPHOS_UniformBox : Box_NATO_Uniforms_F {
        author = ALiVE ORBAT CREATOR;
        displayName = Xiphos Uniform Box;
        class TransportWeapons {
        };
        class TransportMagazines {
        };
        class TransportItems {
            item_xx(ACM_Xiph_Clothes_Guerr5,15);
            item_xx(ACM_Xiph_Clothes_Guerr4,15);
            item_xx(ACM_Xiph_Clothes_Guerr2,15);
            item_xx(ACM_Xiph_Clothes_Guerr3,15);
            item_xx(ACM_Xiph_Clothes_Guerr1,15);
            item_xx(ACM_Xiph_Clothes_Guerr6,15);
            item_xx(ACM_Xiph_Clothes_Guerr8,15);
            item_xx(ACM_Xiph_Clothes_Guerr7,15);
            item_xx(ACM_Xiph_Clothes_Guerr9,15);
        };
    };
    class XIPHOS_SupportBox : Box_NATO_Support_F {
        author = ALiVE ORBAT CREATOR;
        displayName = Xiphos Support Box;
        class TransportWeapons {
        };
        class TransportMagazines {
        };
        class TransportItems {
            item_xx(V_Chestrig_khk,10);
            item_xx(ACM_Xiph_Helmet2,10);
            item_xx(G_Bandanna_oli,10);
            item_xx(ItemMap,10);
            item_xx(ItemCompass,10);
            item_xx(ItemWatch,10);
            item_xx(ItemRadio,10);
            item_xx(ACM_AAFGM_Headgear_Boonie,10);
            item_xx(G_Balaclava_blk,10);
            item_xx(gm_dk_army_vest_54_rifleman,10);
            item_xx(gm_ge_army_vest_80_leader,10);
            item_xx(G_Bandanna_aviator,10);
            item_xx(V_BandollierB_rgr,10);
            item_xx(H_MilCap_grn,10);
            item_xx(G_Bandanna_blk,10);
            item_xx(gm_ge_army_vest_80_machinegunner,10);
            item_xx(Xiph_auto_pack,10);
            item_xx(H_ShemagOpen_khk,10);
            item_xx(AAFGM_AT_Pack,10);
            item_xx(gm_ge_army_vest_80_medic,10);
            item_xx(gm_ge_headgear_hat_80_oli,10);
            item_xx(AAFGM_Medic_Pack,10);
            item_xx(ACM_Xiph_Helmet,10);
            item_xx(gm_milan_launcher_weaponBag,10);
            item_xx(H_Beret_blk,10);
            item_xx(gm_ge_facewear_m65,10);
        };
    };
    class XIPHOS_SupplyBox : B_SupplyCrate_F {
        author = ALiVE ORBAT CREATOR;
        displayName = Xiphos Supply Box;
        class TransportMagazines {
            mag_xx(30Rnd_556x45_Stanag,50);
            mag_xx(gm_handgrenade_frag_dm51a1,50);
            mag_xx(gm_smokeshell_wht_dm25,50);
            mag_xx(50Rnd_570x28_SMG_03,50);
            mag_xx(20Rnd_762x51_Mag,50);
            mag_xx(150Rnd_762x54_Box,50);
            mag_xx(gm_1Rnd_84x245mm_heat_t_DM32_carlgustaf,50);
            mag_xx(gm_1Rnd_84x245mm_ILLUM_DM16_carlgustaf,50);
        };
        class TransportWeapons {
            weap_xx(Xiph_c7a1_Holo,10);
            weap_xx(SMG_03C_black,10);
            weap_xx(Xiph_c7a1_nv,10);
            weap_xx(AAFGM_c7a1_Optic_blk,10);
            weap_xx(Xiph_dmr_optic,10);
            weap_xx(LMG_Zafir_F,10);
            weap_xx(gm_pzf84_oli,10);
        };
        class TransportItems {
            item_xx(optic_Holosight_blk_F,10);
            item_xx(muzzle_snds_M,10);
            item_xx(optic_NVS,10);
            item_xx(gm_c79a1_blk,10);
            item_xx(optic_DMS_weathered_F,10);
            item_xx(V_Chestrig_khk,10);
            item_xx(ACM_Xiph_Helmet2,10);
            item_xx(G_Bandanna_oli,10);
            item_xx(ItemMap,10);
            item_xx(ItemCompass,10);
            item_xx(ItemWatch,10);
            item_xx(ItemRadio,10);
            item_xx(ACM_AAFGM_Headgear_Boonie,10);
            item_xx(G_Balaclava_blk,10);
            item_xx(gm_dk_army_vest_54_rifleman,10);
            item_xx(gm_ge_army_vest_80_leader,10);
            item_xx(G_Bandanna_aviator,10);
            item_xx(V_BandollierB_rgr,10);
            item_xx(H_MilCap_grn,10);
            item_xx(G_Bandanna_blk,10);
            item_xx(gm_ge_army_vest_80_machinegunner,10);
            item_xx(Xiph_auto_pack,10);
            item_xx(H_ShemagOpen_khk,10);
            item_xx(AAFGM_AT_Pack,10);
            item_xx(gm_ge_army_vest_80_medic,10);
            item_xx(gm_ge_headgear_hat_80_oli,10);
            item_xx(AAFGM_Medic_Pack,10);
            item_xx(ACM_Xiph_Helmet,10);
            item_xx(gm_milan_launcher_weaponBag,10);
            item_xx(H_Beret_blk,10);
            item_xx(gm_ge_facewear_m65,10);
            item_xx(ACM_Xiph_Clothes_Guerr5,10);
            item_xx(ACM_Xiph_Clothes_Guerr4,10);
            item_xx(ACM_Xiph_Clothes_Guerr2,10);
            item_xx(ACM_Xiph_Clothes_Guerr3,10);
            item_xx(ACM_Xiph_Clothes_Guerr1,10);
            item_xx(ACM_Xiph_Clothes_Guerr6,10);
            item_xx(ACM_Xiph_Clothes_Guerr8,10);
            item_xx(ACM_Xiph_Clothes_Guerr7,10);
            item_xx(ACM_Xiph_Clothes_Guerr9,10);
        };
    };




    ///APD

    class ACM_APD_AmmoBox : Box_IND_Ammo_F {
    	author = ALiVE ORBAT CREATOR;
    	displayName = APD Ammo Box;
        class TransportMagazines {
            mag_xx(9Rnd_45ACP_Mag,50);
            mag_xx(gm_20Rnd_762x51mm_B_T_DM21_g3_blk,50);
            mag_xx(gm_32Rnd_9x19mm_B_DM51_mp2_blk,50);
            mag_xx(gm_30Rnd_9x19mm_B_DM51_mp5a3_blk,50);
            mag_xx(gm_20Rnd_556x45mm_B_M855_stanag_gry,50);
            mag_xx(gm_handgrenade_conc_dm51,50);
            mag_xx(ClaymoreDirectionalMine_Remote_Mag,50);
        };
        class TransportWeapons {
        };
        class TransportItems {
        };
    };
    class ACM_APD_WeaponsBox : Box_IND_Wps_F {
        author = ALiVE ORBAT CREATOR;
        displayName = APD Weapons Box;
        class TransportMagazines {
            mag_xx(9Rnd_45ACP_Mag,50);
            mag_xx(gm_20Rnd_762x51mm_B_T_DM21_g3_blk,50);
            mag_xx(gm_32Rnd_9x19mm_B_DM51_mp2_blk,50);
            mag_xx(gm_30Rnd_9x19mm_B_DM51_mp5a3_blk,50);
            mag_xx(gm_20Rnd_556x45mm_B_M855_stanag_gry,50);
        };
        class TransportWeapons {
            weap_xx(hgun_ACPC2_F,10);
            weap_xx(APD_G3_Marksmen,10);
            weap_xx(gm_mp2a1_blk,10);
            weap_xx(gm_mp5sd2_blk,10);
            weap_xx(gm_m16a2_blk,10);
        };
        class TransportItems {
            item_xx(gm_feroz24_blk,10);
        };
    };
    class ACM_APD_UniformBox : Box_AAF_Uniforms_F {
        author = ALiVE ORBAT CREATOR;
        displayName = APD Uniform Box;
        class TransportWeapons {
        };
        class TransportMagazines {
        };
        class TransportItems {
            item_xx(ACM_APD_2_Clothes,15);
            item_xx(ACM_APD_Clothes_Blouse,15);
            item_xx(ACM_APD_Clothes,15);
            item_xx(ACM_APD_Clothes_3,15);
        };
    };
    class ACM_APD_SupportBox : Box_IND_Support_F {
        author = ALiVE ORBAT CREATOR;
        displayName = APD Support Box;
        class TransportWeapons {
        };
        class TransportMagazines {
        };
        class TransportItems {
            item_xx(gm_ge_army_vest_80_officer,10);
            item_xx(ACM_APD_Cap,10);
            item_xx(G_Aviator,10);
            item_xx(ItemMap,10);
            item_xx(ItemCompass,10);
            item_xx(ItemWatch,10);
            item_xx(ItemRadio,10);
            item_xx(V_Safety_yellow_F,10);
            item_xx(H_RacingHelmet_1_white_F,10);
            item_xx(ACM_APD_Vest,10);
            item_xx(gm_ge_pol_vest_80_wht,10);
            item_xx(gm_ge_headgear_headset_crew_oli,10);
            item_xx(G_Balaclava_blk,10);
            item_xx(ACM_AAFGM_Headgear_Beret_blk,10);
            item_xx(B_Messenger_Black_F,10);
            item_xx(V_TacVest_blk_POLICE,10);
            item_xx(H_HeadSet_black_F,10);
            item_xx(V_EOD_blue_F,10);
            item_xx(H_PASGT_basic_blue_F,10);
            item_xx(G_EyeProtectors_F,10);
            item_xx(APD_EOD_Pack,10);
            item_xx(gm_ge_army_vest_80_medic,10);
            item_xx(H_PASGT_basic_white_F,10);
            item_xx(AAFGM_Medic_Pack,10);
        };
    };
    class ACM_APD_SupplyBox : B_SupplyCrate_F {
        author = ALiVE ORBAT CREATOR;
        displayName = APD Supply Box;
        class TransportMagazines {
            mag_xx(9Rnd_45ACP_Mag,50);
            mag_xx(gm_20Rnd_762x51mm_B_T_DM21_g3_blk,50);
            mag_xx(gm_32Rnd_9x19mm_B_DM51_mp2_blk,50);
            mag_xx(gm_30Rnd_9x19mm_B_DM51_mp5a3_blk,50);
            mag_xx(gm_20Rnd_556x45mm_B_M855_stanag_gry,50);
            mag_xx(gm_handgrenade_conc_dm51,50);
            mag_xx(ClaymoreDirectionalMine_Remote_Mag,50);
        };
        class TransportWeapons {
            weap_xx(hgun_ACPC2_F,10);
            weap_xx(APD_G3_Marksmen,10);
            weap_xx(gm_mp2a1_blk,10);
            weap_xx(gm_mp5sd2_blk,10);
            weap_xx(gm_m16a2_blk,10);
        };
        class TransportItems {
            item_xx(gm_feroz24_blk,10);
            item_xx(gm_ge_army_vest_80_officer,10);
            item_xx(ACM_APD_Cap,10);
            item_xx(G_Aviator,10);
            item_xx(ItemMap,10);
            item_xx(ItemCompass,10);
            item_xx(ItemWatch,10);
            item_xx(ItemRadio,10);
            item_xx(V_Safety_yellow_F,10);
            item_xx(H_RacingHelmet_1_white_F,10);
            item_xx(ACM_APD_Vest,10);
            item_xx(gm_ge_pol_vest_80_wht,10);
            item_xx(gm_ge_headgear_headset_crew_oli,10);
            item_xx(G_Balaclava_blk,10);
            item_xx(ACM_AAFGM_Headgear_Beret_blk,10);
            item_xx(B_Messenger_Black_F,10);
            item_xx(V_TacVest_blk_POLICE,10);
            item_xx(H_HeadSet_black_F,10);
            item_xx(V_EOD_blue_F,10);
            item_xx(H_PASGT_basic_blue_F,10);
            item_xx(G_EyeProtectors_F,10);
            item_xx(APD_EOD_Pack,10);
            item_xx(gm_ge_army_vest_80_medic,10);
            item_xx(H_PASGT_basic_white_F,10);
            item_xx(AAFGM_Medic_Pack,10);
            item_xx(ACM_APD_2_Clothes,10);
            item_xx(ACM_APD_Clothes_Blouse,10);
            item_xx(ACM_APD_Clothes,10);
            item_xx(ACM_APD_Clothes_3,10);
        };
    };

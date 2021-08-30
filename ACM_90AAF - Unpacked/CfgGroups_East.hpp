class East
	{
		class ACM_APLIF
		{
			name = "APLIF";
			class Infantry
			{
				name = "Infantry";
				class Aplif_InfSquad_Assault
				{
					name = "Assault Squad";
					side = 0;
					faction = "ACM_APLIF";
					icon = "\A3\ui_f\data\map\markers\nato\o_inf.paa";
					class Unit0
					{
						side = 0;
						vehicle = "APLIF_Soldier_SL";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 0;
						vehicle = "APLIF_Soldier";
						rank = "PRIVATE";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 0;
						vehicle = "APLIF_Soldier";
						rank = "CORPORAL";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 0;
						vehicle = "APLIF_soldier_AT";
						rank = "PRIVATE";
						position[] = {10,-10,0};
					};
					class Unit4
					{
						side = 0;
						vehicle = "APLIF_Soldier_AR";
						rank = "PRIVATE";
						position[] = {-10,-10,0};
					};
					class Unit5
					{
						side = 0;
						vehicle = "APLIF_Soldier_AR_Heavy";
						rank = "CORPORAL";
						position[] = {15,-15,0};
					};
					class Unit6
					{
						side = 0;
						vehicle = "APLIF_Soldier";
						rank = "PRIVATE";
						position[] = {-15,-15,0};
					};
					//Reminder: Make medic class
					class Unit7
					{
						side = 0;
						vehicle = "APLIF_Soldier_M";
						rank = "PRIVATE";
						position[] = {20,-20,0};
					};
				};
				class Aplif_InfTeam_Light
				{
					name = "Patrol Team";
					side = 0;
					faction = "ACM_APLIF";
					icon = "\A3\ui_f\data\map\markers\nato\o_inf.paa";
					class Unit0
					{
						side = 0;
						vehicle = "APLIF_soldier_TL";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 0;
						vehicle = "APLIF_Soldier_AR";
						rank = "CORPORAL";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 0;
						vehicle = "APLIF_Soldier";
						rank = "PRIVATE";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 0;
						vehicle = "APLIF_soldier_AT";
						rank = "PRIVATE";
						position[] = {10,-10,0};
					};
				};
				class APLIF_InfSentry
				{
					name = "Sentry";
					side = 0;
					faction = "ACM_APLIF";
					icon = "\A3\ui_f\data\map\markers\nato\o_inf.paa";
					class Unit0
					{
						side = 0;
						vehicle = "APLIF_soldier_lite";
						rank = "CORPORAL";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 0;
						vehicle = "APLIF_Soldier";
						rank = "PRIVATE";
						position[] = {5,-5,0};
					};
				};//APLIF_InfSentry
				class Aplif_InfTeam_AT
				{
					name = "Anti-Armour team";
					side = 0;
					faction = "ACM_APLIF";
					icon = "\A3\ui_f\data\map\markers\nato\o_inf.paa";
					class Unit0
					{
						side = 0;
						vehicle = "APLIF_Soldier_SL";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 0;
						vehicle = "APLIF_soldier_AT";
						rank = "CORPORAL";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 0;
						vehicle = "APLIF_Soldier_AT_Lite";
						rank = "PRIVATE";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 0;
						vehicle = "APLIF_soldier_AT";
						rank = "PRIVATE";
						position[] = {10,-10,0};
					};
				};
				class Aplif_InfTeam_MG
				{
					name = "MG-Group";
					side = 0;
					faction = "ACM_APLIF";
					icon = "\A3\ui_f\data\map\markers\nato\o_inf.paa";
					class Unit0
					{
						side = 0;
						vehicle = "APLIF_Soldier_SL";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 0;
						vehicle = "APLIF_soldier_AR";
						rank = "CORPORAL";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 0;
						vehicle = "APLIF_Soldier_AR_Heavy";
						rank = "PRIVATE";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 0;
						vehicle = "APLIF_soldier";
						rank = "PRIVATE";
						position[] = {10,-10,0};
					};
				};
			};//infantry

			class SpecOps
			{
				name="Special Forces";
				class Aplif_SpecOps_Group
				{
					name = "Sabotage Group";
					side = 0;
					faction = "ACM_APLIF";
					icon = "\A3\ui_f\data\map\markers\nato\o_inf.paa";
					class Unit0
					{
						side = 0;
						vehicle = "APLIF_Spec_TL";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 0;
						vehicle = "APLIF_Spec_Sniper";
						rank = "PRIVATE";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 0;
						vehicle = "APLIF_Spec_Explo";
						rank = "CORPORAL";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 0;
						vehicle = "APLIF_Spec_Explo";
						rank = "PRIVATE";
						position[] = {10,-10,0};
					};
				};//SpecOpsGroup

				class Aplif_SpecOps_Assault
				{
					name = "Ambush Group";
					side = 0;
					faction = "ACM_APLIF";
					icon = "\A3\ui_f\data\map\markers\nato\o_inf.paa";
					class Unit0
					{
						side = 0;
						vehicle = "APLIF_Spec_TL";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 0;
						vehicle = "APLIF_Spec_MG";
						rank = "PRIVATE";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 0;
						vehicle = "APLIF_Spec_MG";
						rank = "CORPORAL";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 0;
						vehicle = "APLIF_Spec_AT";
						rank = "PRIVATE";
						position[] = {10,-10,0};
					};
					class Unit4
					{
						side = 0;
						vehicle = "APLIF_Spec_AT";
						rank = "PRIVATE";
						position[] = {-10,-10,0};
					};
					class Unit5
					{
						side = 0;
						vehicle = "APLIF_Spec_Sniper";
						rank = "CORPORAL";
						position[] = {15,-15,0};
					};
				};

			};////SpecialForces

			class Armored
			{
				name = "Armor";
				class APLIF_Tank_Section
				{
					name = "Tank Section (T-55)";
					side = 0;
					faction = "ACM_APLIF";
					icon = "\A3\ui_f\data\map\markers\nato\o_armor.paa";
					class Unit0
					{
						side = 0;
						vehicle = "ACM_APLIF_T55";
						rank = "LIEUTENANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 0;
						vehicle = "ACM_APLIF_T55";
						rank = "SERGEANT";
						position[] = {10,-10,0};
					};
				};//APLIF_Tank_Section

				class APLIF_TankPlatoon
				{
					name = "Tank Platoon (T-55)";
					side = 0;
					faction = "ACM_APLIF";
					icon = "\A3\ui_f\data\map\markers\nato\o_armor.paa";
					class Unit0
					{
						side = 0;
						vehicle = "ACM_APLIF_T55";
						rank = "LIEUTENANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 0;
						vehicle = "ACM_APLIF_T55";
						rank = "SERGEANT";
						position[] = {10,-10,0};
					};
					class Unit2
					{
						side = 0;
						vehicle = "ACM_APLIF_T55";
						rank = "SERGEANT";
						position[] = {-10,-10,0};
					};
					class Unit3
					{
						side = 0;
						vehicle = "ACM_APLIF_T55";
						rank = "CORPORAL";
						position[] = {20,-20,0};
					};
				};//APLIF_TankPlatoon

				class APLIF_Tank_Section2
				{
					name = "Tank Section (T-55A)";
					side = 0;
					faction = "ACM_APLIF";
					icon = "\A3\ui_f\data\map\markers\nato\o_armor.paa";
					class Unit0
					{
						side = 0;
						vehicle = "ACM_APLIF_T55A";
						rank = "LIEUTENANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 0;
						vehicle = "ACM_APLIF_T55A";
						rank = "SERGEANT";
						position[] = {10,-10,0};
					};
				};//APLIF_Tank_Section2

				class APLIF_TankPlatoon2
				{
					name = "Tank Platoon (T-55A)";
					side = 0;
					faction = "ACM_APLIF";
					icon = "\A3\ui_f\data\map\markers\nato\o_armor.paa";
					class Unit0
					{
						side = 0;
						vehicle = "ACM_APLIF_T55A";
						rank = "LIEUTENANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 0;
						vehicle = "ACM_APLIF_T55A";
						rank = "SERGEANT";
						position[] = {10,-10,0};
					};
					class Unit2
					{
						side = 0;
						vehicle = "ACM_APLIF_T55A";
						rank = "SERGEANT";
						position[] = {-10,-10,0};
					};
					class Unit3
					{
						side = 0;
						vehicle = "ACM_APLIF_T55A";
						rank = "CORPORAL";
						position[] = {20,-20,0};
					};
				};//APLIF_TankPlatoon2

				class APLIF_Tank_Section3
				{
					name = "Tank Section (T-55AM2)";
					side = 0;
					faction = "ACM_APLIF";
					icon = "\A3\ui_f\data\map\markers\nato\o_armor.paa";
					class Unit0
					{
						side = 0;
						vehicle = "ACM_APLIF_T55AM2";
						rank = "LIEUTENANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 0;
						vehicle = "ACM_APLIF_T55AM2";
						rank = "SERGEANT";
						position[] = {10,-10,0};
					};
				};//APLIF_Tank_Section3

				class APLIF_TankPlatoon3
				{
					name = "Tank Platoon (T-55AM2)";
					side = 0;
					faction = "ACM_APLIF";
					icon = "\A3\ui_f\data\map\markers\nato\o_armor.paa";
					class Unit0
					{
						side = 0;
						vehicle = "ACM_APLIF_T55AM2";
						rank = "LIEUTENANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 0;
						vehicle = "ACM_APLIF_T55AM2";
						rank = "SERGEANT";
						position[] = {10,-10,0};
					};
					class Unit2
					{
						side = 0;
						vehicle = "ACM_APLIF_T55AM2";
						rank = "SERGEANT";
						position[] = {-10,-10,0};
					};
					class Unit3
					{
						side = 0;
						vehicle = "ACM_APLIF_T55AM2";
						rank = "CORPORAL";
						position[] = {20,-20,0};
					};
				};//APLIF_TankPlatoon3

				class APLIF_MechFS_BRDM
				{
					name = "BRDM Fire Support Section";
					side = 0;
					faction = "ACM_APLIF";
					icon = "\A3\ui_f\data\map\markers\nato\o_armor.paa";
					class Unit0
					{
						side = 0;
						vehicle = "ACM_APLIF_BRDM";
						rank = "LIEUTENANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 0;
						vehicle = "ACM_APLIF_BRDM";
						rank = "SERGEANT";
						position[] = {10,-10,0};
					};
				};//APLIF_MechFS_BRDM
				class APLIF_MechFS_Plt_BRDM
				{
					name = "BRDM Fire Support Platoon";
					side = 0;
					faction = "ACM_APLIF";
					icon = "\A3\ui_f\data\map\markers\nato\o_armor.paa";
					class Unit0
					{
						side = 0;
						vehicle = "ACM_APLIF_BRDM";
						rank = "LIEUTENANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 0;
						vehicle = "ACM_APLIF_BRDM";
						rank = "SERGEANT";
						position[] = {10,-10,0};
					};
					class Unit2
					{
						side = 0;
						vehicle = "ACM_APLIF_BRDM";
						rank = "SERGEANT";
						position[] = {-10,-10,0};
					};
					class Unit3
					{
						side = 0;
						vehicle = "ACM_APLIF_BRDM";
						rank = "CORPORAL";
						position[] = {20,-20,0};
					};
				};//APLIF_MechFS_Plt__BRDM

			};//Armored
			class Mechanized
			{
				name = "Mechanized Infantry";
				class APLIF_MechInfSquad_BMP
				{
					name = "Mechanized Rifle Squad (BMP)";
					side = 0;
					faction = "ACM_APLIF";
					icon = "\A3\ui_f\data\map\markers\nato\o_mech_inf.paa";
					class Unit0
					{
						side = 0;
						vehicle = "ACM_APLIF_BMP";
						rank = "LIEUTENANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 0;
						vehicle = "APLIF_Soldier_TL";
						rank = "SERGEANT";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 0;
						vehicle = "APLIF_Soldier";
						rank = "PRIVATE";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 0;
						vehicle = "APLIF_Soldier_AT_Lite";
						rank = "CORPORAL";
						position[] = {10,-10,0};
					};
					class Unit4
					{
						side = 0;
						vehicle = "APLIF_Soldier_M";
						rank = "PRIVATE";
						position[] = {-10,-10,0};
					};
					class Unit5
					{
						side = 0;
						vehicle = "APLIF_Soldier_SL";
						rank = "SERGEANT";
						position[] = {15,-15,0};
					};
					class Unit6
					{
						side = 0;
						vehicle = "APLIF_Soldier_AR";
						rank = "CORPORAL";
						position[] = {-15,-15,0};
					};
					class Unit7
					{
						side = 0;
						vehicle = "APLIF_Soldier";
						rank = "PRIVATE";
						position[] = {20,-20,0};
					};
					//replace with medic
					class Unit8
					{
						side = 0;
						vehicle = "APLIF_Medic";
						rank = "PRIVATE";
						position[] = {-20,-20,0};
					};
				};//APLIF_MechInfSquad_BMP
				class APLIF_MechInfSquad_M113
				{
					name = "Mechanized Rifle Squad (M113)";
					side = 0;
					faction = "ACM_APLIF";
					icon = "\A3\ui_f\data\map\markers\nato\o_mech_inf.paa";
					class Unit0
					{
						side = 0;
						vehicle = "ACM_APLIF_M113a1DK";
						rank = "LIEUTENANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 0;
						vehicle = "APLIF_Soldier_TL";
						rank = "SERGEANT";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 0;
						vehicle = "APLIF_Soldier";
						rank = "PRIVATE";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 0;
						vehicle = "APLIF_Soldier_AT_Lite";
						rank = "CORPORAL";
						position[] = {10,-10,0};
					};
					class Unit4
					{
						side = 0;
						vehicle = "APLIF_Soldier_M";
						rank = "PRIVATE";
						position[] = {-10,-10,0};
					};
					class Unit5
					{
						side = 0;
						vehicle = "APLIF_Soldier_SL";
						rank = "SERGEANT";
						position[] = {15,-15,0};
					};
					class Unit6
					{
						side = 0;
						vehicle = "APLIF_Soldier_AR";
						rank = "CORPORAL";
						position[] = {-15,-15,0};
					};
					class Unit7
					{
						side = 0;
						vehicle = "APLIF_Soldier";
						rank = "PRIVATE";
						position[] = {20,-20,0};
					};
					//replace with medic
					class Unit8
					{
						side = 0;
						vehicle = "APLIF_Medic";
						rank = "PRIVATE";
						position[] = {-20,-20,0};
					};
				};//APLIF_MechInfSquad_M113
				class APLIF_MechInfSquad_BTR60Pa
				{
					name = "Mechanized Rifle Squad (BTR-60PA)";
					side = 0;
					faction = "ACM_APLIF";
					icon = "\A3\ui_f\data\map\markers\nato\o_mech_inf.paa";
					class Unit0
					{
						side = 0;
						vehicle = "ACM_APLIF_BTR60pa";
						rank = "LIEUTENANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 0;
						vehicle = "APLIF_Soldier_TL";
						rank = "SERGEANT";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 0;
						vehicle = "APLIF_Soldier";
						rank = "PRIVATE";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 0;
						vehicle = "APLIF_Soldier_AT_Lite";
						rank = "CORPORAL";
						position[] = {10,-10,0};
					};
					class Unit4
					{
						side = 0;
						vehicle = "APLIF_Soldier_M";
						rank = "PRIVATE";
						position[] = {-10,-10,0};
					};
					class Unit5
					{
						side = 0;
						vehicle = "APLIF_Soldier_SL";
						rank = "SERGEANT";
						position[] = {15,-15,0};
					};
					class Unit6
					{
						side = 0;
						vehicle = "APLIF_Soldier_AR";
						rank = "CORPORAL";
						position[] = {-15,-15,0};
					};
					class Unit7
					{
						side = 0;
						vehicle = "APLIF_Soldier";
						rank = "PRIVATE";
						position[] = {20,-20,0};
					};
					//replace with medic
					class Unit8
					{
						side = 0;
						vehicle = "APLIF_Medic";
						rank = "PRIVATE";
						position[] = {-20,-20,0};
					};
				};//APLIF_MechInfSquad_BTR60PA
				class APLIF_MechInfSquad_BTR60Pb
				{
					name = "Mechanized Rifle Squad (BTR-60PB)";
					side = 0;
					faction = "ACM_APLIF";
					icon = "\A3\ui_f\data\map\markers\nato\o_mech_inf.paa";
					class Unit0
					{
						side = 0;
						vehicle = "ACM_APLIF_btr60pb";
						rank = "LIEUTENANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 0;
						vehicle = "APLIF_Soldier_TL";
						rank = "SERGEANT";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 0;
						vehicle = "APLIF_Soldier";
						rank = "PRIVATE";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 0;
						vehicle = "APLIF_Soldier_AT_Lite";
						rank = "CORPORAL";
						position[] = {10,-10,0};
					};
					class Unit4
					{
						side = 0;
						vehicle = "APLIF_Soldier_M";
						rank = "PRIVATE";
						position[] = {-10,-10,0};
					};
					class Unit5
					{
						side = 0;
						vehicle = "APLIF_Soldier_SL";
						rank = "SERGEANT";
						position[] = {15,-15,0};
					};
					class Unit6
					{
						side = 0;
						vehicle = "APLIF_Soldier_AR";
						rank = "CORPORAL";
						position[] = {-15,-15,0};
					};
					class Unit7
					{
						side = 0;
						vehicle = "APLIF_Soldier";
						rank = "PRIVATE";
						position[] = {20,-20,0};
					};
					class Unit8
					{
						side = 0;
						vehicle = "APLIF_Medic";
						rank = "PRIVATE";
						position[] = {-20,-20,0};
					};
				};//APLIF_MechCommand
				class APLIF_MechCom
				{
					name = "Mechanized Command";
					side = 0;
					faction = "ACM_APLIF";
					icon = "\A3\ui_f\data\map\markers\nato\o_HQ.paa";
					class Unit0
					{
						side = 0;
						vehicle = "ACM_APLIF_btr60pu";
						rank = "LIEUTENANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 0;
						vehicle = "APLIF_Officer";
						rank = "SERGEANT";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 0;
						vehicle = "APLIF_Soldier_TL";
						rank = "PRIVATE";
						position[] = {-5,-5,0};
					};
				};//APLIF_MechHQ
			};//Mechanized
			class Motorized
			{
				name = "Motorized Infantry";
				class APLIF_MotInf_Reinforce
				{
					name = "Motorized Reinforcements";
					side = 0;
					faction = "ACM_APLIF";
					icon = "\A3\ui_f\data\map\markers\nato\o_motor_inf.paa";
					class Unit0
					{
						side = 0;
						vehicle = "ACM_APLIF_TruckCargo";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 0;
						vehicle = "APLIF_Soldier_SL";
						rank = "SERGEANT";
						position[] = {5,0,0};
					};
					class Unit2
					{
						side = 0;
						vehicle = "APLIF_soldier";
						rank = "PRIVATE";
						position[] = {5,-2,0};
					};
					class Unit3
					{
						side = 0;
						vehicle = "APLIF_Soldier_lite";
						rank = "CORPORAL";
						position[] = {5,-4,0};
					};
					class Unit4
					{
						side = 0;
						vehicle = "APLIF_Soldier_M";
						rank = "PRIVATE";
						position[] = {5,-6,0};
					};
					class Unit5
					{
						side = 0;
						vehicle = "APLIF_Soldier_TL";
						rank = "SERGEANT";
						position[] = {5,-8,0};
					};
					class Unit6
					{
						side = 0;
						vehicle = "APLIF_Soldier_AR";
						rank = "CORPORAL";
						position[] = {5,-10,0};
					};
					class Unit7
					{
						side = 0;
						vehicle = "APLIF_soldier";
						rank = "PRIVATE";
						position[] = {5,-12,0};
					};
				};
				class APLIF_MotInf_Team
				{
					name = "Motorized Team";
					side = 0;
					faction = "ACM_APLIF";
					icon = "\A3\ui_f\data\map\markers\nato\o_motor_inf.paa";
					class Unit0
					{
						side = 0;
						vehicle = "ACM_APLIF_Iltis";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 0;
						vehicle = "APLIF_Soldier";
						rank = "CORPORAL";
						position[] = {5,-5,0};
					};
				};
				class APLIF_MotInf_AT
				{
					name = "Motorized Anti-armor Team";
					side = 0;
					faction = "ACM_AAFGM";
					icon = "\A3\ui_f\data\map\markers\nato\o_motor_inf.paa";
					class Unit0
					{
						side = 0;
						vehicle = "ACM_APLIF_Iltis_Milan";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 0;
						vehicle = "APLIF_Soldier_AT";
						rank = "CORPORAL";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 0;
						vehicle = "APLIF_Soldier_AT";
						rank = "PRIVATE";
						position[] = {-5,-5,0};
					};
				};//APLIF_MotInf_AT
			};//Motorized
			class gm_supply
			{
				name = "Supply";
				class APLIF_Supply_Convoy
				{
					name = "Supply Convoy";
					side = 0;
					faction = "ACM_APLIF";
					icon = "\A3\ui_f\data\map\markers\nato\o_support.paa";
					class Vehicle1
					{
						side = 0;
						vehicle = "ACM_APLIF_TruckAmmo";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Vehicle2: Vehicle1
					{
						vehicle = "ACM_APLIF_TruckFuel";
						position[] = {0,-15,0};
					};
					class Vehicle3: Vehicle1
					{
						vehicle = "ACM_APLIF_TruckRepair";
						position[] = {0,-30,0};
					};
				};
			};

		};
	};
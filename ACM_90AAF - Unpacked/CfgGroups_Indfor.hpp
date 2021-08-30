
	class INDEP
	{
		class ACM_AAFGM
		{
			class Infantry
			{
				name="Infantry"
				class AAFGM_InfSquad
				{
					name = "Rifle Squad";
					side = 2;
					faction = "ACM_AAFGM";
					icon = "\A3\ui_f\data\map\markers\nato\n_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "AAFGM_Soldier_SL";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "AAFGM_Soldier";
						rank = "PRIVATE";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "AFGM_Soldier_AT_Lite";
						rank = "CORPORAL";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "AAFGM_Soldier_M";
						rank = "PRIVATE";
						position[] = {10,-10,0};
					};
					class Unit4
					{
						side = 2;
						vehicle = "AAFGM_Soldier_TL";
						rank = "SERGEANT";
						position[] = {-10,-10,0};
					};
					class Unit5
					{
						side = 2;
						vehicle = "AAFGM_Soldier_AR";
						rank = "CORPORAL";
						position[] = {15,-15,0};
					};
					class Unit6
					{
						side = 2;
						vehicle = "AAFGM_Soldier_AR";
						rank = "PRIVATE";
						position[] = {-15,-15,0};
					};
					class Unit7
					{
						side = 2;
						vehicle = "AAFGM_Medic";
						rank = "PRIVATE";
						position[] = {20,-20,0};
					};
				};
				class AAFGM_InfSquad_Weapons
				{
					name = "Weapons Squad";
					side = 2;
					faction = "ACM_AAFGM";
					icon = "\A3\ui_f\data\map\markers\nato\n_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "AAFGM_Soldier_SL";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "AAFGM_Soldier_AR";
						rank = "PRIVATE";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "AAFGM_Soldier";
						rank = "CORPORAL";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "AAFGM_Soldier_M";
						rank = "SERGEANT";
						position[] = {10,-10,0};
					};
					class Unit4
					{
						side = 2;
						vehicle = "AFGM_Soldier_AT";
						rank = "CORPORAL";
						position[] = {-10,-10,0};
					};
					class Unit6
					{
						side = 2;
						vehicle = "AFGM_Soldier_AT_Lite";
						rank = "PRIVATE";
						position[] = {15,-15,0};
					};
					class Unit5
					{
						side = 2;
						vehicle = "AAFGM_soldier";
						rank = "PRIVATE";
						position[] = {-15,-15,0};
					};
					class Unit7
					{
						side = 2;
						vehicle = "AAFGM_medic";
						rank = "PRIVATE";
						position[] = {20,-20,0};
					};
				};
				class AAFGM_InfTeam
				{
					name = "Fire Team";
					side = 2;
					faction = "ACM_AAFGM";
					icon = "\A3\ui_f\data\map\markers\nato\n_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "AAFGM_Soldier_TL";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "AAFGM_Soldier_AR";
						rank = "CORPORAL";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "AAFGM_soldier";
						rank = "PRIVATE";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "AFGM_Soldier_AT_Lite";
						rank = "PRIVATE";
						position[] = {10,-10,0};
					};
				};
				class AAFGM_MPInfTeam
				{
					name = "Military Police Fire Team";
					side = 2;
					faction = "ACM_AAFGM";
					icon = "\A3\ui_f\data\map\markers\nato\n_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "AAFGM_Soldier_MP";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "AAFGM_Soldier_MP";
						rank = "CORPORAL";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "AAFGM_Soldier_MP";
						rank = "PRIVATE";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "AAFGM_Soldier_MP";
						rank = "PRIVATE";
						position[] = {10,-10,0};
					};
				};
				class AAFGM_InfTeam_AT
				{
					name = "Anti-armor Team";
					side = 2;
					faction = "ACM_AAFGM";
					icon = "\A3\ui_f\data\map\markers\nato\n_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "AAFGM_Soldier_SL";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "AFGM_Soldier_AT";
						rank = "CORPORAL";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "AFGM_Soldier_AT";
						rank = "PRIVATE";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "AFGM_Soldier_AT_Lite";
						rank = "PRIVATE";
						position[] = {10,-10,0};
					};
				};
				class AAFGM_InfSentry
				{
					name = "Sentry";
					side = 2;
					faction = "ACM_AAFGM";
					icon = "\A3\ui_f\data\map\markers\nato\n_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "AAFGM_Soldier_Lite";
						rank = "CORPORAL";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "AAFGM_soldier";
						rank = "PRIVATE";
						position[] = {5,-5,0};
					};
				};
				class AAFGM_InfTeam_Light
				{
					name = "Fire Team (Light)";
					side = 2;
					faction = "ACM_AAFGM";
					icon = "\A3\ui_f\data\map\markers\nato\n_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "AAFGM_Soldier_TL";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "AAFGM_Soldier_AR";
						rank = "CORPORAL";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "AAFGM_Soldier_Lite";
						rank = "PRIVATE";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "AAFGM_Soldier_Lite";
						rank = "PRIVATE";
						position[] = {10,-10,0};
					};
				};
				class AAFGM_CBRNTeam
				{
					name = "CBRN Team";
					side = 2;
					faction = "ACM_AAFGM";
					icon = "\A3\ui_f\data\map\markers\nato\n_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "AAFGM_CBRN";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "AAFGM_CBRN";
						rank = "CORPORAL";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "AAFGM_CBRN";
						rank = "PRIVATE";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "AAFGM_CBRN";
						rank = "PRIVATE";
						position[] = {10,-10,0};
					};
				};
			};
			class SpecOps
			{
				name = "Special Forces";
				class ASAS_Team1
				{
					name = "ASAS Team";
					side = 2;
					faction = "ACM_AAFGM";
					icon = "\A3\ui_f\data\map\markers\nato\n_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "AFGM_ASAS_Squad_Leader";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "AAFGM_ASAS_Explosive";
						rank = "CORPORAL";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "AFGM_ASAS_Rifleman";
						rank = "PRIVATE";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "AFGM_ASAS_AT";
						rank = "PRIVATE";
						position[] = {10,-10,0};
					};
					class Unit4
					{
						side = 2;
						vehicle = "AAFGM_ASAS_Medic";
						rank = "PRIVATE";
						position[] = {-10,-10,0};
					};
					class Unit5
					{
						side = 2;
						vehicle = "AAFGM_ASAS_Auto";
						rank = "PRIVATE";
						position[] = {15,-15,0};
					};
				};
				class ASAS_Small_Team
				{
					name = "ASAS Fireteam";
					side = 2;
					faction = "ACM_AAFGM";
					icon = "\A3\ui_f\data\map\markers\nato\n_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "AFGM_ASAS_Squad_Leader";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "AFGM_ASAS_Marksman";
						rank = "CORPORAL";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "AFGM_ASAS_Rifleman";
						rank = "PRIVATE";
						position[] = {-5,-5,0};
					};
				};
				class ASAS_CBRN
				{
					name = "ASAS CBRN Team";
					side = 2;
					faction = "ACM_AAFGM";
					icon = "\A3\ui_f\data\map\markers\nato\n_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "AAFGM_ASAS_CBRN";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "AAFGM_ASAS_CBRN";
						rank = "CORPORAL";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "AAFGM_ASAS_CBRN";
						rank = "PRIVATE";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "AAFGM_ASAS_CBRN";
						rank = "PRIVATE";
						position[] = {10,-10,0};
					};
					class Unit4
					{
						side = 2;
						vehicle = "AAFGM_ASAS_CBRN";
						rank = "PRIVATE";
						position[] = {-10,-10,0};
					};
					class Unit5
					{
						side = 2;
						vehicle = "AAFGM_ASAS_CBRN";
						rank = "PRIVATE";
						position[] = {15,-15,0};
					};
				};
			};
			class Support
			{
				name = "Support Infantry";
				class AAFGM_Support_CLS
				{
					name = "Support Team (CLS)";
					side = 2;
					faction = "ACM_AAFGM";
					icon = "\A3\ui_f\data\map\markers\nato\n_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "AAFGM_Soldier_TL";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "AAFGM_Soldier_AR";
						rank = "CORPORAL";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "AAFGM_Medic";
						rank = "PRIVATE";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "AAFGM_Medic";
						rank = "PRIVATE";
						position[] = {10,-10,0};
					};
				};
				class AAFGM_Support_ENG
				{
					name = "Support Team (Repair)";
					side = 2;
					faction = "ACM_AAFGM";
					icon = "\A3\ui_f\data\map\markers\nato\n_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "AAFGM_Soldier_TL";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "AAFGM_Soldier_Repair";
						rank = "CORPORAL";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "AAFGM_Soldier_Repair";
						rank = "PRIVATE";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "AAFGM_Soldier_Repair";
						rank = "PRIVATE";
						position[] = {10,-10,0};
					};
				};
			};
			class Motorized
			{
				name = "Motorized Infantry";
				class AAFGM_MotInf_Team
				{
					name = "Motorized Team";
					side = 2;
					faction = "ACM_AAFGM";
					icon = "\A3\ui_f\data\map\markers\nato\n_motor_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "ACM_AAFGM_Iltis";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "AAFGM_soldier";
						rank = "CORPORAL";
						position[] = {5,-5,0};
					};
				};
				class AAFGM_MotInf_AT
				{
					name = "Motorized Anti-armor Team";
					side = 2;
					faction = "ACM_AAFGM";
					icon = "\A3\ui_f\data\map\markers\nato\n_motor_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "ACM_AAFGM_Iltis_Milan";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "AFGM_Soldier_AT";
						rank = "CORPORAL";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "AFGM_Soldier_AT";
						rank = "PRIVATE";
						position[] = {-5,-5,0};
					};
				};
				class AAFGM_MotInf_AT_two
				{
					name = "Motorized Anti-armor Team 2";
					side = 2;
					faction = "ACM_AAFGM";
					icon = "\A3\ui_f\data\map\markers\nato\n_motor_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "ACM_AAFGM_Fuchs_Recon";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "AFGM_Soldier_AT";
						rank = "CORPORAL";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "AFGM_Soldier_AT";
						rank = "PRIVATE";
						position[] = {-5,-5,0};
					};
				};
				class AAFGM_MotInf_Reinforce
				{
					name = "Motorized Reinforcements";
					side = 2;
					faction = "ACM_AAFGM";
					icon = "\A3\ui_f\data\map\markers\nato\n_motor_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "ACM_AAFGM_Kat1_451_Cargo";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "AAFGM_Soldier_SL";
						rank = "SERGEANT";
						position[] = {5,0,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "AAFGM_soldier";
						rank = "PRIVATE";
						position[] = {5,-2,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "AFGM_Soldier_AT_Lite";
						rank = "CORPORAL";
						position[] = {5,-4,0};
					};
					class Unit4
					{
						side = 2;
						vehicle = "AAFGM_Soldier_M";
						rank = "PRIVATE";
						position[] = {5,-6,0};
					};
					class Unit5
					{
						side = 2;
						vehicle = "AAFGM_Soldier_TL";
						rank = "SERGEANT";
						position[] = {5,-8,0};
					};
					class Unit6
					{
						side = 2;
						vehicle = "AAFGM_Soldier_AR";
						rank = "CORPORAL";
						position[] = {5,-10,0};
					};
					class Unit7
					{
						side = 2;
						vehicle = "AAFGM_soldier";
						rank = "PRIVATE";
						position[] = {5,-12,0};
					};
					class Unit8
					{
						side = 2;
						vehicle = "AAFGM_medic";
						rank = "PRIVATE";
						position[] = {5,-14,0};
					};
					class Unit9
					{
						side = 2;
						vehicle = "AAFGM_Soldier_SL";
						rank = "SERGEANT";
						position[] = {-5,0,0};
					};
					class Unit10
					{
						side = 2;
						vehicle = "AAFGM_soldier";
						rank = "PRIVATE";
						position[] = {-5,-2,0};
					};
					class Unit11
					{
						side = 2;
						vehicle = "AFGM_Soldier_AT_Lite";
						rank = "CORPORAL";
						position[] = {-5,-4,0};
					};
					class Unit12
					{
						side = 2;
						vehicle = "AAFGM_Soldier_M";
						rank = "PRIVATE";
						position[] = {-5,-6,0};
					};
					class Unit13
					{
						side = 2;
						vehicle = "AAFGM_Soldier_TL";
						rank = "SERGEANT";
						position[] = {-5,-8,0};
					};
					class Unit14
					{
						side = 2;
						vehicle = "AAFGM_Soldier_AR";
						rank = "CORPORAL";
						position[] = {-5,-10,0};
					};
					class Unit15
					{
						side = 2;
						vehicle = "AAFGM_soldier";
						rank = "PRIVATE";
						position[] = {-5,-12,0};
					};
					class Unit16
					{
						side = 2;
						vehicle = "AAFGM_medic";
						rank = "PRIVATE";
						position[] = {-5,-14,0};
					};
				};
				class ACM_MotInf_Support
				{
					name = "Motorized Support Squad";
					side = 2;
					faction = "ACM_AAFGM";
					icon = "\A3\ui_f\data\map\markers\nato\n_motor_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "ACM_AAFGM_Fuchs_Engineer";
						rank = "LIEUTENANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "AAFGM_Soldier_TL";
						rank = "SERGEANT";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "AAFGM_Soldier_SL";
						rank = "SERGEANT";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "AAFGM_Soldier_Repair";
						rank = "CORPORAL";
						position[] = {10,-10,0};
					};
					class Unit4
					{
						side = 2;
						vehicle = "AAFGM_Soldier_Repair";
						rank = "PRIVATE";
						position[] = {-10,-10,0};
					};
					class Unit5
					{
						side = 2;
						vehicle = "AAFGM_Soldier_Repair";
						rank = "PRIVATE";
						position[] = {15,-15,0};
					};
					class Unit6
					{
						side = 2;
						vehicle = "AAFGM_Soldier_AR";
						rank = "CORPORAL";
						position[] = {-15,-15,0};
					};
					class Unit7
					{
						side = 2;
						vehicle = "AAFGM_Soldier_Lite";
						rank = "PRIVATE";
						position[] = {20,-20,0};
					};
					class Unit8
					{
						side = 2;
						vehicle = "AAFGM_soldier";
						rank = "PRIVATE";
						position[] = {-20,-20,0};
					};
				};
			};
			class Mechanized
			{
				name = "Mechanized Infantry";
				class AAFGM_MechInfSquad
				{
					name = "Mechanized Rifle Squad";
					side = 2;
					faction = "ACM_AAFGM";
					icon = "\A3\ui_f\data\map\markers\nato\n_mech_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "ACM_AAFGM_m113a1dk";
						rank = "LIEUTENANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "AAFGM_Soldier_TL";
						rank = "SERGEANT";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "AAFGM_soldier";
						rank = "PRIVATE";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "AFGM_Soldier_AT_Lite";
						rank = "CORPORAL";
						position[] = {10,-10,0};
					};
					class Unit4
					{
						side = 2;
						vehicle = "AAFGM_Soldier_M";
						rank = "PRIVATE";
						position[] = {-10,-10,0};
					};
					class Unit5
					{
						side = 2;
						vehicle = "AAFGM_Soldier_SL";
						rank = "SERGEANT";
						position[] = {15,-15,0};
					};
					class Unit6
					{
						side = 2;
						vehicle = "AAFGM_Soldier_AR";
						rank = "CORPORAL";
						position[] = {-15,-15,0};
					};
					class Unit7
					{
						side = 2;
						vehicle = "AAFGM_Soldier";
						rank = "PRIVATE";
						position[] = {20,-20,0};
					};
					class Unit8
					{
						side = 2;
						vehicle = "AAFGM_medic";
						rank = "PRIVATE";
						position[] = {-20,-20,0};
					};
				};
				class AAFGM_MechInfSquad_BMP
				{
					name = "Mechanized Rifle Squad (BMP)";
					side = 2;
					faction = "ACM_AAFGM";
					icon = "\A3\ui_f\data\map\markers\nato\n_mech_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "ACM_AAFGM_BMP";
						rank = "LIEUTENANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "AAFGM_Soldier_TL";
						rank = "SERGEANT";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "AAFGM_soldier";
						rank = "PRIVATE";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "AFGM_Soldier_AT_Lite";
						rank = "CORPORAL";
						position[] = {10,-10,0};
					};
					class Unit4
					{
						side = 2;
						vehicle = "AAFGM_Soldier_M";
						rank = "PRIVATE";
						position[] = {-10,-10,0};
					};
					class Unit5
					{
						side = 2;
						vehicle = "AAFGM_Soldier_SL";
						rank = "SERGEANT";
						position[] = {15,-15,0};
					};
					class Unit6
					{
						side = 2;
						vehicle = "AAFGM_Soldier_AR";
						rank = "CORPORAL";
						position[] = {-15,-15,0};
					};
					class Unit7
					{
						side = 2;
						vehicle = "AAFGM_Soldier";
						rank = "PRIVATE";
						position[] = {20,-20,0};
					};
					class Unit8
					{
						side = 2;
						vehicle = "AAFGM_medic";
						rank = "PRIVATE";
						position[] = {-20,-20,0};
					};
				};
				class AAFGM_MechInf_AT
				{
					name = "Mechanized Anti-armor Squad";
					side = 2;
					faction = "ACM_AAFGM";
					icon = "\A3\ui_f\data\map\markers\nato\n_mech_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "ACM_AAFGM_M113_milan";
						rank = "LIEUTENANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "AAFGM_Soldier_SL";
						rank = "SERGEANT";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "AFGM_Soldier_AT";
						rank = "CORPORAL";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "AFGM_Soldier_AT";
						rank = "PRIVATE";
						position[] = {10,-10,0};
					};
					class Unit4
					{
						side = 2;
						vehicle = "AFGM_Soldier_AT";
						rank = "PRIVATE";
						position[] = {-10,-10,0};
					};
					class Unit5
					{
						side = 2;
						vehicle = "AFGM_Soldier_AT_Lite";
						rank = "PRIVATE";
						position[] = {15,-15,0};
					};
					class Unit6
					{
						side = 2;
						vehicle = "AFGM_Soldier_AT_Lite";
						rank = "PRIVATE";
						position[] = {-15,-15,0};
					};
					class Unit7
					{
						side = 2;
						vehicle = "AFGM_Soldier_AT_Lite";
						rank = "PRIVATE";
						position[] = {20,-20,0};
					};
				};
			};
			class Armored
			{
				class AAFGM_m113_FS
				{
					name = "PNMK Fire Support Section";
					side = 2;
					faction = "ACM_AAFGM";
					icon = "\A3\ui_f\data\map\markers\nato\n_armor.paa";
					class Unit0
					{
						side = 2;
						vehicle = "ACM_AAFGM_M113a2DK";
						rank = "LIEUTENANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "ACM_AAFGM_M113a2DK";
						rank = "SERGEANT";
						position[] = {10,-10,0};
					};
				};
				class AAFGM_m113_FS_Plat
				{
					name = "PNMK Fire Support Platoon";
					side = 2;
					faction = "ACM_AAFGM";
					icon = "\A3\ui_f\data\map\markers\nato\n_armor.paa";
					class Unit0
					{
						side = 2;
						vehicle = "ACM_AAFGM_M113a2DK";
						rank = "LIEUTENANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "ACM_AAFGM_M113a2DK";
						rank = "CORPORAL";
						position[] = {10,-10,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "ACM_AAFGM_M113a2DK";
						rank = "CORPORAL";
						position[] = {-10,-10,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "ACM_AAFGM_M113a2DK";
						rank = "SERGEANT";
						position[] = {0,-15,0};
					};
				};
				class AAFGM_TankPlatoon
				{
					name = "Tank Platoon (Kpz 1A3A1)";
					side = 2;
					faction = "ACM_AAFGM";
					icon = "\A3\ui_f\data\map\markers\nato\n_armor.paa";
					class Unit0
					{
						side = 2;
						vehicle = "ACM_AAFGM_Leopard1a3a1";
						rank = "LIEUTENANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "ACM_AAFGM_Leopard1a3a1";
						rank = "SERGEANT";
						position[] = {10,-10,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "ACM_AAFGM_Leopard1a3a1";
						rank = "SERGEANT";
						position[] = {-10,-10,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "ACM_AAFGM_Leopard1a3a1";
						rank = "CORPORAL";
						position[] = {20,-20,0};
					};
				};
				class AAFGM_TankPlatoon_Two
				{
					name = "Tank Platoon (Kpz 1A5)";
					side = 2;
					faction = "ACM_AAFGM";
					icon = "\A3\ui_f\data\map\markers\nato\n_armor.paa";
					class Unit0
					{
						side = 2;
						vehicle = "ACM_AAFGM_Leopard1a5";
						rank = "LIEUTENANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "ACM_AAFGM_Leopard1a5";
						rank = "SERGEANT";
						position[] = {10,-10,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "ACM_AAFGM_Leopard1a5";
						rank = "SERGEANT";
						position[] = {-10,-10,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "ACM_AAFGM_Leopard1a5";
						rank = "CORPORAL";
						position[] = {20,-20,0};
					};
				};
				class AAFGM_TankPlatoon_AA
				{
					name = "Tank Platoon (Combined)";
					side = 2;
					faction = "ACM_AAFGM";
					icon = "\A3\ui_f\data\map\markers\nato\n_armor.paa";
					class Unit0
					{
						side = 2;
						vehicle = "ACM_AAFGM_Leopard1a5";
						rank = "LIEUTENANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "ACM_AAFGM_Leopard1a3a1";
						rank = "CORPORAL";
						position[] = {10,-10,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "ACM_AAFGM_Leopard1a3a1";
						rank = "CORPORAL";
						position[] = {-10,-10,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "ACM_AAFGM_M113a2DK";
						rank = "SERGEANT";
						position[] = {0,-15,0};
					};
					class Unit4
					{
						side = 2;
						vehicle = "AAFGM_Soldier_SL";
						rank = "SERGEANT";
						position[] = {0,-20,0};
					};
					class Unit5
					{
						side = 2;
						vehicle = "AFGM_Soldier_AT_Lite";
						rank = "PRIVATE";
						position[] = {5,-25,0};
					};
					class Unit6
					{
						side = 2;
						vehicle = "AFGM_Soldier_AT_Lite";
						rank = "PRIVATE";
						position[] = {-5,-25,0};
					};
					class Unit7
					{
						side = 2;
						vehicle = "AFGM_Soldier_AT";
						rank = "PRIVATE";
						position[] = {10,-30,0};
					};
					class Unit8
					{
						side = 2;
						vehicle = "AFGM_Soldier_AT";
						rank = "PRIVATE";
						position[] = {-10,-30,0};
					};
					class Unit9
					{
						side = 2;
						vehicle = "AFGM_Soldier_AT";
						rank = "PRIVATE";
						position[] = {15,-35,0};
					};
					class Unit10
					{
						side = 2;
						vehicle = "AFGM_Soldier_AT";
						rank = "PRIVATE";
						position[] = {-15,-35,0};
					};
				};
				class AAFGM_TankSection
				{
					name = "Tank Section (Kpz 1A3A1)";
					side = 2;
					faction = "ACM_AAFGM";
					icon = "\A3\ui_f\data\map\markers\nato\n_armor.paa";
					class Unit0
					{
						side = 2;
						vehicle = "ACM_AAFGM_Leopard1a3a1";
						rank = "LIEUTENANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "ACM_AAFGM_Leopard1a3a1";
						rank = "SERGEANT";
						position[] = {10,-10,0};
					};
				};
				class AAFGM_TankSection2
				{
					name = "Tank Section (Kpz 1A5)";
					side = 2;
					faction = "ACM_AAFGM";
					icon = "\A3\ui_f\data\map\markers\nato\n_armor.paa";
					class Unit0
					{
						side = 2;
						vehicle = "ACM_AAFGM_Leopard1a5";
						rank = "LIEUTENANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "ACM_AAFGM_Leopard1a5";
						rank = "SERGEANT";
						position[] = {10,-10,0};
					};
				};
				name = "Armor";
				class AAFGM_LTankSection_AA
				{
					name = "FlakPz Air-Defense Section";
					side = 2;
					faction = "ACM_AAFGM";
					icon = "\A3\ui_f\data\map\markers\nato\n_armor.paa";
					class Unit0
					{
						side = 2;
						vehicle = "ACM_AAFGM_Gepard";
						rank = "LIEUTENANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "ACM_AAFGM_Gepard";
						rank = "SERGEANT";
						position[] = {10,-10,0};
					};
				};
				class AAFGM_LTankPlatoon_AA
				{
					name = "FlakPz Air-Defense Platoon";
					side = 2;
					faction = "ACM_AAFGM";
					icon = "\A3\ui_f\data\map\markers\nato\n_armor.paa";
					class Unit0
					{
						side = 2;
						vehicle = "ACM_AAFGM_Gepard";
						rank = "LIEUTENANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "ACM_AAFGM_Gepard";
						rank = "SERGEANT";
						position[] = {10,-10,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "ACM_AAFGM_Gepard";
						rank = "SERGEANT";
						position[] = {-10,-10,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "ACM_AAFGM_Gepard";
						rank = "CORPORAL";
						position[] = {20,-20,0};
					};
				};
			};
			class AAFGM_supply
			{
				name = "Supply";
				class AAFGM_Supply_Convoy
				{
					name = "Supply Convoy";
					side = 1;
					faction = "ACM_AAFGM";
					icon = "\A3\ui_f\data\map\markers\nato\b_support.paa";
					class Vehicle1
					{
						side = 1;
						vehicle = "ACM_AAFGM_Kat1_454";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Vehicle2: Vehicle1
					{
						vehicle = "ACM_AAFGM_Kat1_451_Ammo";
						position[] = {0,-15,0};
					};
					class Vehicle3: Vehicle1
					{
						vehicle = "ACM_AAFGM_Kat1_451_Fuel";
						position[] = {0,-30,0};
					};
				};
			};
			name = "AAF (1990's)";
		};
		class ACM_AAFGM_Win
		{
			class Infantry
			{
				class AAFGM_Win_InfSquad
				{
					name = "Rifle Squad";
					side = 2;
					faction = "ACM_AAFGM_Win";
					icon = "\A3\ui_f\data\map\markers\nato\n_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_SL";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier";
						rank = "PRIVATE";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "AAFGM_Winter_Soldier_AT_Lite";
						rank = "CORPORAL";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_M";
						rank = "PRIVATE";
						position[] = {10,-10,0};
					};
					class Unit4
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_TL";
						rank = "SERGEANT";
						position[] = {-10,-10,0};
					};
					class Unit5
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_AR";
						rank = "CORPORAL";
						position[] = {15,-15,0};
					};
					class Unit6
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_AR";
						rank = "PRIVATE";
						position[] = {-15,-15,0};
					};
					class Unit7
					{
						side = 2;
						vehicle = "AAFGM_Winter_Medic";
						rank = "PRIVATE";
						position[] = {20,-20,0};
					};
				};
				class AAFGM_Win_InfSquad_Weapons
				{
					name = "Weapons Squad";
					side = 2;
					faction = "ACM_AAFGM_Win";
					icon = "\A3\ui_f\data\map\markers\nato\n_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_SL";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_AR";
						rank = "PRIVATE";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier";
						rank = "CORPORAL";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_M";
						rank = "SERGEANT";
						position[] = {10,-10,0};
					};
					class Unit4
					{
						side = 2;
						vehicle = "AAFGM_Winter_Soldier_AT";
						rank = "CORPORAL";
						position[] = {-10,-10,0};
					};
					class Unit6
					{
						side = 2;
						vehicle = "AAFGM_Winter_Soldier_AT_Lite";
						rank = "PRIVATE";
						position[] = {15,-15,0};
					};
					class Unit5
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier";
						rank = "PRIVATE";
						position[] = {-15,-15,0};
					};
					class Unit7
					{
						side = 2;
						vehicle = "AAFGM_Winter_Medic";
						rank = "PRIVATE";
						position[] = {20,-20,0};
					};
				};
				class AAFGM_win_InfTeam
				{
					name = "Fire Team";
					side = 2;
					faction = "ACM_AAFGM_Win";
					icon = "\A3\ui_f\data\map\markers\nato\n_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_TL";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_AR";
						rank = "CORPORAL";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier";
						rank = "PRIVATE";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "AAFGM_Winter_Soldier_AT_Lite";
						rank = "PRIVATE";
						position[] = {10,-10,0};
					};
				};
				class AAFGM_Win_MPInfTeam
				{
					name = "Military Police Fire Team";
					side = 2;
					faction = "ACM_AAFGM_Win";
					icon = "\A3\ui_f\data\map\markers\nato\n_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_MP";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_MP";
						rank = "CORPORAL";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_MP";
						rank = "PRIVATE";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_MP";
						rank = "PRIVATE";
						position[] = {10,-10,0};
					};
				};
				class AAFGM_win_InfTeam_AT
				{
					name = "Anti-armor Team";
					side = 2;
					faction = "ACM_AAFGM_Win";
					icon = "\A3\ui_f\data\map\markers\nato\n_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_SL";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "AAFGM_Winter_Soldier_AT";
						rank = "CORPORAL";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "AAFGM_Winter_Soldier_AT";
						rank = "PRIVATE";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "AAFGM_Winter_Soldier_AT_Lite";
						rank = "PRIVATE";
						position[] = {10,-10,0};
					};
				};
				class AAFGM_win_InfSentry
				{
					name = "Sentry";
					side = 2;
					faction = "ACM_AAFGM_Win";
					icon = "\A3\ui_f\data\map\markers\nato\n_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_Lite";
						rank = "CORPORAL";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier";
						rank = "PRIVATE";
						position[] = {5,-5,0};
					};
				};
				name = "Infantry";
				class AAFGM_win_InfTeam_Light
				{
					name = "Fire Team (Light)";
					side = 2;
					faction = "ACM_AAFGM_Win";
					icon = "\A3\ui_f\data\map\markers\nato\n_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_TL";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_AR";
						rank = "CORPORAL";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_Lite";
						rank = "PRIVATE";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_Lite";
						rank = "PRIVATE";
						position[] = {10,-10,0};
					};
				};
				class AAFGM_win_CBRNTeam
				{
					name = "CBRN Team";
					side = 2;
					faction = "ACM_AAFGM_Win";
					icon = "\A3\ui_f\data\map\markers\nato\n_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "AAFGM_Winter_CBRN";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "AAFGM_Winter_CBRN";
						rank = "CORPORAL";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "AAFGM_Winter_CBRN";
						rank = "PRIVATE";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "AAFGM_Winter_CBRN";
						rank = "PRIVATE";
						position[] = {10,-10,0};
					};
				};
			};
			class SpecOps
			{
				name = "Special Forces";
				class ASAS_win_Team1
				{
					name = "ASAS Team";
					side = 2;
					faction = "ACM_AAFGM_Win";
					icon = "\A3\ui_f\data\map\markers\nato\n_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "AFGM_ASAS_Winter_Squad_Leader";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "AAFGM_ASAS_Winter_Explosive";
						rank = "CORPORAL";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "AFGM_ASAS_Winter_Rifleman";
						rank = "PRIVATE";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "AFGM_ASAS_Winter_AT";
						rank = "PRIVATE";
						position[] = {10,-10,0};
					};
					class Unit4
					{
						side = 2;
						vehicle = "AAFGM_ASAS_Winter_Medic";
						rank = "PRIVATE";
						position[] = {-10,-10,0};
					};
					class Unit5
					{
						side = 2;
						vehicle = "AAFGM_ASAS_Winter_Auto";
						rank = "PRIVATE";
						position[] = {15,-15,0};
					};
				};
				class ASAS_win_Small_Team
				{
					name = "ASAS Fireteam";
					side = 2;
					faction = "ACM_AAFGM_Win";
					icon = "\A3\ui_f\data\map\markers\nato\n_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "AFGM_ASAS_Winter_Squad_Leader";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "AFGM_ASAS_Winter_Marksman";
						rank = "CORPORAL";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "AFGM_ASAS_Winter_Rifleman";
						rank = "PRIVATE";
						position[] = {-5,-5,0};
					};
				};
				class ASAS_CBRN_win
				{
					name = "ASAS CBRN Team";
					side = 2;
					faction = "ACM_AAFGM_Win";
					icon = "\A3\ui_f\data\map\markers\nato\n_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "AAFGM_ASAS_Winter_CBRN";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "AAFGM_ASAS_Winter_CBRN";
						rank = "CORPORAL";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "AAFGM_ASAS_Winter_CBRN";
						rank = "PRIVATE";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "AAFGM_ASAS_Winter_CBRN";
						rank = "PRIVATE";
						position[] = {10,-10,0};
					};
					class Unit4
					{
						side = 2;
						vehicle = "AAFGM_ASAS_Winter_CBRN";
						rank = "PRIVATE";
						position[] = {-10,-10,0};
					};
					class Unit5
					{
						side = 2;
						vehicle = "AAFGM_ASAS_Winter_CBRN";
						rank = "PRIVATE";
						position[] = {15,-15,0};
					};
				};
			};
			class Support
			{
				name = "Support Infantry";
				class AAFGM_win_Support_CLS
				{
					name = "Support Team (CLS)";
					side = 2;
					faction = "ACM_AAFGM_Win";
					icon = "\A3\ui_f\data\map\markers\nato\n_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_TL";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_AR";
						rank = "CORPORAL";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "AAFGM_Winter_Medic";
						rank = "PRIVATE";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "AAFGM_Winter_Medic";
						rank = "PRIVATE";
						position[] = {10,-10,0};
					};
				};
				class AAFGM_win_Support_ENG
				{
					name = "Support Team (Repair)";
					side = 2;
					faction = "ACM_AAFGM_Win";
					icon = "\A3\ui_f\data\map\markers\nato\n_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_TL";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_Repair";
						rank = "CORPORAL";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_Repair";
						rank = "PRIVATE";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_Repair";
						rank = "PRIVATE";
						position[] = {10,-10,0};
					};
				};
			};
			class Motorized
			{
				name = "Motorized Infantry";
				class AAFGM_win_MotInf_Team
				{
					name = "Motorized Team";
					side = 2;
					faction = "ACM_AAFGM_Win";
					icon = "\A3\ui_f\data\map\markers\nato\n_motor_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "ACM_AAFGM_Winter_Iltis";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier";
						rank = "CORPORAL";
						position[] = {5,-5,0};
					};
				};
				class AAFGM_win_MotInf_AT
				{
					name = "Motorized Anti-armor Team";
					side = 2;
					faction = "ACM_AAFGM_Win";
					icon = "\A3\ui_f\data\map\markers\nato\n_motor_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "ACM_AAFGM_Winter_Iltis_Milan";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "AAFGM_Winter_Soldier_AT";
						rank = "CORPORAL";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "AAFGM_Winter_Soldier_AT";
						rank = "PRIVATE";
						position[] = {-5,-5,0};
					};
				};
				class AAFGM_win_MotInf_AT_two
				{
					name = "Motorized Anti-armor Team 2";
					side = 2;
					faction = "ACM_AAFGM_Win";
					icon = "\A3\ui_f\data\map\markers\nato\n_motor_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "ACM_AAFGM_Winter_Fuchs_Recon";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "AAFGM_Winter_Soldier_AT";
						rank = "CORPORAL";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "AAFGM_Winter_Soldier_AT";
						rank = "PRIVATE";
						position[] = {-5,-5,0};
					};
				};
				class AAFGM_win_MotInf_Reinforce
				{
					name = "Motorized Reinforcements";
					side = 2;
					faction = "ACM_AAFGM_Win";
					icon = "\A3\ui_f\data\map\markers\nato\n_motor_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "ACM_AAFGM_Winter_Kat1_451_Cargo";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_SL";
						rank = "SERGEANT";
						position[] = {5,0,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier";
						rank = "PRIVATE";
						position[] = {5,-2,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "AAFGM_Winter_Soldier_AT_Lite";
						rank = "CORPORAL";
						position[] = {5,-4,0};
					};
					class Unit4
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_M";
						rank = "PRIVATE";
						position[] = {5,-6,0};
					};
					class Unit5
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_TL";
						rank = "SERGEANT";
						position[] = {5,-8,0};
					};
					class Unit6
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_AR";
						rank = "CORPORAL";
						position[] = {5,-10,0};
					};
					class Unit7
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier";
						rank = "PRIVATE";
						position[] = {5,-12,0};
					};
					class Unit8
					{
						side = 2;
						vehicle = "AAFGM_Winter_Medic";
						rank = "PRIVATE";
						position[] = {5,-14,0};
					};
					class Unit9
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_SL";
						rank = "SERGEANT";
						position[] = {-5,0,0};
					};
					class Unit10
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier";
						rank = "PRIVATE";
						position[] = {-5,-2,0};
					};
					class Unit11
					{
						side = 2;
						vehicle = "AAFGM_Winter_Soldier_AT_Lite";
						rank = "CORPORAL";
						position[] = {-5,-4,0};
					};
					class Unit12
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_M";
						rank = "PRIVATE";
						position[] = {-5,-6,0};
					};
					class Unit13
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_TL";
						rank = "SERGEANT";
						position[] = {-5,-8,0};
					};
					class Unit14
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_AR";
						rank = "CORPORAL";
						position[] = {-5,-10,0};
					};
					class Unit15
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier";
						rank = "PRIVATE";
						position[] = {-5,-12,0};
					};
					class Unit16
					{
						side = 2;
						vehicle = "AAFGM_Winter_Medic";
						rank = "PRIVATE";
						position[] = {-5,-14,0};
					};
				};
				class ACM_win_MotInf_Support
				{
					name = "Motorized Support Squad";
					side = 2;
					faction = "ACM_AAFGM_Win";
					icon = "\A3\ui_f\data\map\markers\nato\n_motor_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "ACM_AAFGM_Winter_Fuchs_Engineer";
						rank = "LIEUTENANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_TL";
						rank = "SERGEANT";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_SL";
						rank = "SERGEANT";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_Repair";
						rank = "CORPORAL";
						position[] = {10,-10,0};
					};
					class Unit4
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_Repair";
						rank = "PRIVATE";
						position[] = {-10,-10,0};
					};
					class Unit5
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_Repair";
						rank = "PRIVATE";
						position[] = {15,-15,0};
					};
					class Unit6
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_AR";
						rank = "CORPORAL";
						position[] = {-15,-15,0};
					};
					class Unit7
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_Lite";
						rank = "PRIVATE";
						position[] = {20,-20,0};
					};
					class Unit8
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier";
						rank = "PRIVATE";
						position[] = {-20,-20,0};
					};
				};
			};
			class Mechanized
			{
				name = "Mechanized Infantry";
				class AAFGM_win_MechInfSquad
				{
					name = "Mechanized Rifle Squad";
					side = 2;
					faction = "ACM_AAFGM_Win";
					icon = "\A3\ui_f\data\map\markers\nato\n_mech_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "ACM_AAFGM_Winter_m113a1dk";
						rank = "LIEUTENANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_TL";
						rank = "SERGEANT";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier";
						rank = "PRIVATE";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "AAFGM_Winter_Soldier_AT_Lite";
						rank = "CORPORAL";
						position[] = {10,-10,0};
					};
					class Unit4
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_M";
						rank = "PRIVATE";
						position[] = {-10,-10,0};
					};
					class Unit5
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_SL";
						rank = "SERGEANT";
						position[] = {15,-15,0};
					};
					class Unit6
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_AR";
						rank = "CORPORAL";
						position[] = {-15,-15,0};
					};
					class Unit7
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier";
						rank = "PRIVATE";
						position[] = {20,-20,0};
					};
					class Unit8
					{
						side = 2;
						vehicle = "AAFGM_Winter_Medic";
						rank = "PRIVATE";
						position[] = {-20,-20,0};
					};
				};
				class AAFGM_win_MechInfSquad_BMP
				{
					name = "Mechanized Rifle Squad (BMP)";
					side = 2;
					faction = "ACM_AAFGM_Win";
					icon = "\A3\ui_f\data\map\markers\nato\n_mech_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "ACM_AAFGM_Winter_BMP";
						rank = "LIEUTENANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_TL";
						rank = "SERGEANT";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier";
						rank = "PRIVATE";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "AAFGM_Winter_Soldier_AT_Lite";
						rank = "CORPORAL";
						position[] = {10,-10,0};
					};
					class Unit4
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_M";
						rank = "PRIVATE";
						position[] = {-10,-10,0};
					};
					class Unit5
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_SL";
						rank = "SERGEANT";
						position[] = {15,-15,0};
					};
					class Unit6
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_AR";
						rank = "CORPORAL";
						position[] = {-15,-15,0};
					};
					class Unit7
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier";
						rank = "PRIVATE";
						position[] = {20,-20,0};
					};
					class Unit8
					{
						side = 2;
						vehicle = "AAFGM_Winter_Medic";
						rank = "PRIVATE";
						position[] = {-20,-20,0};
					};
				};
				class AAFGM_win_MechInf_AT
				{
					name = "Mechanized Anti-armor Squad";
					side = 2;
					faction = "ACM_AAFGM_Win";
					icon = "\A3\ui_f\data\map\markers\nato\n_mech_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "ACM_AAFGM_Winter_M113_milan";
						rank = "LIEUTENANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_SL";
						rank = "SERGEANT";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "AAFGM_Winter_Soldier_AT";
						rank = "CORPORAL";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "AAFGM_Winter_Soldier_AT";
						rank = "PRIVATE";
						position[] = {10,-10,0};
					};
					class Unit4
					{
						side = 2;
						vehicle = "AAFGM_Winter_Soldier_AT";
						rank = "PRIVATE";
						position[] = {-10,-10,0};
					};
					class Unit5
					{
						side = 2;
						vehicle = "AAFGM_Winter_Soldier_AT_Lite";
						rank = "PRIVATE";
						position[] = {15,-15,0};
					};
					class Unit6
					{
						side = 2;
						vehicle = "AAFGM_Winter_Soldier_AT_Lite";
						rank = "PRIVATE";
						position[] = {-15,-15,0};
					};
					class Unit7
					{
						side = 2;
						vehicle = "AAFGM_Winter_Soldier_AT_Lite";
						rank = "PRIVATE";
						position[] = {20,-20,0};
					};
				};
			};
			class Armored
			{
				class AAFGM_win_m113_FS
				{
					name = "PNMK Fire Support Section";
					side = 2;
					faction = "ACM_AAFGM_Win";
					icon = "\A3\ui_f\data\map\markers\nato\n_armor.paa";
					class Unit0
					{
						side = 2;
						vehicle = "ACM_AAFGM_Winter_M113a2DK";
						rank = "LIEUTENANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "ACM_AAFGM_Winter_M113a2DK";
						rank = "SERGEANT";
						position[] = {10,-10,0};
					};
				};
				class AAFGM_win_m113_FS_Plat
				{
					name = "PNMK Fire Support Platoon";
					side = 2;
					faction = "ACM_AAFGM_Win";
					icon = "\A3\ui_f\data\map\markers\nato\n_armor.paa";
					class Unit0
					{
						side = 2;
						vehicle = "ACM_AAFGM_Winter_M113a2DK";
						rank = "LIEUTENANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "ACM_AAFGM_Winter_M113a2DK";
						rank = "CORPORAL";
						position[] = {10,-10,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "ACM_AAFGM_Winter_M113a2DK";
						rank = "CORPORAL";
						position[] = {-10,-10,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "ACM_AAFGM_Winter_M113a2DK";
						rank = "SERGEANT";
						position[] = {0,-15,0};
					};
				};
				class AAFGM_Win_TankPlatoon
				{
					name = "Tank Platoon (Kpz 1A3A1)";
					side = 2;
					faction = "ACM_AAFGM_Win";
					icon = "\A3\ui_f\data\map\markers\nato\n_armor.paa";
					class Unit0
					{
						side = 2;
						vehicle = "ACM_AAFGM_Winter_Leopard1a3a1";
						rank = "LIEUTENANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "ACM_AAFGM_Winter_Leopard1a3a1";
						rank = "SERGEANT";
						position[] = {10,-10,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "ACM_AAFGM_Winter_Leopard1a3a1";
						rank = "SERGEANT";
						position[] = {-10,-10,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "ACM_AAFGM_Winter_Leopard1a3a1";
						rank = "CORPORAL";
						position[] = {20,-20,0};
					};
				};
				class AAFGM_Win_TankPlatoon_Two
				{
					name = "Tank Platoon (Kpz 1A5)";
					side = 2;
					faction = "ACM_AAFGM_Win";
					icon = "\A3\ui_f\data\map\markers\nato\n_armor.paa";
					class Unit0
					{
						side = 2;
						vehicle = "ACM_AAFGM_Winter_Leopard1a5";
						rank = "LIEUTENANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "ACM_AAFGM_Winter_Leopard1a5";
						rank = "SERGEANT";
						position[] = {10,-10,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "ACM_AAFGM_Winter_Leopard1a5";
						rank = "SERGEANT";
						position[] = {-10,-10,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "ACM_AAFGM_Winter_Leopard1a5";
						rank = "CORPORAL";
						position[] = {20,-20,0};
					};
				};
				class AAFGM_Win_TankPlatoon_AA
				{
					name = "Tank Platoon (Combined)";
					side = 2;
					faction = "ACM_AAFGM_Win";
					icon = "\A3\ui_f\data\map\markers\nato\n_armor.paa";
					class Unit0
					{
						side = 2;
						vehicle = "ACM_AAFGM_Winter_Leopard1a5";
						rank = "LIEUTENANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "ACM_AAFGM_Winter_Leopard1a3a1";
						rank = "CORPORAL";
						position[] = {10,-10,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "ACM_AAFGM_Winter_Leopard1a3a1";
						rank = "CORPORAL";
						position[] = {-10,-10,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "ACM_AAFGM_Winter_M113a2DK";
						rank = "SERGEANT";
						position[] = {0,-15,0};
					};
					class Unit4
					{
						side = 2;
						vehicle = "AAFGM_Winter_soldier_SL";
						rank = "SERGEANT";
						position[] = {0,-20,0};
					};
					class Unit5
					{
						side = 2;
						vehicle = "AAFGM_Winter_Soldier_AT_Lite";
						rank = "PRIVATE";
						position[] = {5,-25,0};
					};
					class Unit6
					{
						side = 2;
						vehicle = "AAFGM_Winter_Soldier_AT_Lite";
						rank = "PRIVATE";
						position[] = {-5,-25,0};
					};
					class Unit7
					{
						side = 2;
						vehicle = "AAFGM_Winter_Soldier_AT";
						rank = "PRIVATE";
						position[] = {10,-30,0};
					};
					class Unit8
					{
						side = 2;
						vehicle = "AAFGM_Winter_Soldier_AT";
						rank = "PRIVATE";
						position[] = {-10,-30,0};
					};
					class Unit9
					{
						side = 2;
						vehicle = "AAFGM_Winter_Soldier_AT";
						rank = "PRIVATE";
						position[] = {15,-35,0};
					};
					class Unit10
					{
						side = 2;
						vehicle = "AAFGM_Winter_Soldier_AT";
						rank = "PRIVATE";
						position[] = {-15,-35,0};
					};
				};
				class AAFGM_Win_TankSection
				{
					name = "Tank Section (Kpz 1A3A1)";
					side = 2;
					faction = "ACM_AAFGM_Win";
					icon = "\A3\ui_f\data\map\markers\nato\n_armor.paa";
					class Unit0
					{
						side = 2;
						vehicle = "ACM_AAFGM_Winter_Leopard1a3a1";
						rank = "LIEUTENANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "ACM_AAFGM_Winter_Leopard1a3a1";
						rank = "SERGEANT";
						position[] = {10,-10,0};
					};
				};
				class AAFGM_Win_TankSection2
				{
					name = "Tank Section (Kpz 1A5)";
					side = 2;
					faction = "ACM_AAFGM_Win";
					icon = "\A3\ui_f\data\map\markers\nato\n_armor.paa";
					class Unit0
					{
						side = 2;
						vehicle = "ACM_AAFGM_Winter_Leopard1a5";
						rank = "LIEUTENANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "ACM_AAFGM_Winter_Leopard1a5";
						rank = "SERGEANT";
						position[] = {10,-10,0};
					};
				};
				name = "Armor";
				class AAFGM_Win_LTankSection_AA
				{
					name = "FlakPz Air-Defense Section";
					side = 2;
					faction = "ACM_AAFGM_Win";
					icon = "\A3\ui_f\data\map\markers\nato\n_armor.paa";
					class Unit0
					{
						side = 2;
						vehicle = "ACM_AAFGM_Winter_Gepard";
						rank = "LIEUTENANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "ACM_AAFGM_Winter_Gepard";
						rank = "SERGEANT";
						position[] = {10,-10,0};
					};
				};
				class AAFGM_Win_LTankPlatoon_AA
				{
					name = "FlakPz Air-Defense Platoon";
					side = 2;
					faction = "ACM_AAFGM_Win";
					icon = "\A3\ui_f\data\map\markers\nato\n_armor.paa";
					class Unit0
					{
						side = 2;
						vehicle = "ACM_AAFGM_Winter_Gepard";
						rank = "LIEUTENANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "ACM_AAFGM_Winter_Gepard";
						rank = "SERGEANT";
						position[] = {10,-10,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "ACM_AAFGM_Winter_Gepard";
						rank = "SERGEANT";
						position[] = {-10,-10,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "ACM_AAFGM_Winter_Gepard";
						rank = "CORPORAL";
						position[] = {20,-20,0};
					};
				};
			};
			class AAFGM_Win_supply
			{
				name = "Supply";
				class AAFGM_Supply_Convoy
				{
					name = "Supply Convoy";
					side = 1;
					faction = "ACM_AAFGM_Win";
					icon = "\A3\ui_f\data\map\markers\nato\b_support.paa";
					class Vehicle1
					{
						side = 1;
						vehicle = "ACM_AAFGM_Winter_Kat1_454";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Vehicle2: Vehicle1
					{
						vehicle = "ACM_AAFGM_Winter_Kat1_451_Ammo";
						position[] = {0,-15,0};
					};
					class Vehicle3: Vehicle1
					{
						vehicle = "ACM_AAFGM_Winter_Kat1_451_Fuel";
						position[] = {0,-30,0};
					};
				};
			};
			name = "AAF (Winter, 1990's)";
		};//ACM_AAF_WIN
		class ACM_APD
		{
			name="Altian Police (90's)";
			class Infantry
			{
				name="infantry";
				class ACM_APD_Patrol
				{
					name = "Patrol";
					side = 2;
					faction = "ACM_APD";
					icon = "\A3\ui_f\data\map\markers\nato\n_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "APD_officer";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "APD_officer";
						rank = "PRIVATE";
						position[] = {5,-5,0};
					};
				};//APD_Patrol
				class ACM_APD_Patrol_2
				{
					name = "Patrol 2";
					side = 2;
					faction = "ACM_APD";
					icon = "\A3\ui_f\data\map\markers\nato\n_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "APD_Police";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "APD_officer";
						rank = "PRIVATE";
						position[] = {5,-5,0};
					};
				};//ACM_APD_Patrol_2
				class ACM_APD_Patrol_3
				{
					name = "Patrol (Protected)";
					side = 2;
					faction = "ACM_APD";
					icon = "\A3\ui_f\data\map\markers\nato\n_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "APD_officer_Armour";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "APD_officer_Armour";
						rank = "PRIVATE";
						position[] = {5,-5,0};
					};
				};
				class ACM_APD_Invest
				{
					name = "Investigation Team";
					side = 2;
					faction = "ACM_APD";
					icon = "\A3\ui_f\data\map\markers\nato\n_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "APD_Police";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "APD_officer";
						rank = "PRIVATE";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "APD_officer";
						rank = "CORPORAL";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "APD_Police";
						rank = "PRIVATE";
						position[] = {10,-10,0};
					};
					
				};
			};//Infantry
			class Motorized
			{
				name = "Motorized Police";
				class ACM_APD_Patrol_Highway
				{
					name = "Highway Police";
					side = 2;
					faction = "ACM_APD";
					icon = "\A3\ui_f\data\map\markers\nato\n_motor_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "ACM_APD_Motorbike";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "ACM_APD_Motorbike";
						rank = "CORPORAL";
						position[] = {5,-5,0};
					};
				};
				class ACM_APD_Police_Section
				{
					name = "Iltis Section";
					side = 2;
					faction = "ACM_APD";
					icon = "\A3\ui_f\data\map\markers\nato\n_motor_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "ACM_APD_Iltis";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "ACM_APD_Iltis";
						rank = "CORPORAL";
						position[] = {5,-5,0};
					};
				};
				class ACM_APD_Police_Iltis
				{
					name = "Iltis Reinforcement";
					side = 2;
					faction = "ACM_APD";
					icon = "\A3\ui_f\data\map\markers\nato\n_motor_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "ACM_APD_Iltis";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "APD_officer_Armour";
						rank = "SERGEANT";
						position[] = {5,0,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "APD_officer_Armour";
						rank = "PRIVATE";
						position[] = {5,-2,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "APD_officer_Armour";
						rank = "CORPORAL";
						position[] = {5,-4,0};
					};
				};
				class ACM_APD_Unimog_Reinforcement
				{
					name = "Unimog OEA Reinforcements";
					side = 2;
					faction = "ACM_APD";
					icon = "\A3\ui_f\data\map\markers\nato\n_motor_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "ACM_APD_Unimog";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "APD_OEA_CQC";
						rank = "SERGEANT";
						position[] = {5,0,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "APD_OEA_Medic";
						rank = "PRIVATE";
						position[] = {5,-2,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "APD_OEA_CQC2";
						rank = "CORPORAL";
						position[] = {5,-4,0};
					};
					class Unit4
					{
						side = 2;
						vehicle = "APD_OEA_Marksman";
						rank = "PRIVATE";
						position[] = {5,-6,0};
					};
					class Unit5
					{
						side = 2;
						vehicle = "APD_OEA_Assaulter";
						rank = "SERGEANT";
						position[] = {5,-8,0};
					};
					class Unit6
					{
						side = 2;
						vehicle = "APD_OEA_CQC";
						rank = "CORPORAL";
						position[] = {5,-10,0};
					};
					class Unit7
					{
						side = 2;
						vehicle = "APD_OEA_CQC2";
						rank = "PRIVATE";
						position[] = {5,-12,0};
					};
					class Unit8
					{
						side = 2;
						vehicle = "APD_OEA_Medic";
						rank = "PRIVATE";
						position[] = {5,-14,0};
					};
					class Unit9
					{
						side = 2;
						vehicle = "APD_OEA_Assaulter";
						rank = "SERGEANT";
						position[] = {-5,0,0};
					};
					class Unit10
					{
						side = 2;
						vehicle = "APD_OEA_Assaulter";
						rank = "PRIVATE";
						position[] = {-5,-2,0};
					};
					class Unit11
					{
						side = 2;
						vehicle = "APD_OEA_EOD";
						rank = "CORPORAL";
						position[] = {-5,-4,0};
					};
					class Unit12
					{
						side = 2;
						vehicle = "APD_OEA_Marksman";
						rank = "PRIVATE";
						position[] = {-5,-6,0};
					};
				};
			};//Motorized
			class SpecOps
			{
				name = "Special Forces";
				class ACM_APD_OEA_CQC
				{
					name = "CQC Specialists";
					side = 2;
					faction = "ACM_APD";
					icon = "\A3\ui_f\data\map\markers\nato\n_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "APD_OEA_CQC";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "APD_OEA_CQC";
						rank = "CORPORAL";
						position[] = {5,-5,0};
					};
				};
				class ACM_APD_OEA_CQC2
				{
					name = "CQC Specialists 2";
					side = 2;
					faction = "ACM_APD";
					icon = "\A3\ui_f\data\map\markers\nato\n_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "APD_OEA_CQC2";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "APD_OEA_CQC2";
						rank = "CORPORAL";
						position[] = {5,-5,0};
					};
				};
				class ACM_APD_OEA_Assault
				{
					name = "Assault Team";
					side = 2;
					faction = "ACM_APD";
					icon = "\A3\ui_f\data\map\markers\nato\n_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "APD_OEA_Assaulter";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "APD_OEA_CQC";
						rank = "CORPORAL";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "APD_OEA_Assaulter";
						rank = "PRIVATE";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "APD_OEA_CQC2";
						rank = "PRIVATE";
						position[] = {10,-10,0};
					};
					class Unit4
					{
						side = 2;
						vehicle = "APD_OEA_CQC";
						rank = "PRIVATE";
						position[] = {-10,-10,0};
					};
					class Unit5
					{
						side = 2;
						vehicle = "APD_OEA_Medic";
						rank = "PRIVATE";
						position[] = {15,-15,0};
					};
				};
				class ACM_APD_OEA_EOD
				{
					name = "Bomb Squad";
					side = 2;
					faction = "ACM_APD";
					icon = "\A3\ui_f\data\map\markers\nato\n_inf.paa";
					class Unit0
					{
						side = 2;
						vehicle = "APD_OEA_EOD";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 2;
						vehicle = "APD_OEA_EOD";
						rank = "CORPORAL";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 2;
						vehicle = "APD_OEA_Marksman";
						rank = "PRIVATE";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 2;
						vehicle = "APD_OEA_Assaulter";
						rank = "PRIVATE";
						position[] = {10,-10,0};
					};
					class Unit4
					{
						side = 2;
						vehicle = "APD_OEA_Medic";
						rank = "PRIVATE";
						position[] = {-10,-10,0};
					};
				};
			};//Spec Ops
		};//ACM_APD
	};

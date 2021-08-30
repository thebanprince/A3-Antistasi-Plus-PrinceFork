class West
{
	class ACM_XIPH
	{
		name = "Operation Xiphos";
		class Infantry
			{
				name = "Infantry";
				class XIPH_InfSquad_Assault
				{
					name = "Assault Squad";
					side = 1;
					faction = "ACM_XIPH";
					icon = "\A3\ui_f\data\map\markers\nato\b_inf.paa";
					class Unit0
					{
						side = 1;
						vehicle = "XIPH_Soldier_SL";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 1;
						vehicle = "XIPH_Soldier";
						rank = "PRIVATE";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 1;
						vehicle = "XIPH_Soldier";
						rank = "CORPORAL";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 1;
						vehicle = "XIPH_Soldier_AT";
						rank = "PRIVATE";
						position[] = {10,-10,0};
					};
					class Unit4
					{
						side = 1;
						vehicle = "XIPH_Soldier_M";
						rank = "PRIVATE";
						position[] = {-10,-10,0};
					};
					class Unit5
					{
						side = 1;
						vehicle = "XIPH_Soldier";
						rank = "CORPORAL";
						position[] = {15,-15,0};
					};
					class Unit6
					{
						side = 1;
						vehicle = "XIPH_Soldier";
						rank = "PRIVATE";
						position[] = {-15,-15,0};
					};
					//Reminder: Make medic class
					class Unit7
					{
						side = 1;
						vehicle = "XIPH_Soldier_M";
						rank = "PRIVATE";
						position[] = {20,-20,0};
					};
				};
				class XIPH_InfTeam_Light
				{
					name = "Patrol Team";
					side = 1;
					faction = "ACM_XIPH";
					icon = "\A3\ui_f\data\map\markers\nato\b_inf.paa";
					class Unit0
					{
						side = 1;
						vehicle = "XIPH_Soldier_TL";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 1;
						vehicle = "XIPH_Soldier_AR";
						rank = "CORPORAL";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 1;
						vehicle = "XIPH_Soldier";
						rank = "PRIVATE";
						position[] = {-5,-5,0};
					};
					class Unit3
					{
						side = 1;
						vehicle = "XIPH_Soldier_AT";
						rank = "PRIVATE";
						position[] = {10,-10,0};
					};
				};
				class XIPH_InfSentry
				{
					name = "Sentry";
					side = 1;
					faction = "ACM_XIPH";
					icon = "\A3\ui_f\data\map\markers\nato\b_inf.paa";
					class Unit0
					{
						side = 1;
						vehicle = "XIPH_Soldier_lite";
						rank = "CORPORAL";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 1;
						vehicle = "XIPH_Soldier";
						rank = "PRIVATE";
						position[] = {5,-5,0};
					};
				};//XIPH_InfSentry
			};//infantry
			class Motorized
			{
				name = "Motorized Infantry";
				class Xiph_MotInf_Reinforce
				{
					name = "Motorized Reinforcements";
					side = 1;
					faction = "ACM_XIPH";
					icon = "\A3\ui_f\data\map\markers\nato\n_motor_inf.paa";
					class Unit0
					{
						side = 1;
						vehicle = "ACM_XIPH_U1300_cargo";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 1;
						vehicle = "XIPH_Soldier_SL";
						rank = "SERGEANT";
						position[] = {5,0,0};
					};
					class Unit2
					{
						side = 1;
						vehicle = "XIPH_soldier";
						rank = "PRIVATE";
						position[] = {5,-2,0};
					};
					class Unit3
					{
						side = 1;
						vehicle = "XIPH_Soldier_lite";
						rank = "CORPORAL";
						position[] = {5,-4,0};
					};
					class Unit4
					{
						side = 1;
						vehicle = "XIPH_Soldier_M";
						rank = "PRIVATE";
						position[] = {5,-6,0};
					};
					class Unit5
					{
						side = 1;
						vehicle = "XIPH_Soldier_TL";
						rank = "SERGEANT";
						position[] = {5,-8,0};
					};
					class Unit6
					{
						side = 1;
						vehicle = "XIPH_Soldier_AR";
						rank = "CORPORAL";
						position[] = {5,-10,0};
					};
					class Unit7
					{
						side = 1;
						vehicle = "XIPH_soldier";
						rank = "PRIVATE";
						position[] = {5,-12,0};
					};
				};

				class XIPH_MotInf_Team
				{
					name = "Motorized Team";
					side = 1;
					faction = "ACM_XIPH";
					icon = "\A3\ui_f\data\map\markers\nato\o_motor_inf.paa";
					class Unit0
					{
						side = 1;
						vehicle = "ACM_XIPH_Iltis";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 1;
						vehicle = "XIPH_Soldier";
						rank = "CORPORAL";
						position[] = {5,-5,0};
					};
				};
				class XIPH_MotInf_AT
				{
					name = "Motorized Anti-armor Team";
					side = 1;
					faction = "ACM_XIPH";
					icon = "\A3\ui_f\data\map\markers\nato\o_motor_inf.paa";
					class Unit0
					{
						side = 1;
						vehicle = "ACM_XIPH_Iltis_Milan";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Unit1
					{
						side = 1;
						vehicle = "XIPH_Soldier_AT";
						rank = "CORPORAL";
						position[] = {5,-5,0};
					};
					class Unit2
					{
						side = 1;
						vehicle = "XIPH_Soldier_AT";
						rank = "PRIVATE";
						position[] = {-5,-5,0};
					};
				};//XIPH_MotInf_AT
			};//Motorized
			class XIPH_supply
			{
				name = "Supply";
				class XIPH_Supply_Convoy
				{
					name = "Supply Convoy";
					side = 1;
					faction = "ACM_XIPH";
					icon = "\A3\ui_f\data\map\markers\nato\b_support.paa";
					class Vehicle1
					{
						side = 1;
						vehicle = "ACM_XIPH_U1300_cargo";
						rank = "SERGEANT";
						position[] = {0,0,0};
					};
					class Vehicle2: Vehicle1
					{
						vehicle = "ACM_XIPH_U1300_Flatbed";
						position[] = {0,-15,0};
					};
					class Vehicle3: Vehicle1
					{
						vehicle = "ACM_XIPH_U1300_repair";
						position[] = {0,-30,0};
					};
				};
			};
	};//ACM_Xiph

};//West
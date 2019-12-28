//*Debug Example*/call compile preProcessFileLineNumbers "Templates\EXAMP_Reb_DEV_PurpleChecker.sqf";
////////////////////////////////////
//         JNL Logistics         ///
////////////////////////////////////
//To find the model names use: `gettext (configfile >> "CfgVehicles" >> (typeOf cursorObject)  >> "model");`

//Adds new cargo vehicles.
["jnl_vehicleHardpoints",[
	//Quad Bike
    ["\A3\Soft_F\Quadbike_01\Quadbike_01_F.p3d", [
    	//type, location				locked seats
    	[0,		[-0.04,-1.7,-0.72],		[]],		//weapon node
    	[1,		[-0.04,-1.7,-0.72],		[]]			//cargo node
    ]],
	//Hatchback
    ["\A3\soft_f_gamma\Hatchback_01\Hatchback_01_F", [
    	//type, location				locked seats
    	[0,		[-0.04,-1.7,-0.72],		[]],		//weapon node
    	[1,		[-0.04,-1.7,-0.72],		[]]			//cargo node
    ]]
]] call A3A_fnc_logistics_append;
//Describes what the cargo vehicles can carry.
["jnl_allowedWeapons",[
	//Quad Bike
	["\A3\Soft_F\Quadbike_01\Quadbike_01_F.p3d", [
		"\A3\Static_F_Gamma\AT_01\AT_01.p3d",							//AT titan, facing to the right
		"\A3\Static_F_Gamma\GMG_01\GMG_01_high_F.p3d",					//Static GMG
		"\A3\Static_F_Gamma\HMG_01\HMG_01_high_F.p3d",					//Static HMG
		"rhsusf\addons\rhsusf_heavyweapons\TOW\TOW_static",				//RHS TOW launcher
		"\rhsusf\addons\rhsusf_heavyweapons\m2_mg",						//RHS M2HB machinegun
		"\rhsafrf\addons\rhs_heavyweapons\DShKM\DShKM_mg",				//RHS DShKM
		"\rhsafrf\addons\rhs_heavyweapons\mg\bis_kord\KORD_6u16sp",		//RHS Kord
		"\rhsafrf\addons\rhs_heavyweapons\kornet\kornet.p3d",			//RHS kornet, facing to the right
		"\rhsafrf\addons\rhs_heavyweapons\spg9\spg9.p3d",				//RHS SPG-9, facing 75 degrees to the left
		"rhsafrf\addons\rhs_heavyweapons\igla\igla_AA_pod"				//RHS double Igla launcher
	]],
	//Hatchback
	["\A3\soft_f_gamma\Hatchback_01\Hatchback_01_F", [
		"\A3\Static_F_Gamma\AT_01\AT_01.p3d",							//AT titan, facing to the right
		"\A3\Static_F_Gamma\GMG_01\GMG_01_high_F.p3d",					//Static GMG
		"\A3\Static_F_Gamma\HMG_01\HMG_01_high_F.p3d",					//Static HMG
		"rhsusf\addons\rhsusf_heavyweapons\TOW\TOW_static",				//RHS TOW launcher
		"\rhsusf\addons\rhsusf_heavyweapons\m2_mg",						//RHS M2HB machinegun
		"\rhsafrf\addons\rhs_heavyweapons\DShKM\DShKM_mg",				//RHS DShKM
		"\rhsafrf\addons\rhs_heavyweapons\mg\bis_kord\KORD_6u16sp",		//RHS Kord
		"\rhsafrf\addons\rhs_heavyweapons\kornet\kornet.p3d",			//RHS kornet, facing to the right
		"\rhsafrf\addons\rhs_heavyweapons\spg9\spg9.p3d",				//RHS SPG-9, facing 75 degrees to the left
		"rhsafrf\addons\rhs_heavyweapons\igla\igla_AA_pod"				//RHS double Igla launcher
	]]
]] call A3A_fnc_logistics_append;
//Adds new cargo; NOTE: The objects will have to be set-up:
//cursorObject call jn_fnc_logistics_addAction;
["jnl_attachmentOffset",[
	//weapons														//location				//rotation				//type 	//discription
	["\A3\Static_F_Gamma\AT_01\WorldEat",							[-0.5, 0.0, 1.05],		[1, 0, 0],				0],		//AT titan, facing to the right [Example]
	//medium size crate												//location				//rotation				//type 	//discription
	["A3\Weapons_F\Ammoboxes\customOutpostCrate",					[0,0,0.85],				[1,0,0],				1]		//Vehicle ammo create [Example]
]] call A3A_fnc_logistics_append;
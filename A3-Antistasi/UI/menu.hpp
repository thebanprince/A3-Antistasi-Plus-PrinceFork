class RscTitles 
{
	class Default {
       idd = -1;
       fadein = 0;
       fadeout = 0;
       duration = 0;
    };
    class H8erHUD {
        idd = 745;
        movingEnable =  0;
        enableSimulation = 1;
        enableDisplay = 1;
        duration     =  10e10;
        fadein       =  0;
        fadeout      =  0;
        name = "H8erHUD";
		onLoad = "with uiNameSpace do { H8erHUD = _this select 0 }";
		class controls {
		    class structuredText {
                access = 0;
                type = 13;
                idc = 1001;
                style = 0x00;
                lineSpacing = 1;
				x = 0.103165 * safezoneW + safezoneX;
				y = 0.007996 * safezoneH + safezoneY;//0.757996
				w = 0.778208 * safezoneW;
				h = 0.0660106 * safezoneH;
                size = 0.055;//0.020
                colorBackground[] = {0,0,0,0};
                colorText[] = {0.34,0.33,0.33,0};//{1,1,1,1}
                text = "";
                font = "PuristaSemiBold";
				class Attributes {
					font = "PuristaSemiBold";
					color = "#C1C0BB";//"#FFFFFF";
					align = "CENTER";
					valign = "top";
					shadow = true;
					shadowColor = "#000000";
					underline = false;
					size = "4";//4
				};
            };
		};
	};
};

class startupMenu: SimpleMenuSmall 
{
	idd=-1;
	
	class Controls
	{
		class title: SimpleTitle
		{
			idc = -1;
			text = $STR_antistasi_dialogs_lps_frame_text;
		};

		class yesButton: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_generic_button_yes_text;
			tooltip = $STR_antistasi_dialogs_generic_button_yes_tooltip;
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) / 2 + 0.15;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.376])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.125])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.043])",0.9};
			action = "loadLastSave = true; closeDialog 0;";
		};
		
		class noButton: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_generic_button_no_text;
			tooltip = $STR_antistasi_dialogs_generic_button_no_tooltip;
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) / 2 + 0.15;
			action = "loadLastSave = false; closeDialog 0;";
		};
	};
};

class loadLastPersonalSaveMenu: SimpleMenuSmall 
{
	idd=-1;

	class Controls
	{
		class title: SimpleTitle
		{
			idc = -1;
			text = $STR_antistasi_dialogs_lps_frame_text;
		};

		class yesButton: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_generic_button_yes_text;
			tooltip = $STR_antistasi_dialogs_generic_button_yes_tooltip;
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) / 2 + 0.15;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.376])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.125])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.043])",0.9};
			action = "[true] call A3A_fnc_loadPreviousSession; closeDialog 0;";
		};
		
		class noButton: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_generic_button_no_text;
			tooltip = $STR_antistasi_dialogs_generic_button_no_tooltip;
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) / 2 + 0.15;
			action = "[false] call A3A_fnc_loadPreviousSession; closeDialog 0;";
		};
	};
};

class garrisonRecruit: SimpleMenuBig 
{
	idd = 100;
	
	onUnload = "";

	class Controls
	{
		class closeButton: RscCloseButton
		{
			idc = 103;
			x = 0.732 * safezoneW + safezoneX;
			y = 0;
			w = 0.02 * safezoneW;
			h = 0.02 * safezoneH;
			action = "closeDialog 0";
		};

		class title: SimpleTitle
		{
			idc = -1;
			text = $STR_antistasi_dialogs_garrison_recruit_frame_text;
		};

		class riflemanButton: SimpleButton
		{
			idc = 104;
			text = $STR_antistasi_dialogs_garrison_spawn_rifleman_text;
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.1;
			action = "[SDKMil] spawn A3A_fnc_garrisonAdd";
		};

		class autoriflemanButton: SimpleButton
		{
			idc = 105;
			text = $STR_antistasi_dialogs_garrison_spawn_autorifleman_text;
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.25;
			action = "[SDKMG] spawn A3A_fnc_garrisonAdd";
		};

		class medicButton: SimpleButton
		{
			idc = 126;
			text = $STR_antistasi_dialogs_garrison_spawn_medic_text;
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.4;
			action = "[SDKMedic] spawn A3A_fnc_garrisonAdd";
		};

		class squadleaderButton: SimpleButton
		{
			idc = 107;
			text = $STR_antistasi_dialogs_garrison_spawn_squad_lead_text;
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.55;
			action = "[SDKSL] spawn A3A_fnc_garrisonAdd";
		};
		
		class mortarButton: SimpleButton
		{
			idc = 108;
			text = $STR_antistasi_dialogs_garrison_spawn_mortar_text;
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.1;
			action = "[staticCrewTeamPlayer] spawn A3A_fnc_garrisonAdd";
		};

		class grenadierButton: SimpleButton
		{
			idc = 109;
			text = $STR_antistasi_dialogs_garrison_spawn_grenadier_text;
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.25;
			action = "[SDKGL] spawn A3A_fnc_garrisonAdd";
		};

		class sniperButton: SimpleButton
		{
			idc = 110;
			text = $STR_antistasi_dialogs_garrison_spawn_marksman_text;
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.4;
			action = "[SDKSniper] spawn A3A_fnc_garrisonAdd";
		};

		class atButton: SimpleButton
		{
			idc = 111;
			text = $STR_antistasi_dialogs_garrison_spawn_at_text;
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.55;
			action = "[SDKATman] spawn A3A_fnc_garrisonAdd";
		};
	};
};

class unitRecruit: SimpleMenuBig 
{
	idd=100;
	

	class Controls
	{
		class closeButton: RscCloseButton
		{
			idc = -1;
			x = 0.732 * safezoneW + safezoneX;
			y = 0;
			w = 0.02 * safezoneW;
			h = 0.02 * safezoneH;
			action = "closeDialog 0";
		};

		class title: SimpleTitle
		{
			idc = -1;
			text = $STR_antistasi_dialogs_unit_recruit_frame_text;
		};

		class riflemanButton: SimpleButton
		{
			idc = 104;
			text = $STR_antistasi_dialogs_unit_recruit_militiaman_text;
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.1;
			action = "[SDKMil] spawn A3A_fnc_reinfPlayer";
		};

		class autoriflemanButton: SimpleButton
		{
			idc = 105;
			text = $STR_antistasi_dialogs_unit_recruit_mg_text;
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.25;
			action = "[SDKMG] spawn A3A_fnc_reinfPlayer";
		};

		class medicButton: SimpleButton
		{
			idc = 126;
			text = $STR_antistasi_dialogs_unit_recruit_medic_text;
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.4;
			action = "[SDKMedic] spawn A3A_fnc_reinfPlayer";
		};

		class engineerButton: SimpleButton
		{
			idc = 107;
			text = $STR_antistasi_dialogs_unit_recruit_engineer_text;
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.55;
			action = "[SDKEng] spawn A3A_fnc_reinfPlayer";
		};
		
		class explButton: SimpleButton
		{
			idc = 108;
			text = $STR_antistasi_dialogs_unit_recruit_explosive_text;
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.1;
			action = "[SDKExp] spawn A3A_fnc_reinfPlayer";
		};

		class grenadierButton: SimpleButton
		{
			idc = 109;
			text = $STR_antistasi_dialogs_unit_recruit_grenadier_text;
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.25;
			action = "[SDKGL] spawn A3A_fnc_reinfPlayer";
		};

		class sniperButton: SimpleButton
		{
			idc = 110;
			text = $STR_antistasi_dialogs_unit_recruit_marksman_text;
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.4;
			action = "[SDKATman] spawn A3A_fnc_reinfPlayer";
		};

		class atButton: SimpleButton
		{
			idc = 111;
			text = $STR_antistasi_dialogs_unit_recruit_antitank_text;
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.55;
			action = "[SDKATman] spawn A3A_fnc_reinfPlayer";
		};
	};
};

class buyVehicle: SimpleMenuBig 
{
	idd = 100;
	

	class Controls
	{
		class closeButton: RscCloseButton
		{
			idc = 103;
			x = 0.732 * safezoneW + safezoneX;
			y = 0;
			w = 0.02 * safezoneW;
			h = 0.02 * safezoneH;
			action = "closeDialog 0; createDialog 'vehicleOption';";
		};

		class title: SimpleTitle
		{
			idc = -1;
			text = $STR_antistasi_dialogs_vehicle_purchase_military_text;
		};

		class quadButton: SimpleButton
		{
			idc = 104;
			text = $STR_antistasi_dialogs_dialog_vehicle_purchase_military_quad_text;
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.1;
			action = "closeDialog 0; nul = [vehSDKBike] spawn A3A_fnc_addFIAveh";
		};

		class atOffroadButton: SimpleButton
		{
			idc = 105;
			text = $STR_antistasi_dialogs_dialog_vehicle_purchase_military_at_offroad_text;
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.25;
			action = "closeDialog 0; [vehSDKAT] spawn A3A_fnc_addFIAveh;";
		};

		class truckButton: SimpleButton
		{
			idc = 126;
			text = $STR_antistasi_dialogs_dialog_vehicle_purchase_military_truck_text;
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.4;
			action = "closeDialog 0; [vehSDKTruck] spawn A3A_fnc_addFIAveh;";
		};

		class mgOffroadButton: SimpleButton
		{
			idc = 107;
			text = $STR_antistasi_dialogs_dialog_vehicle_purchase_military_a_offroad_text;
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.55;
			action = "closeDialog 0; [vehSDKLightArmed] spawn A3A_fnc_addFIAveh;";
		};
		
		class mgStaticButton: SimpleButton
		{
			idc = 108;
			text = $STR_antistasi_dialogs_dialog_vehicle_purchase_military_s_mg_text;
			tooltip = $STR_antistasi_dialogs_dialog_vehicle_purchase_military_s_mg_tooltip;
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.1;
			action = "closeDialog 0; [SDKMGStatic] spawn A3A_fnc_addFIAveh;";
		};

		class mortarStaticButton: SimpleButton
		{
			idc = 109;
			text = $STR_antistasi_dialogs_dialog_vehicle_purchase_military_s_mortar_text;
			tooltip = $STR_antistasi_dialogs_dialog_vehicle_purchase_military_s_mortar_tooltip;
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.25;
			action = "closeDialog 0; [SDKMortar] spawn A3A_fnc_addFIAveh;";
		};

		class atStaticButton: SimpleButton
		{
			idc = 110;
			text = $STR_antistasi_dialogs_dialog_vehicle_purchase_military_s_at_text;
			tooltip = $STR_antistasi_dialogs_dialog_vehicle_purchase_military_s_at_tooltip;
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.4;
			action = "closeDialog 0; [staticATteamPlayer] spawn A3A_fnc_addFIAveh;";
		};

		class aaStaticButton: SimpleButton
		{
			idc = 111;
			text = $STR_antistasi_dialogs_dialog_vehicle_purchase_military_s_aa_text;
			tooltip = $STR_antistasi_dialogs_dialog_vehicle_purchase_military_s_aa_tooltip;
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.55;
			action = "closeDialog 0; [staticAAteamPlayer] spawn A3A_fnc_addFIAveh;";
		};
	};
};

class civVehicle: SimpleMenuMedium
{
	idd = 100;
	

	class Controls
	{
		class closeButton: RscCloseButton
		{
			idc = 103;
			x = 0.732 * safezoneW + safezoneX;
			y = 0;
			w = 0.02 * safezoneW;
			h = 0.02 * safezoneH;
			action = "closeDialog 0; createDialog 'vehicleOption';";
		};

		class title: SimpleTitle
		{
			idc = -1;
			text = $STR_antistasi_dialogs_dialog_vehicle_purchase_civ_text;
		};

		class civCarButton: SimpleButton
		{
			idc = 104;
			text = $STR_antistasi_dialogs_dialog_vehicle_purchase_civ_offroad_text;
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.1;
			action = "closeDialog 0; nul = [civCar] spawn A3A_fnc_addFIAveh";
		};

		class civTruckButton: SimpleButton
		{
			idc = 105;
			text = $STR_antistasi_dialogs_dialog_vehicle_purchase_civ_truck_text;
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.1;
			action = "closeDialog 0; [civTruck] spawn A3A_fnc_addFIAveh;";
		};

		class civBoatButton: SimpleButton
		{
			idc = 106;
			text = $STR_antistasi_dialogs_dialog_vehicle_purchase_civ_boat_text;
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.25;
			action = "closeDialog 0; [civBoat] spawn A3A_fnc_addFIAveh;";
		};

		class civHeliButton: SimpleButton
		{
			idc = 107;
			text = $STR_antistasi_dialogs_dialog_vehicle_purchase_civ_heli_text;
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.25;
			action = "closeDialog 0; [civHeli] spawn A3A_fnc_addFIAveh;";
		};

		class civLooterButton: SimpleButton
		{
			idc = 108;
			text = $STR_antistasi_dialogs_dialog_vehicle_purchase_looter_truck_text;
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.4;
			action = "closeDialog 0; [civLooter] spawn A3A_fnc_addFIAveh;";
		};
	};
};

class missionMenu: SimpleMenuMedium
{
	idd = 100;
	
	class Controls
	{
		class closeButton: RscCloseButton
		{
			idc = -1;
			x = 0.732 * safezoneW + safezoneX;
			y = 0;
			w = 0.02 * safezoneW;
			h = 0.02 * safezoneH;
			action = "closeDialog 0;";
		};

		class title: SimpleTitle
		{
			idc = -1;
			text = $STR_antistasi_dialogs_available_missions_frame_text;
		};

		class asButton: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_assassination_text;
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.1;
			action = "closeDialog 0;if (([player] call A3A_fnc_isMember) or (not(isPlayer theBoss))) then {[""AS"", clientOwner] remoteExec [""A3A_fnc_missionRequest"", 2]} else {[""Mission Request"", ""Only Player Commander has access to this function""] call A3A_fnc_customHint;};";
		};

		class convoyButton: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_convoy_text;
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.1;
			action = "closeDialog 0;if (([player] call A3A_fnc_isMember) or (not(isPlayer theBoss))) then {[""CONVOY"", clientOwner] remoteExec [""A3A_fnc_missionRequest"", 2]} else {[""Mission Request"", ""Only Player Commander has access to this function""] call A3A_fnc_customHint;};";
		};

		class destroyButton: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_destroy_text;
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.25;
			action = "closeDialog 0;if (([player] call A3A_fnc_isMember) or (not(isPlayer theBoss))) then {[""DES"", clientOwner] remoteExec [""A3A_fnc_missionRequest"", 2]} else {[""Mission Request"", ""Only Player Commander has access to this function""] call A3A_fnc_customHint;};";
		};

		class logButton: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_logistics_text;
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.25;
			action = "closeDialog 0;if (([player] call A3A_fnc_isMember) or (not(isPlayer theBoss))) then {[""LOG"", clientOwner] remoteExec [""A3A_fnc_missionRequest"", 2]} else {[""Mission Request"", ""Only Player Commander has access to this function""] call A3A_fnc_customHint;};";
		};

		class resButton: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_rescue_text;
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.4;
			action = "closeDialog 0;if (([player] call A3A_fnc_isMember) or (not(isPlayer theBoss))) then {[""RES"", clientOwner] remoteExec [""A3A_fnc_missionRequest"", 2]} else {[""Mission Request"", ""Only Player Commander has access to this function""] call A3A_fnc_customHint;};";
		};

		class conButton: SimpleButton
		{
			idc = -1;
			text = $STR_antistasi_dialogs_conquest_text;
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.4;
			action = "closeDialog 0;if (([player] call A3A_fnc_isMember) or (not(isPlayer theBoss))) then {[""CON"", clientOwner] remoteExec [""A3A_fnc_missionRequest"", 2]} else {[""Mission Request"", ""Only Player Commander has access to this function""] call A3A_fnc_customHint;};";
		};
	};
};

class radioComm: SimpleMenuBigger
{
	idd=100;

	class Controls
	{
		class closeButton: RscCloseButton
		{
			idc = -1;
			x = 0.732 * safezoneW + safezoneX;
			y = 0;
			w = 0.02 * safezoneW;
			h = 0.02 * safezoneH;
			action = "closeDialog 0";
		};

		class title: SimpleTitle
		{
			idc = -1;
			text = $STR_antistasi_dialogs_battle_options_frame_text;
		};

		class l1Button: SimpleButton
		{
			idc = -1;
			text = "Fast Travel";
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.1;
			tooltip = "Teleport your squad or a HC selected squad to a friendly zone depending on several factors";
			action = "closeDialog 0; [] spawn A3A_fnc_fastTravelRadio;";
		};

		class l2Button: SimpleButton
		{
			idc = 105;
			text = "Undercover ON";
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.25;
			tooltip = "Become Undercover if you match the requirements. Enemy AI won't attack you until they discover you.";
			action = "closeDialog 0; [] spawn A3A_fnc_goUndercover";
		};

		class l3Button: SimpleButton
		{
			idc = -1;
			text = "Garage Vehicle";
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.4;
			tooltip = "Vehicle or Static gun you're looking at will be garaged, interact with Flag to retrieve";
			action = "closeDialog 0; if ([player] call A3A_fnc_isMember) then {createDialog ""garageCheck""} else {nul = [false] call A3A_fnc_garageVehicle};";
		};

		class l4Button: SimpleButton
		{
			idc = -1;
			text = "AI Management";
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.55;
			tooltip = "Several AI options";
			action = "if (player == leader group player) then {closeDialog 0;nul = createDialog ""aiManagement""} else {[""AI Management"", ""Only group leaders may access to this option""] call A3A_fnc_customHint;};";
		};

		class l5Button: SimpleButton
		{
			idc = -1;
			text = "Unflip Vehicle";
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.7;
			tooltip = "Unflips the vehicle at cursor/crosshair. Requires 4 people to successfully perform, heavy vehicles requires repair truck in proximity.";
			action = "closeDialog 0; [] call SCRT_fnc_common_unflipVehicle";
		};
		
		class r1Button: SimpleButton
		{
			idc = -1;
			text = "Player and Money";
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.1;
			tooltip = "Look at some player and interact with him";
			action = "closeDialog 0; createDialog 'playerMoney';";
		};

		class r2Button: SimpleButton
		{
			idc = -1;
			text = "Construction";
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.25;
			tooltip = "Construct in the spot where you are a selected building facing this direction.";
			action = "closeDialog 0; [] call SCRT_fnc_ui_createConstructionMenu;";
		};

		class r3Button: SimpleButton
		{
			idc = -1;
			text = "Unlock Vehicle";
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.4;
			tooltip = "Allow other groups to mount this vehicle";
			action = "closeDialog 0;[] call A3A_fnc_unlockVehicle";
		};

		class r4Button: SimpleButton
		{
			idc = -1;
			text = "Commander";
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.55;
			tooltip = "Open commander options";
			action = "closeDialog 0; nul = createDialog ""commanderComm"";";
		};

		class r5Button: SimpleButton
		{
			idc = -1;
			text = "Move Static Weapon";
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.7;
			tooltip = "Grants the ability to move static weapon at cursor/crosshair.";
			action = "closeDialog 0; [] spawn SCRT_fnc_common_moveStatic;";
		};
	};
};

class vehQuery: SimpleMenuSmall
{
	idd=100;

	class Controls
	{
		class title: SimpleTitle
		{
			idc = -1;
			text = $STR_antistasi_dialogs_add_vehicle_to_squad_frame_text;
		};

		class yesButton: SimpleButton
		{
			idc = 104;
			text = $STR_antistasi_dialogs_generic_button_yes_text;
			tooltip = $STR_antistasi_dialogs_generic_button_yes_tooltip;
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) / 2 + 0.15;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.376])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.125])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.043])",0.9};
			action = "closeDialog 0; vehQuery = true;";
		};
		
		class noButton: SimpleButton
		{
			idc = 105;
			text = $STR_antistasi_dialogs_generic_button_no_text;
			tooltip = $STR_antistasi_dialogs_generic_button_no_tooltip;
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) / 2 + 0.15;
			action = "closeDialog 0; vehQuery = nil;";
		};
	};
};

class aiManagement: SimpleMenuBigger 
{
	idd = -1;

	class Controls
	{
		class closeButton: RscCloseButton
		{
			idc = 103;
			x = 0.732 * safezoneW + safezoneX;
			y = 0;
			w = 0.02 * safezoneW;
			h = 0.02 * safezoneH;
			action = "closeDialog 0; createDialog 'radioComm';";
		};

		class title: SimpleTitle
		{
			idc = -1;
			text = $STR_antistasi_dialogs_ai_management_frame_text;
		};

		class l1Button: SimpleButton
		{
			idc = -1;
			text = "Temp. AI Control";
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.1;
			tooltip = "Take personal control of the selected squad member or HC squad leader and be able to perform any kind of actions for 60 seconds. Control state will be cancelled if the player or the controlled unit receives any kind of damage";
			action = "closeDialog 0; if ((count groupselectedUnits player > 0) and (count hcSelected player > 0)) exitWith {[""AI Control"", ""You must select from HC or Squad Bars, not both""] call A3A_fnc_customHint;}; if (count groupselectedUnits player == 1) then {nul = [groupselectedUnits player] execVM ""REINF\controlunit.sqf""}; if (count hcSelected player == 1) then {nul = [hcSelected player] execVM ""REINF\controlHCsquad.sqf"";};";
		};

		class l2Button: SimpleButton
		{
			idc = -1;
			text = "Auto Heal";
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.25;
			tooltip = "AI squad mates will heal proactively each other";
			action = "if (autoHeal) then {autoHeal = false; [""AI Auto Heal"", ""Auto Healing disabled""] call A3A_fnc_customHint;} else {autoHeal = true; [""AI Auto Heal"", ""Auto Heal enabled""] call A3A_fnc_customHint; nul = [] spawn A3A_fnc_autoHealFnc}";
		};

		class l3Button: SimpleButton
		{
			idc = -1;
			text = "Garrison Units / Squads";
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.4;
			tooltip = "Adds selected units or squads to a map selected garrison";
			action = "closeDialog 0;if (count groupselectedUnits player > 0) then {nul = [groupselectedUnits player] execVM ""REINF\addToGarrison.sqf""} else {if (count (hcSelected player) > 0) then {nul = [hcSelected player] execVM ""REINF\addToGarrison.sqf""}}; if ((count groupselectedUnits player == 0) and (count hcSelected player == 0)) then {[""Garrison"", ""No units or squads selected""] call A3A_fnc_customHint;}";
		};

		class l4Button: SimpleButton
		{
			idc = -1;
			text = "Dismiss Units / Squad";
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.55;
			tooltip = "Dimiss selected units or squads, recovering it's cost to the proper resource pool";
			action = "closeDialog 0;if (count groupselectedUnits player > 0) then {nul = [groupselectedUnits player] execVM ""REINF\dismissPlayerGroup.sqf""} else {if (count (hcSelected player) > 0) then {nul = [hcSelected player] execVM ""REINF\dismissSquad.sqf""}}; if ((count groupselectedUnits player == 0) and (count hcSelected player == 0)) then {[""Dismiss Squad"", ""No units or squads selected""] call A3A_fnc_customHint;}";
		};

		class l5Button: SimpleButton
		{
			idc = -1;
			text = "Artillery Support Menu";
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.7;
			tooltip = "Opens mortar barrage menu that allows player to set artillery target for immediate strike.";
			action = "closeDialog 0; [] spawn A3A_fnc_artySupport;";
		};
		
		class r1Button: SimpleButton
		{
			idc = -1;
			text = "Auto Rearm \ Loot";
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.1;
			tooltip = "AI will search for better weapons, vests, helmets etc. If they are in a vehicle, they will just store what they scavenge in the vehicle. If not, they will equip them";
			action = "closeDialog 0; if (count groupselectedUnits player == 0) then {nul = (units group player) spawn A3A_fnc_rearmCall} else {nul = (groupselectedUnits player) spawn A3A_fnc_rearmCall};";
		};

		class r2Button: SimpleButton
		{
			idc = -1;
			text = "Squad SITREP";
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.25;
			tooltip = "Recover info about a HC squad status";
			action = "[""stats""] call A3A_fnc_vehStats;";
		};

		class r3Button: SimpleButton
		{
			idc = -1;
			text = "Squad Add Vehicle";
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.4;
			tooltip = "Look at some vehicle and assign it to the selected squad for it's use";
			action = "closeDialog 0;[] call A3A_fnc_addSquadVeh;";
		};

		class r4Button: SimpleButton
		{
			idc = -1;
			text = "Mount / Dismount";
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.55;
			tooltip = "Force squad to mount or dismount their assigned vehicle";
			action = "[""mount""] call A3A_fnc_vehStats";
		};
	};
};

class commanderComm: SimpleMenuBigger
{
	idd = -1;

	class Controls
	{
		class closeButton: RscCloseButton
		{
			idc = -1;
			x = 0.732 * safezoneW + safezoneX;
			y = 0;
			w = 0.02 * safezoneW;
			h = 0.02 * safezoneH;
			action = "closeDialog 0; createDialog 'radioComm';";
		};

		class title: SimpleTitle
		{
			idc = -1;
			text = $STR_antistasi_dialogs_commander_battle_options_frame_text;
		};

		class l1Button: SimpleButton
		{
			idc = -1;
			text = "Recruit Squad";
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.1;
			tooltip = "Recruit new squads and manage them with the HC Module (CTRL + SPACE)";
			action = "closeDialog 0;if (player == theBoss) then { [] spawn A3A_fnc_squadRecruit; } else {[""Recruit Squad"", ""Only Player Commander has access to this function""] call A3A_fnc_customHint;};";
		};

		class l2Button: SimpleButton
		{
			idc = -1;
			text = "Assign Loot Vehicle";
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.25;
			tooltip = "Adds Loot To Vehicle action to vehicle. Costs 1000€.";
			action = "closeDialog 0; [] call SCRT_fnc_loot_assignLootVehicle;";
		};

		class l3Button: SimpleButton
		{
			idc = -1;
			text = "Share Faction Money";
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.4;
			tooltip = "Shares faction money with server members.";
			action = "closeDialog 0; [] call SCRT_fnc_common_shareFactionMoneyWithMembers";
		};

		class l4Button: SimpleButton
		{
			idc = -1;
			text = "Resign / Eligible";
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.55;
			tooltip = "Step down from commander or toggle eligibility";
			action = "if (isMultiplayer) then {closedialog 0;[player, cursorTarget] remoteExec [""A3A_fnc_theBossToggleEligibility"", 2]} else {[""Resign Commander"", ""This feature is MP Only""] call A3A_fnc_customHint;};";
		};

		class l5Button: SimpleButton
		{
			idc = -1;
			text = "Open Commander Menu";
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.7;
			tooltip = "Opens commander menu. Also it can be accessed via O key.";
			action = "closeDialog 0; closeDialog 0; [] call SCRT_fnc_ui_toggleCommanderMenu;";
		};
		
		class r1Button: SimpleButton
		{
			idc = -1;
			text = "Add to Air Support";
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.1;
			tooltip = "Gain Airstrike points giving this vehicle to the faction Air pool.";
			action = "closeDialog 0; [] call A3A_fnc_addBombRun";
		};

		class r2Button: SimpleButton
		{
			idc = -1;
			text = "Clean Garbage";
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.25;
			tooltip = "Cleans several things in game. Use with caution as it freezes the mission";
			action = "if (player == theBoss) then {closedialog 0;[] remoteExec [""A3A_fnc_garbageCleaner"",2]} else {[""Garbage Cleaner"", ""Only Player Commander has access to this function""] call A3A_fnc_customHint;};";
		};

		class r3Button: SimpleButton
		{
			idc = -1;
			text = "Faction Garage";
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.4;
			tooltip = "Look at a vehicle and garage it into faction garage (shared among commanders)";
			action = "closeDialog 0; [true] call A3A_fnc_garageVehicle;";
		};

		class r4Button: SimpleButton
		{
			idc = -1;
			text = "Sell Vehicle";
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.55;
			tooltip = "Look at a vehicle and sell it for money";
			action = "if (player == theBoss) then {closeDialog 0; [] call A3A_fnc_sellVehicle} else {[""Sell Vehicle"", ""Only the Commander can sell vehicles""] call A3A_fnc_customHint;};";
		};
	};
};

class constructionMenu: SimpleMenuSmall
{
	idd = 80000;
	
	class Controls
	{
		class closeButton: RscCloseButton
		{
			idc = -1;
			x = 0.732 * safezoneW + safezoneX;
			y = 0;
			w = 0.02 * safezoneW;
			h = 0.02 * safezoneH;
			action = "closeDialog 0;";
		};

		class title: SimpleTitle
		{
			idc = -1;
			text = $STR_antistasi_dialogs_construction_menu_frame_text;
		};

		class buildTypeComboBox: SimpleComboBox
		{
			idc = 505;
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) / 2 + 0.15;
			w = "22 * pixelGridNoUIScale * pixelW";
			h = "2 * pixelGridNoUIScale * pixelH";
			onLBSelChanged = "[] call SCRT_fnc_ui_setBuildTypeCostText;";
		};

		class costsText: SimpleText
		{
			idc = 510;
			text = "Cost";
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) / 2 + 0.25;
			w = "22 * pixelGridNoUIScale * pixelW";	
			h = "1.5 * pixelGridNoUIScale * pixelH";
		};

		class r2Button: SimpleButton
		{
			idc = -1;
			text = "Build";
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) / 2 + 0.15;
			tooltip = "Allows engineer to select construction type, it's position and then build it. Use arrow keys to switch construction type.";
			action = "[] call SCRT_fnc_ui_prepareConstructionBuild;";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.376])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.125])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.043])",0.9};
		};
	};
};

class squadRecruit: SimpleMenuBig
{
	idd = 100;

	class Controls
	{
		class closeButton: RscCloseButton
		{
			idc = 103;
			x = 0.732 * safezoneW + safezoneX;
			y = 0;
			w = 0.02 * safezoneW;
			h = 0.02 * safezoneH;
			action = "closeDialog 0; createDialog 'radioComm';";
		};

		class title: SimpleTitle
		{
			idc = -1;
			text = $STR_antistasi_dialogs_squad_recruitment_menu_frame_text;
		};

		class l1Button: SimpleButton
		{
			idc = 104;
			text = "Recruit Inf. Squad";
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.1;
			action = "closeDialog 0; [] spawn A3A_fnc_squadOptions;";
		};

		class l2Button: SimpleButton
		{
			idc = 106;
			text = "Recruit AT Team";
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.25;
			action = "closeDialog 0;[groupsSDKAT] spawn A3A_fnc_addFIAsquadHC";
		};

		class l3Button: SimpleButton
		{
			idc = 107;
			text = "Recruit Sniper Team";
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.4;
			action = "closeDialog 0;[groupsSDKSniper] spawn A3A_fnc_addFIAsquadHC";
		};

		class l4Button: SimpleButton
		{
			idc = 108;
			text = "Recruit MG Team";
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.55;
			action = "closeDialog 0;[SDKMGStatic] spawn A3A_fnc_addFIAsquadHC";
		};
		
		class r1Button: SimpleButton
		{
			idc = 105;
			text = "Recruit Inf. Team";
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.1;
			action = "closeDialog 0;[groupsSDKmid] spawn A3A_fnc_addFIAsquadHC";
		};

		class r2Button: SimpleButton
		{
			idc = 109;
			text = "Recruit AT Car";
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.25;
			action = "closeDialog 0;[vehSDKAT] spawn A3A_fnc_addFIAsquadHC";
		};

		class r3Button: SimpleButton
		{
			idc = 110;
			text = "Recruit AA Truck";
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.4;
			action = "closeDialog 0;[staticAAteamPlayer] spawn A3A_fnc_addFIAsquadHC";
		};

		class r4Button: SimpleButton
		{
			idc = 111;
			text = "Recruit Mortar Team";
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.55;
			action = "closeDialog 0;[SDKMortar] spawn A3A_fnc_addFIAsquadHC";
		};
	};
};

class squadOptions: SimpleMenuSmall
{
	idd = 100;

	class Controls
	{
		class closeButton: RscCloseButton
		{
			idc = -1;
			x = 0.732 * safezoneW + safezoneX;
			y = 0;
			w = 0.02 * safezoneW;
			h = 0.02 * safezoneH;
			action = "closeDialog 0; createDialog 'squadRecruit';";
		};

		class title: SimpleTitle
		{
			idc = -1;
			text = $STR_antistasi_dialogs_squad_recruitment_menu_frame_text;
		};

		class l1Button: SimpleButton
		{
			idc = 104;
			text = "Normal Squad";
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.075;
			action = "closeDialog 0; [groupsSDKSquad] spawn A3A_fnc_addFIAsquadHC;";
		};

		class l2Button: SimpleButton
		{
			idc = 105;
			text = "Engineer Squad";
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.225;
			action = "closeDialog 0; [groupsSDKSquadEng] spawn A3A_fnc_addFIAsquadHC;";
		};
		
		class r1Button: SimpleButton
		{
			idc = 106;
			text = "MG Squad";
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.075;
			action = "closeDialog 0;[groupsSDKSquadSupp,""MG""] spawn A3A_fnc_addFIAsquadHC";
		};

		class r2Button: SimpleButton
		{
			idc = 107;
			text = "Mortar Squad";
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.225;
			action = "closeDialog 0; [groupsSDKSquadSupp,""Mortar""] spawn A3A_fnc_addFIAsquadHC;";
		};
	};
};

class playerMoney: SimpleMenuSmall
{
	idd = -1;

	class Controls
	{
		class closeButton: RscCloseButton
		{
			idc = -1;
			x = 0.732 * safezoneW + safezoneX;
			y = 0;
			w = 0.02 * safezoneW;
			h = 0.02 * safezoneH;
			action = "closeDialog 0; createDialog 'radioComm'";
		};

		class title: SimpleTitle
		{
			idc = -1;
			text = $STR_antistasi_dialogs_squad_money_player_interaction_menu_frame_text;
		};

		class l1Button: SimpleButton
		{
			idc = 104;
			text = "Add Server Member";
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.075;
			tooltip = "Use this option to add the player which you are currently looking to the member's list";
			action = "if (isMultiplayer) then {closeDialog 0;nul = [""add""] call A3A_fnc_memberAdd;} else {[""Membership"", ""This function is MP only""] call A3A_fnc_customHint;};";
		};

		class l2Button: SimpleButton
		{
			idc = 105;
			text = "Remove Server Member";
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.225;
			tooltip = "Use this option to remove the player which you are currently looking to the member's list";
			action = "if (isMultiplayer) then {closeDialog 0;nul = [""remove""] call A3A_fnc_memberAdd;} else {[""Membership"", ""This function is MP only""] call A3A_fnc_customHint;};";
		};
		
		class r1Button: SimpleButton
		{
			idc = 106;
			text = "Donate 100 € to player";
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.075;
			tooltip = "Donates your personal money to player you're looking at.";
			action = "[true] call A3A_fnc_donateMoney;";
		};

		class r2Button: SimpleButton
		{
			idc = 308;
			text = "Donate 100 € to Faction";
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.225;
			tooltip = "Donates your personal money to rebel faction. It will increase your prestige among rebels.";
			action = "[] call A3A_fnc_donateMoney;";
		};
	};
};

class garageCheck: SimpleMenuSmall 
{
	idd=-1;

	class Controls
	{
		class closeButton: RscCloseButton
		{
			idc = -1;
			x = 0.732 * safezoneW + safezoneX;
			y = 0;
			w = 0.02 * safezoneW;
			h = 0.02 * safezoneH;
			action = "closeDialog 0; createDialog 'radioComm'";
		};

		class title: SimpleTitle
		{
			idc = -1;
			text = $STR_antistasi_dialogs_lps_frame_text;
		};

		class l1Button: SimpleButton
		{
			idc = -1;
			text = "Personal Garage";
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) / 2 + 0.15;
			action = "closeDialog 0;[false] call A3A_fnc_garageVehicle;";
		};
		
		class r1Button: SimpleButton
		{
			idc = -1;
			text = "Faction Garage";
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) / 2 + 0.15;
			action = "closeDialog 0; [true] call A3A_fnc_garageVehicle;";
		};
	};
};

class mortarType: SimpleMenuSmall 
{
	idd=-1;

	class Controls
	{
		class closeButton: RscCloseButton
		{
			idc = -1;
			x = 0.732 * safezoneW + safezoneX;
			y = 0;
			w = 0.02 * safezoneW;
			h = 0.02 * safezoneH;
			action = "closeDialog 0; createDialog 'radioComm'";
		};

		class title: SimpleTitle
		{
			idc = -1;
			text = "Select Mortar Ammo";
		};

		class l1Button: SimpleButton
		{
			idc = -1;
			text = "HE";
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) / 2 + 0.15;
			action = "closeDialog 0; typeAmmunition = SDKMortarHEMag;";
		};
		
		class r1Button: SimpleButton
		{
			idc = -1;
			text = "Smoke";
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) / 2 + 0.15;
			action = "closeDialog 0; typeAmmunition = SDKMortarSmokeMag;";
		};
	};
};

class roundsNumber: SimpleMenuBig
{
	idd = -1;

	class Controls
	{
		class title: SimpleTitle
		{
			idc = -1;
			text = $STR_antistasi_dialogs_squad_recruitment_menu_frame_text;
		};

		class l1Button: SimpleButton
		{
			idc = 104;
			text = "1";
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.1;
			action = "closeDialog 0;roundsX = 1;";
		};

		class l2Button: SimpleButton
		{
			idc = 106;
			text = "3";
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.25;
			action = "closeDialog 0;roundsX = 3;";
		};

		class l3Button: SimpleButton
		{
			idc = 107;
			text = "5";
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.4;
			action = "closeDialog 0;roundsX = 5;";
		};

		class l4Button: SimpleButton
		{
			idc = 108;
			text = "7";
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.55;
			action = "closeDialog 0;roundsX = 7;";
		};
		
		class r1Button: SimpleButton
		{
			idc = 105;
			text = "2";
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.1;
			action = "closeDialog 0;roundsX = 2;";
		};

		class r2Button: SimpleButton
		{
			idc = 109;
			text = "4";
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.25;
			action = "closeDialog 0;roundsX = 4;";
		};

		class r3Button: SimpleButton
		{
			idc = 110;
			text = "6";
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.4;
			action = "closeDialog 0;roundsX = 6;";
		};

		class r4Button: SimpleButton
		{
			idc = 111;
			text = "8";
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.55;
			action = "closeDialog 0;roundsX = 8;";
		};
	};
};

class strikeType: SimpleMenuSmall 
{
	idd=-1;

	class Controls
	{
		class title: SimpleTitle
		{
			idc = -1;
			text = "Select type of strike";
		};

		class l1Button: SimpleButton
		{
			idc = -1;
			text = "Single Point Strike";
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) / 2 + 0.15;
			action = "closeDialog 0;typeArty = ""NORMAL"";";
		};
		
		class r1Button: SimpleButton
		{
			idc = -1;
			text = "Barrage Strike";
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) / 2 + 0.15;
			action = "closeDialog 0; typeArty = ""BARRAGE"";";
		};
	};
};

class NATOPlayer: SimpleMenuSmall 
{
	idd=-1;

	class Controls
	{
		class closeButton: RscCloseButton
		{
			idc = -1;
			x = 0.732 * safezoneW + safezoneX;
			y = 0;
			w = 0.02 * safezoneW;
			h = 0.02 * safezoneH;
			action = "closeDialog 0;";
		};

		class title: SimpleTitle
		{
			idc = -1;
			text = "SpecOp Menu";
		};

		class l1Button: SimpleButton
		{
			idc = -1;
			text = "Quadbike";
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) / 2 + 0.15;
			action = "closeDialog 0;[] call A3A_fnc_NATOQuadbike";
		};
		
		class r1Button: SimpleButton
		{
			idc = -1;
			text = "Fast Travel";
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) / 2 + 0.15;
			action = "closeDialog 0;[] spawn A3A_fnc_NATOFT";
		};
	};
};

class diffMenu: SimpleMenuSmall 
{
	idd = -1;

	class Controls
	{
		class title: SimpleTitle
		{
			idc = -1;
			text = "Choose Difficulty";
		};

		class l1Button: SimpleButton
		{
			idc = -1;
			text = "Easy";
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.075;
			action = "skillMult = 1; closeDialog 0;";
		};

		class l2Button: SimpleButton
		{
			idc = -1;
			text = "Hard";
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.225;
			action = "skillMult = 3; closeDialog 0;";
		};
		
		class r1Button: SimpleButton
		{
			idc = -1;
			text = "Normal";
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.075;
			action = "skillMult = 1; closeDialog 0;";
		};
	};
};

class gameModeMenu: SimpleMenuSmall
{
	idd = 100;

	class Controls
	{
		class closeButton: RscCloseButton
		{
			idc = -1;
			x = 0.732 * safezoneW + safezoneX;
			y = 0;
			w = 0.02 * safezoneW;
			h = 0.02 * safezoneH;
			action = "closeDialog 0; createDialog 'radioComm'";
		};

		class title: SimpleTitle
		{
			idc = -1;
			text = "Select your Game Mode";
		};

		class l1Button: SimpleButton
		{
			idc = 104;
			text = "Reb vs Gov vs Inv";
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.075;
			action = "closeDialog 0;gameMode = 1;";
		};

		class l2Button: SimpleButton
		{
			idc = 105;
			text = "Rev vs Gov & Inv";
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.225;
			action = "closeDialog 0;gameMode = 2;";
		};
		
		class r1Button: SimpleButton
		{
			idc = 106;
			text = "Reb vs Gov";
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.075;
			action = "closeDialog 0;gameMode = 3;";
		};

		class r2Button: SimpleButton
		{
			idc = 107;
			text = "Reb vs Inv";
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) + 0.225;
			action = "closeDialog 0;gameMode = 4";
		};
	};
};

class vehicleBlackMarketMenu: SimpleMenuSmall
{
	idd = 90000;
	
	class Controls
	{
		class closeButton: RscCloseButton
		{
			idc = -1;
			x = 0.732 * safezoneW + safezoneX;
			y = 0;
			w = 0.02 * safezoneW;
			h = 0.02 * safezoneH;
			action = "closeDialog 0;";
		};

		class title: SimpleTitle
		{
			idc = -1;
			text = $STR_trader_black_market_title;
		};

		class vehicleTypeComboBox: SimpleComboBox
		{
			idc = 1015;
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) / 2 + 0.075;
			w = "22 * pixelGridNoUIScale * pixelW";
			h = "2 * pixelGridNoUIScale * pixelH";
			onLBSelChanged = "[] call SCRT_fnc_ui_setAvailableVehicleTypes;";
		};

		class vehicleComboBox: SimpleComboBox
		{
			idc = 1005;
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) / 2 + 0.2;
			w = "22 * pixelGridNoUIScale * pixelW";
			h = "2 * pixelGridNoUIScale * pixelH";
			onLBSelChanged = "[90000] call SCRT_fnc_ui_setVehicleCostText;";
		};

		class costsText: SimpleText
		{
			idc = 1010;
			text = "Cost";
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) / 2 + 0.275;
			w = "22 * pixelGridNoUIScale * pixelW";	
			h = "1.5 * pixelGridNoUIScale * pixelH";
		};

		class r2Button: SimpleButton
		{
			idc = -1;
			text = "Purchase";
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) / 2 + 0.2;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.376])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.125])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.043])",0.9};
			action = "[] call SCRT_fnc_trader_buyBlackMarketVehicle;";
		};
	};
};

class buyVehicleMenu: SimpleMenuSmall
{
	idd = 110000;
	
	class Controls
	{
		class closeButton: RscCloseButton
		{
			idc = -1;
			x = 0.732 * safezoneW + safezoneX;
			y = 0;
			w = 0.02 * safezoneW;
			h = 0.02 * safezoneH;
			action = "closeDialog 0;";
		};

		class title: SimpleTitle
		{
			idc = -1;
			text = $STR_antistasi_dialogs_buy_vehicle_frame_text;
		};

		class vehicleTypeComboBox: SimpleComboBox
		{
			idc = 715;
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) / 2 + 0.075;
			w = "22 * pixelGridNoUIScale * pixelW";
			h = "2 * pixelGridNoUIScale * pixelH";
			onLBSelChanged = "[] call SCRT_fnc_ui_setAvailableBuyVehicleTypes;";
		};

		class vehicleComboBox: SimpleComboBox
		{
			idc = 705;
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) / 2 + 0.2;
			w = "22 * pixelGridNoUIScale * pixelW";
			h = "2 * pixelGridNoUIScale * pixelH";
			onLBSelChanged = "[110000] call SCRT_fnc_ui_setVehicleCostText;";
		};

		class costsText: SimpleText
		{
			idc = 710;
			text = "Cost";
			x = (safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2))/2) / 2;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) / 2 + 0.275;
			w = "22 * pixelGridNoUIScale * pixelW";	
			h = "1.5 * pixelGridNoUIScale * pixelH";
		};

		class noteText: SimpleTextMt
		{
			idc = -1;
			text = $STR_antistasi_dialogs_buy_vehicle_note_text;
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) / 2 + 0.075;
			w = "22 * pixelGridNoUIScale * pixelW";	
			h = "3 * pixelGridNoUIScale * pixelH";
		};

		class r2Button: SimpleButton
		{
			idc = -1;
			text = "Purchase";
			x = safezoneX + (safezoneW - ((safezoneW / safezoneH) min 1.2)) + 0.0525;
			y = (safezoneY + (safezoneH - (((safezoneW / safezoneH) min 1.2) / 1.2))/2) / 2 + 0.2;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.376])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.125])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.043])",0.9};
			action = "[] call SCRT_fnc_ui_buyBuyVehicle;";
		};
	};
};
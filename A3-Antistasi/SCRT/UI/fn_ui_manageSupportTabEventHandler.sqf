params ["_mode"];


if(_mode == "ADD") then {
    [
        "supportMap",
        "onMapSingleClick",
        {
            if(!isNil "isSupportMarkerPlacingAvailable" && {isSupportMarkerPlacingAvailable}) exitWith {};

            playSound "readoutClick";

            if (isNil "supportMarkerOrigin") then {
                supportMarkerOrigin = createMarkerLocal ["BRStart", _pos];
                supportMarkerOrigin setMarkerShapeLocal "ICON";
                supportMarkerOrigin setMarkerTypeLocal "hd_destroy";

                switch (supportType) do {
                    case ("SUPPLY"): {
                        supportMarkerOrigin setMarkerColorLocal "ColorBlue";
                        supportMarkerOrigin setMarkerTextLocal "Supply Run Init";
                    };
                    case ("SMOKE");
                    case ("FLARE"): {
                        supportMarkerOrigin setMarkerColorLocal "ColorGrey";
                        supportMarkerOrigin setMarkerTextLocal "Barrage";
                    };
                    case ("STATIC_MG_AIRDROP"): {
                        supportMarkerOrigin setMarkerColorLocal "ColorBrown";
                        supportMarkerOrigin setMarkerTextLocal "HMG Airdrop Init";
                    };
                    case ("VEH_AIRDROP"): {
                        supportMarkerOrigin setMarkerColorLocal "ColorBrown";
                        supportMarkerOrigin setMarkerTextLocal "Light Vehicle Airdrop Init";
                    };
                    case ("RECON"): {
                        supportMarkerOrigin setMarkerColorLocal "ColorOrange";
                        supportMarkerOrigin setMarkerTextLocal "Recon Plane Init";
                    };
                    default {
                        supportMarkerOrigin setMarkerColorLocal "ColorRed";
                        supportMarkerOrigin setMarkerTextLocal "Bomb Run Init";
                    };
                };
            } else {
                if !(supportType in ["SMOKE", "FLARE"]) then {
                    supportMarkerDestination = createMarkerLocal ["BRFin", _pos];
                    supportMarkerDestination setMarkerShapeLocal "ICON";
                    supportMarkerDestination setMarkerTypeLocal "hd_destroy";

                    switch (supportType) do {
                        case ("SUPPLY"): {
                            supportMarkerDestination setMarkerColorLocal "ColorBlue";
                            supportMarkerDestination setMarkerTextLocal "Supply Run Exit";
                        };
                        case ("STATIC_MG_AIRDROP"): {
                            supportMarkerDestination setMarkerColorLocal "ColorBrown";
                            supportMarkerDestination setMarkerTextLocal "HMG Airdrop Exit";
                        };
                        case ("VEH_AIRDROP"): {
                            supportMarkerDestination setMarkerColorLocal "ColorBrown";
                            supportMarkerDestination setMarkerTextLocal "Light Vehicle Airdrop Exit";
                        };
                        case ("RECON"): {
                            supportMarkerDestination setMarkerColorLocal "ColorOrange";
                            supportMarkerDestination setMarkerTextLocal "Recon Plane Search Area";
                        };
                        default {
                            supportMarkerDestination setMarkerColorLocal "ColorRed";
                            supportMarkerDestination setMarkerTextLocal "Bomb Run Exit";
                        };
                    };
                } else {
                    deleteMarkerLocal supportMarkerDestination;
                };
            };
        },
        []
	] call BIS_fnc_addStackedEventHandler;
} else {
    ["supportMap", "onMapSingleClick"] call BIS_fnc_removeStackedEventHandler;
};
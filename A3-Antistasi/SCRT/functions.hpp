class SCRT 
{
    class Arsenal 
    {
		file = "SCRT\Arsenal";
        class arsenal_getSimilarWeapons {};
	};

    class Effect 
    {
		file = "SCRT\Effect";
        class effect_createBurningDebrisEffect {};
	};

    class Template 
    {
        file = "SCRT\Template";
        class template_selectTemplateGroup {};
        class template_selectBluforModTemplate {};
        class template_selectIndepModTemplate {};
        class template_setVanillaTemplate {};
        class template_setAegisTemplate {};
        class template_setRhsTemplate {};
        class template_setAuTemplate {};
        class template_setCupTemplate {};
        class template_set3cbTemplate {};
    };

    class Encounter 
    {
        file = "SCRT\Encounter";
        class encounter_gameEventCheckLoop {};
        class encounter_spawnPursuers {};
    };

	class Loot 
    {
		file = "SCRT\Loot";
        class loot_addLooterCapability {};
        class loot_gatherLoot {};
        class loot_addActionLoot {};
        class loot_removeActionLoot {};
        class loot_assignLootVehicle {};
	};

    class Unit 
    {
        file = "SCRT\Unit";
        class unit_getCurrentGroupNATOSentry {};
        class unit_getCurrentGroupNATOMid {};
        class unit_getCurrentGroupNATOSmall {};
        class unit_getCurrentGroupNATOAA {};
        class unit_getCurrentGroupNATOAT {};
        class unit_getCurrentNATOSquad {};
        class unit_getCurrentFIAPatrol {};
        class unit_getCurrentFIAMid {};
    };

    class Misc 
    {
        file = "SCRT\Misc";
        class misc_getMissionTitle {};
        class misc_getWorldName {};
        class misc_showDeniedActionHint {};
        class misc_orbitingCamera {};
        class misc_followCamera {};
        class misc_launcherCamera {};
        class misc_toggleLauncherCamEventHandler {};
    };

    class UI
    {
        file = "SCRT\UI";
        class ui_showDynamicTextMessage {};
        class ui_populateCommanderMenu {};
        class ui_populatePlayerMenu {};
        class ui_populateGameOptionsMenu {};
        class ui_populateHqMenu {};
        class ui_toggleMenuBlur {};
        class ui_updateSupportMenu {};
        class ui_changeTab {};
        class ui_manageSupportTabEventHandler {};
        class ui_hqTabEventHandler {};
        class ui_dispose {};
        class ui_clearSupport {};
        class ui_launchSupport {};
        class ui_setSupportCostText {};
        class ui_setOutpostCost {};
        class ui_setMinefieldCost {};
        class ui_switchButton {};
        class ui_getSwitchLookup {};
        class ui_showMessage {};
        class ui_setRebuildAssetMode {};
        class ui_establishOutpostEventHandler {};
        class ui_setEstablishOutpostMode {};
        class ui_setDisbandMode {};
        class ui_setRecruitMode {};
        class ui_setMinefieldMode {};
        class ui_disbandGarrisonEventHandler {};
        class ui_recruitGarrisonEventHandler {};
        class ui_minefieldEventHandler {};
        class ui_toggleCommanderMenu {};
        class ui_createConstructionMenu {};
        class ui_prepareConstructionBuild {};
        class ui_setBuildTypeCostText {};
        class ui_setAvailableVehicleTypes {};
        class ui_createVehicleBlackMarketMenu {};
        class ui_setVehicleCostText {};
        class ui_setTechnicalVehicleCostText {};
        class ui_buyTechnical {};
        class ui_createBuyVehicleMenu {};
        class ui_setAvailableBuyVehicleTypes {};
        class ui_getMarketLookup {};
        class ui_buyBuyVehicle {};
    };

    class Trader
    {
        file = "SCRT\Trader";
        class trader_prepareTraderQuest {};
        class trader_createTrader {};
        class trader_setTraderStock {};
        class trader_addVehicleMarketAction {};
        class trader_tryOpenVehicleMarketMenu {};
        class trader_removeUnlockedItemsFromStock {};
        class trader_createTraderTerminal {};
        class trader_buyBlackMarketVehicle {};
    };

    class Common 
    {
        file = "SCRT\Common";
        class common_attachLightSource {};
        class common_addRandomMoneyCargo {};
        class common_addRandomMoneyMagazine {};
        class common_spawnMoneyOnGround {};
        class common_set3dIcons {};
        class common_givePrisonerReleasePaycheck {};
        class common_getNearPlayers {};
        class common_selectRandomSite {};
        class common_unflipVehicle {};
        class common_shareFactionMoneyWithMembers {};
        class common_moveStatic {};
        class common_sinkShip {};
        class common_airdropCargo {};
        class common_supplyDrop {};
        class common_fillSupplyDrop {};
        class common_chemicalDamage {};
        class common_recon {};
        class common_reveal {};
    };

    class Outpost
    {
        file = "SCRT\Outpost";
        class outpost_createWatchpost {};
        class outpost_createWatchpostDistance {};
        class outpost_createRoadblock {};
        class outpost_createRoadblockDistance {};
        class outpost_createAa {};
        class outpost_createAaDistance {};
        class outpost_createAt {};
        class outpost_createAtDistance {};
    }

    class Quest
    {
        file = "SCRT\Quest";
        class quest_rollTask {};
    };

    class Support
    {
        file = "SCRT\Support";
        class support_planePayloadedRun {};
        class support_planeReconRun {};
        class support_chemicalBomb {};
        class support_flareBarrage {};
        class support_smokeBarrage {};
    };

    class Build
    {
        file = "SCRT\Build";
        class build_prepareAndStartConstruction {};
    }
};
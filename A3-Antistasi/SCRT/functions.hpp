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
        class misc_toggleMenuBlur {};
        class misc_getWorldName {};
        class misc_showDeniedActionHint {};
    };

    class Trader
    {
        file = "SCRT\Trader";
        class trader_prepareTraderQuest {};
        class trader_createTrader {};
        class trader_setTraderStock {};
        class trader_addVehicleMarketAction {};
        class trader_tryOpenVehicleMarketMenu {};
        class trader_pickFromVehiclePool {};
        class trader_removeUnlockedItemsFromStock {};
        class trader_addTraderActions {};
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
};
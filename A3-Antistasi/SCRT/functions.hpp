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
    };

    class Trader
    {
        file = "SCRT\Trader";
        class trader_prepareTraderQuest {};
        class trader_createTrader {};
        class trader_setTraderStock {};
        class trader_addVehicleMarketAction {};
        class trader_tryOpenVehicleMarketMenu {};
    };

    class Common 
    {
        file = "SCRT\Common";
        class common_attachLightSource {};
        class common_clearLocationFromTrees {};
        class common_addRandomMoneyCargo {};
        class common_addRandomMoneyMagazine {};
        class common_spawnMoneyOnGround {};
        class common_addClearLocationAction {};
        class common_set3dIcons {};
        class common_givePrisonerReleasePaycheck {};
        class common_getNearPlayers {};
        class common_selectRandomSite {};
    };

    class Quest
    {
        file = "SCRT\Quest";
        class quest_rollTask {};
    };
};
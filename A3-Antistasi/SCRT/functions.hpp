class SCRT 
{
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

    class Shop 
    {
        file = "SCRT\Shop";
        class shop_checkAvailability {};
        class shop_buyArmor {};
		class shop_buyHeavyWeapons {};
		class shop_buySupplies{};
		class shop_buyWeapons {};
    };

    class Misc 
    {
        file = "SCRT\Misc";
        class misc_getMissionTitle {};
        class misc_toggleMenuBlur {};
    }
};
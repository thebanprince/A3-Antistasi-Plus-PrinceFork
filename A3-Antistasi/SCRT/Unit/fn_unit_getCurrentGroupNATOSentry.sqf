/*
	author: Socrates
	description: Return current sentry tier if proper configs have been specified.
	returns: nothing
*/

if(!(hasTieredUnitConfigs)) exitWith {
    groupsNATOSentryT1;
};

switch (true) do {
    case (tierWar < 5):
    {
        groupsNATOSentryT1;
    };
    case (tierWar < 8 && {tierWar > 4}):
    {
        groupsNATOSentryT2;
    };
    case (tierWar > 7):
    {
        groupsNATOSentryT3;
    };
};



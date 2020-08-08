/*
	author: Socrates
	description: Return current small group array if proper configs have been specified.
	returns: nothing
*/

if(!(hasTieredUnitConfigs)) exitWith {
    [groupsNATOSentryT1, groupsNATOSniper];
};

switch (true) do {
    case (tierWar < 5):
    {
        [groupsNATOSentryT1, groupsNATOSniper];
    };
    case (tierWar < 8 && {tierWar > 4}):
    {
        [groupsNATOSentryT2, groupsNATOSniper];
    };
    case (tierWar > 7):
    {
        [groupsNATOSentryT3, groupsNATOSniper];
    };
};

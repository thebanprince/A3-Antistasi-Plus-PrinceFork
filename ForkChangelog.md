## Changelog

### 0.6
- New mission type: Salvage Helicrash
- Reenabled Destroy Vehicle/Helicopter mission along with some fixes and changes from unreleased community version
- Fixed inability to call rebel airstrike when commander is not a host
- Attempt to mitigate vehicle placement issue on Vehicle Market (use SHIFT key for accurate vehicle placement that ignores terrain gradient and obstacles)
- Localized POW actions and outcomes
- "Grab From Faction Pool" action money amount increased from 100 to 1000
- Releasing POWs gives small amount of money to releasing player from this moment (paycheck depends on current aggro level, applies to occupant POWs only, starts from war level 4)
- 3D icons with rank, role and nickname above friendly players (optional, mission parameter)
- 3D icons above uncoscious players (optional, mission parameter)
- Ability to buy AT Offroad (Military Vehicle submenu on vehicle crate on base)
- Individual Fast Travel (optional, mission parameter)
- When in engagements, AI squads without NVGs will launch flares at night from this moment (vanilla, CUP and RHS flares supported)
- Loot truck gives money to everyone, not only players in proximity from now
- Gather Loot systemChat messages will be transmitted only to players in proximity, not everyone (as it was before)
- Sum Similar Weapons To Unlock mission parameter (sums same weapons with different color to unlock them all to use without limit, optional, mission parameter)
- AT Bunkers replaced with AT sandbags (vanilla templates were mostly affected) on roadblocks and outposts
- Disabled FFAA and 3CB support since they are not compatible with any of Antistasi Plus features
- UI tweaks

### 0.4.4
- Fixed serialization of trader quest completion parameter on dedicated servers and HCs
- Fixed incorrect trader creation function call on dedicated servers and HCs
- Fixed Bug with gearless and weaponless helicopter troops
- Fixed some .rpt errors tied to HALs store, disabled debug mode for it
- Attempt to fix no SpecOps units at Assassinate SpecOps mission location bug
- Few new control markers
- Moved initial HQ placement to Taviana Zoo (safest place on island)
- little roadwreck purge on Taviana's south part

### 0.4.3
- Fixed wrong classname on one entry at arms dealer store for Antistasi Units weapons pool
- "Clear Forest" action on arms dealer's laptop now properly works on dedicated server
- Fixed inability to place black market vehicle in some cases on dedicated server
- Fixed no weapon market action for JIPs and some unidentified cases
- Fixed no backpack removal on bodies after using loot truck on multiplayer environment
- Money items from bodies will be shared between players in proximity after using loot truck action (as it already happens with money laying on ground)
- Louder loot truck action
- Clear Forest action on trader's laptop could be used by everyone from now (not only side's commander, as it was before)
- Fixed "Undefined variable in expression: isinfantryunittiersenabled" error
- Added 25% chance to obtain information about arms dealer after hacking a laptop
- (TFAR only) Ability to use a radio while laying wounded
- Randomised money items position on tables
- Fixed inability to get Destroy Antenna task from Petros
- Fixed officer interrogation bug
- The Great Roadwreck Purge
- HallyG store framework 1.5.0 update

### 0.4.1
- Fixed wrong text on vehicle market entries
- "Clear Forest" action on arms dealer's laptop
- Fixed inability to buy vehicles on vehicle market


### 0.4
- Updgrade to stable release of 2.3 Antistasi Community Version
- New Find the Arms Dealer task type (can be obtained via intel search/interrogation)
- Arms Dealer with the ability to directly sell weapons, magazines, items etc
- New pickupable item - money. Banknotes can be on outpost tables, on traitor, civilian vehicles. More places and items will come in future.
- Black Market functionality moved from Petros to Arms Dealer
- Removed ability to buy artillery and loot boxes on black market
- Radio tower placements remade, most of them 
- Loot Bodies and Cargo sound bug fixed
- Additional control zones, 2 new outposts


### 0.2.1
- Fixed bug with CHDKZ flagpole
- Added Infantry Units Tiers setting 


### 0.2
- Upgrade to 2.3 (still unstable) Antistasi Community Version
- Fixed bug with commander squads spawn
- Fixed bug with not working Fatal Wounds mission parameter
- Mag Repack no longer can be accessed while wounded
- Fixed CHDKZ flag issue
- Background Blur Effect appliance on Antistasi menus
- More radio towers to cover all landmass on islands
- Antistasi Units template adjustment
- Removed IFA support due to nonfunctional template at the moment
- Reduced static objects quantity on map
- Reduced number of control zones
- Default Rebels HQ position moved on abandoned airfield
- Both Kozlice variants added as starting weapons on a vanilla template
- Infantry unit tiers enabled for RHS
- Starting equipment adjustment for RHS template

### 0.1
- Taviana support
- Special truck with ability to autoloot bodies around the truck to reduce tediousness of looting enemy (can be bought on Civilian section)
- Integrated Mag Repack script (menu can be accessed via Ctrl+R hotkey)
- Black Market - possibility to spend money on weapons, vehicles, aircrafts et cetera (can be accessed via Petros when seaport is captured, based on according Antistasi Singleplayer feature, credits to GospelG)
- Infantry unit tiers based on current war level, the bigger war level - the better enemy's infantry units equipment (requires Antistasi Units mod)
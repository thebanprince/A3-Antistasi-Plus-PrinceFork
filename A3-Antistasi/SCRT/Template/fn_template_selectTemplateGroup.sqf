//lower-case only!
aridmaps = ["altis","kunduz","malden","tem_anizay"];
tropicalmaps = ["tanoa"];
temperatemaps = ["enoch", "chernarus_summer", "vt7", "taviana", "tembelan", "cup_chernarus_a3", "napf"];

terrainName = toLower worldName;

if(teamPlayer == independent) then {
    [] call SCRT_fnc_template_selectIndepModTemplate;
} else {
    [] call SCRT_fnc_template_selectBluforModTemplate;
};

//deallocating, those variables no longer needed to be stored in missionNamespace
aridmaps = nil;
tropicalmaps = nil;
temperatemaps = nil;
terrainName = nil;
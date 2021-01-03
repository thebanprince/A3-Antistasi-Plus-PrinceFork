//lower-case only!
aridmaps = ["altis"];
tropicalmaps = ["tanoa"];
temperatemaps = ["enoch", "vt7", "taviana", "cup_chernarus_a3", "napf"];

terrainName = toLower worldName;

if(teamPlayer == independent) then {
    [] call SCRT_fnc_template_selectIndepModTemplate;
} else {
    [] call SCRT_fnc_template_selectBluforModTemplate;
};

//deallocating, those variables are no longer needed to be stored in missionNamespace
aridmaps = nil;
tropicalmaps = nil;
temperatemaps = nil;
terrainName = nil;
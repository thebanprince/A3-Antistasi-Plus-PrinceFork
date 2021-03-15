//lower-case only!
aridmaps = ["altis"];
tropicalmaps = ["tanoa"];
temperatemaps = ["enoch", "vt7", "cup_chernarus_a3", "napf"];

terrainName = toLower worldName;

[] call SCRT_fnc_template_selectIndepModTemplate;

//deallocating, those variables are no longer needed to be stored in missionNamespace
aridmaps = nil;
tropicalmaps = nil;
temperatemaps = nil;
terrainName = nil;
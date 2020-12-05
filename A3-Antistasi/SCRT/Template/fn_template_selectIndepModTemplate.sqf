terrainName = toLower worldName;

switch(true) do {
  case (hasAU): {
    [] call SCRT_fnc_template_setAuTemplate;
  };
  case (hasAegis): {
    [] call SCRT_fnc_template_setAegisTemplate;
  };
  case (hasRHS): {
    [] call SCRT_fnc_template_setRhsTemplate;
  };
  case (hasCup): {
    [] call SCRT_fnc_template_setCupTemplate;
  };
  case (has3CB): {
    [] call SCRT_fnc_template_setAuTemplate;
  };
  default {
    [] call SCRT_fnc_template_setVanillaTemplate;
  };
};
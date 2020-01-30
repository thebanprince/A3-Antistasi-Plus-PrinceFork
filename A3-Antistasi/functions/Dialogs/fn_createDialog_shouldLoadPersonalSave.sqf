_nul=createDialog "should_load_personal_save";

waitUntil {dialog};
hint localize "STR_antistasi_dialogs_createDialog_setParams_text_1";
waitUntil {!dialog};

[] spawn A3A_fnc_credits;
diag_log "[Antistasi] Saving is now possible.";
player setVariable ['canSave', true, true];

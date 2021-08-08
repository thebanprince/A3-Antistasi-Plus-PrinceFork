params ["_text"];

0 fadeMusic 0;
30 fadeMusic 0.5;
playMusic "BackgroundTrack03_F_EPC";

"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0], [1, 1, 1, 0], [0.75, 0.25, 0, 1.0]]; 
"colorCorrections" ppEffectCommit 30; 
"colorCorrections" ppEffectEnable TRUE; 
 
"filmGrain" ppEffectAdjust [0.25, 1, 1, 0, 1]; 
"filmGrain" ppEffectCommit 30; 
"filmGrain" ppEffectEnable true; 

[petros, "support", _text] remoteExec ["A3A_fnc_commsMP", player];
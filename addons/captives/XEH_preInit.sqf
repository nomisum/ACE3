#include "script_component.hpp"

ADDON = false;

PREP_RECOMPILE_START;
#include "XEH_PREP.hpp"
PREP_RECOMPILE_END;

GVAR(captivityEnabled) = false;
[
    QGVAR(allowWalkingWhileCaptiv), 
    "CHECKBOX", 
    [
        localize LSTRING(settingAllowWalkingWhileCaptiv_displayName), 
        localize LSTRING(settingAllowWalkingWhileCaptiv_tooltip)
    ], 
    localize LSTRING(settingCategory), 
    true,
    true
] call CBA_Settings_fnc_init;

[
    QGVAR(disableEscorting), 
    "CHECKBOX", 
    [
        localize LSTRING(settingDisableEscorting_displayName), 
        localize LSTRING(settingDisableEscorting_tooltip)
    ], 
    localize LSTRING(settingCategory), 
    false,
    true
] call CBA_Settings_fnc_init;

[
    QGVAR(allowFreeing), 
    "CHECKBOX", 
    [
        localize LSTRING(allowFreeing_displayName), 
        localize LSTRING(allowFreeing_tooltip)
    ], 
    localize LSTRING(settingCategory), 
    true,
    true
] call CBA_Settings_fnc_init;

[
    QGVAR(freeingTime), 
    "SLIDER", 
    localize LSTRING(freeingTime), 
    localize LSTRING(settingCategory), 
    [5, 450, 35, 0], 
    true
] call CBA_Settings_fnc_init;

ADDON = true;

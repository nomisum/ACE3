#include "script_component.hpp"
/*
 * Author: nomisum
 * Function for closing doors and retracting the rope for GM helos.
 *
 * Arguments:
 * 0: Helicopter <OBJECT>
 *
 * Return Value:
 * Amount of time to wait before cutting ropes <NUMBER>
 *
 * Example:
 * [_vehicle] call ace_compat_gm_fnc_onCut
 *
 * Public: No
 */
params ["_vehicle"];

_vehicle setVariable [QEGVAR(fastroping,doorsLocked), false, true];
_vehicle animateDoor ["LeftDoor", 0];

[{
    params ["_vehicle"];
    _vehicle animateSource ["swooperRopes_unhide",1];    
}, [_vehicle], 2] call CBA_fnc_waitAndExecute;

2

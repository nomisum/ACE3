#include "script_component.hpp"
/*
 * Author: nomisum
 * Function for opening doors and extending the rope for most GM helos.
 *
 * Arguments:
 * 0: Helicopter <OBJECT>
 *
 * Return Value:
 * Amount of time to wait before deploying ropes <NUMBER>
 *
 * Example:
 * [_vehicle] call ace_compat_gm_fnc_onPrepare
 *
 * Public: No
 */
params ["_vehicle"];

_vehicle setVariable [QEGVAR(fastroping,doorsLocked), true, true];
_vehicle animateDoor ["LeftDoor", 1];

[{
    params ["_vehicle"];
    _vehicle animateSource ["swooperRopes_unhide",0, true];    
}, [_vehicle], 2] call CBA_fnc_waitAndExecute;

2

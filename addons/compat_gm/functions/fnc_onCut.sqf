#include "script_component.hpp"
/*
 * Author: nomisum
 * Function for closing doors for GM helos.
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

systemChat "onCut";

_vehicle setVariable [QEGVAR(fastroping,doorsLocked), false, true];
_vehicle animateDoor ["door_2_1_source", 0];
_vehicle animateDoor ["door_2_2_source", 0];

2
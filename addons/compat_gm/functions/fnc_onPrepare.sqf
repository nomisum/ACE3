#include "script_component.hpp"
/*
 * Author: nomisum
 * Function for opening doors for most GM helos.
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

systemChat "onPrepare";

_vehicle setVariable [QEGVAR(fastroping,doorsLocked), true, true];
_vehicle animateDoor ["door_2_1_source", 1];
_vehicle animateDoor ["door_2_2_source", 1];

2
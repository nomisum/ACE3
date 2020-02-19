#include "script_component.hpp"
/*
 * Author: PabstMirror
 * Unloads a captive from a vehicle.
 *
 * Arguments:
 * 0: Captive Unit being unloaded <OBJECT>
 *
 * Return Value:
 * None
 *
 * Example:
 * [bob] call ACE_captives_fnc_vehicleCaptiveMoveOut;
 *
 * Public: No
 */

params ["_unit"];
TRACE_1("params",_unit);

_unit setVariable [QGVAR(CargoIndex), -1, true];

moveOut _unit;
unassignVehicle _unit;

[_unit] call FUNC(handleCaptivAnim);

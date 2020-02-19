#include "script_component.hpp"
/*
 * Author: Salbei
 * Creates the walking anim.
 *
 * Arguments:
 * 0: The Unit <OBJECT>
 *
 * Return Value:
 * None
 *
 * Example:
 * [bob] call grad_captiveWalkingAnimation_fnc_handcuffedWalkAnim
 *
 * Public: No
 */

params ["_unit"];

[_unit, "AnimCableStandStart"] call EFUNC(common,doGesture);
[{
   [_this, "AnimCableStandLoop"] call EFUNC(common,doGesture);
   _this setVariable [QGVAR(animation), "AnimCableStandLoop"];
   [_this] call FUNC(animChangeEh);
}, _unit, 1] call CBA_fnc_waitAndExecute;

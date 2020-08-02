#include "script_component.hpp"
/*
 * Author: nomisum
 * Function for animating ropes when actually dropping (first introduced for GM Bo 105)
 * original onPrepare already animates when preparing FRIES
 *
 * Arguments:
 * 0: Helicopter <OBJECT>
 *
 * Return Value:
 * Amount of time to wait for animation to finish <NUMBER>
 *
 * Example:
 * [_vehicle] call ace_compat_gm_fnc_onDeployRopes
 *
 * Public: No
 */
params ["_vehicle"];

systemChat "onDeploy";

_vehicle animateSource ["swooperRopes_unhide",0, true];

0
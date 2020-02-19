#include "script_component.hpp"

params ["_unit"];

private _strengthLeft = _unit getVariable [QGVAR(handCuffStrength), 100];

if (_strengthLeft < 0) exitWith {
    addCamShake [60, 1.2, 4]; 
    playSound3D [QUOTE(PATHTO_R(sounds\snap.ogg)), objNull, false, (getPosASL _unit), 1, 1, 10];
    [_unit, false] call FUNC(setHandcuffed);
    _unit setVariable [QGVAR(handCuffStrength), 100];
};

private _sound = selectRandom [
    QUOTE(PATHTO_R(sounds\rub1.ogg)),
    QUOTE(PATHTO_R(sounds\rub2.ogg)),
    QUOTE(PATHTO_R(sounds\rub3.ogg))
];
playSound3D [_sound, objNull, false, (getPosASL _unit), 1, 1, 10];

addCamShake [1, 0.8, random 25];

_strengthLeft = _strengthLeft - (floor (random 10));
_unit setVariable [QGVAR(handCuffStrength), _strengthLeft];
systemChat ("strength: " + str _strengthLeft);
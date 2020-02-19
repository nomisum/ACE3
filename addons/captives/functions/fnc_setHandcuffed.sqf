#include "script_component.hpp"
/*
 * Author: Nic547, commy2, Salbei
 * Handcuffs a unit.
 *
 * Arguments:
 * 0: Unit <OBJECT>
 * 1: True to take captive, false to release captive <BOOL>
 *
 * Return Value:
 * None
 *
 * Example:
 * [bob, true] call ACE_captives_fnc_setHandcuffed;
 *
 * Public: No
 */

params ["_unit", "_state"];
TRACE_2("params",_unit,_state);

systemChat "Handcuffing";

if (!local _unit) exitWith {
   WARNING("running setHandcuffed on remote unit");
};

if !(missionNamespace getVariable [QGVAR(captivityEnabled), false]) exitWith {
   // It's to soon to call this function, delay it
   if (ace_common_settingsInitFinished) then {
      // Settings are already initialized, but the small wait isn't over
      [DFUNC(setHandCuffed), _this, 0.05] call CBA_fnc_waitAndExecute;
   } else {
      // Settings are not initialized yet
      [DFUNC(setHandCuffed), _this] call EFUNC(common,runAfterSettingsInit);
   };
};

if ((_unit getVariable [QGVAR(isHandcuffed), false]) isEqualTo _state) exitWith {
   WARNING("setHandcuffed: current state same as new");
};

if (_state) then {
   _unit setVariable [QGVAR(isHandcuffed), true, true];
   [_unit, "setCaptive", "ace_captives_Handcuffed", true] call EFUNC(common,statusEffect_set);

   if (_unit getVariable [QGVAR(isSurrendering), false]) then {  //If surrendering, stop
      [_unit, false] call FUNC(setSurrendered);
   };

   //Set unit cargoIndex (will be -1 if dismounted)
   _unit setVariable [QGVAR(CargoIndex), ((vehicle _unit) getCargoIndex _unit), true];

   if (_unit == ACE_player) then {
      ["captive", [false, false, false, false, false, false, false, false, false, true]] call EFUNC(common,showHud);
   };

   // fix anim on mission start (should work on dedicated servers)
   [{
      params ["_unit"];
      if (!(_unit getVariable [QGVAR(isHandcuffed), false])) exitWith {};

      if ((vehicle _unit) == _unit) then {
         [_unit] call EFUNC(common,fixLoweredRifleAnimation);
         [_unit, "blockThrow", "ace_captives_Handcuffed", true] call EFUNC(common,statusEffect_set);
         [_unit, "forceWalk", "ace_captives_Handcuffed", true] call EFUNC(common,statusEffect_set);

         [_unit] call FUNC(handleCaptivAnim);

      } else {
         [_unit, "ACE_HandcuffedFFV", 2] call EFUNC(common,doAnimation);
         [_unit, "ACE_HandcuffedFFV", 1] call EFUNC(common,doAnimation);
      };
   }, [_unit], 0.01] call CBA_fnc_waitAndExecute;
} else {
   _unit setVariable [QGVAR(isHandcuffed), false, true];
   [_unit, "setCaptive", "ace_captives_Handcuffed", false] call EFUNC(common,statusEffect_set);
   [_unit, "blockThrow", "ace_captives_Handcuffed", false] call EFUNC(common,statusEffect_set);
   [_unit, "forceWalk", "ace_captives_Handcuffed", false] call EFUNC(common,statusEffect_set);
   
   private _pfID = _unit getVariable [QGVAR(PFH), -1];
   if (_pfID != -1) then {
      _unit setVariable [QGVAR(PFH), -1];
      [_pfID] call CBA_fnc_removePerFrameHandler;
      [_unit, "AnimCableStandEnd"] call EFUNC(common,doGesture);

      _pfID = _unit getVariable [QGVAR(handcuffAnimEHID), -1];
      if (_pfID != -1) then {
         _unit setVariable [QGVAR(handcuffAnimEHID), -1];
         _unit removeEventHandler ["AnimChanged", _pfID];
      };
   };

   if (((vehicle _unit) == _unit) && {!(_unit getVariable ["ACE_isUnconscious", false])}) then {
      //Break out of hands up animation loop
      [_unit, "ACE_AmovPercMstpScapWnonDnon_AmovPercMstpSnonWnonDnon", 2] call EFUNC(common,doAnimation);
   };

   if (_unit getVariable [QGVAR(CargoIndex), -1] != -1) then {
      _unit setVariable [QGVAR(CargoIndex), -1, true];
   };

   if (_unit == ACE_player) then {
      ["captive", []] call EFUNC(common,showHud; //same as showHud true);
   };
};

//Global Event after changes:
["ace_captiveStatusChanged", [_unit, _state, "SetHandcuffed"]] call CBA_fnc_globalEvent;

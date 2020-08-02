class CfgVehicles {
    class Helicopter_Base_F;
    class Helicopter_Base_H: Helicopter_Base_F {
        class EventHandlers;
    };
    class gm_helicopter_base: Helicopter_Base_H {};
    class gm_bo105_base: gm_helicopter_base {
        EGVAR(map,vehicleLightColor)[] = {1,0,0,0.1};
        EGVAR(refuel,fuelCapacity) = 3700;
        EGVAR(fastroping,enabled) = 0;

        class UserActions
            {
                class openDoor_L
                {
                    displayNameDefault = "Open left Door";
                    displayName = "Open left Door";
                    position = "";
                    radius = 2.7;
                    onlyForPlayer = 1;
                    condition = QUOTE((this animationSourcePhase 'door_2_1_unhide' > 0.5) && (this doorPhase 'door_2_1_source' < 0.5) && {alive this} && {!(this getVariable [ARR_2(QUOTE(QEGVAR(fastroping,doorsLocked)),false)])});
                    statement = "this animateDoor ['door_2_1_source',1]";
                };

                class openDoor_R: openDoor_L
                {
                    displayNameDefault = "Open right Door";
                    displayName = "Open right Door";
                    condition = QUOTE((this animationSourcePhase 'door_2_2_unhide' > 0.5) && (this doorPhase 'door_2_2_source' < 0.5) && {alive this} && {!(this getVariable [ARR_2(QUOTE(QEGVAR(fastroping,doorsLocked)),false)])});
                    statement = "this animateDoor ['door_2_2_source',1]";
                };

                class closeDoor_L
                {
                    displayNameDefault = "Close left Door";
                    displayName = "Close left Door";
                    position = "";
                    radius = 2.7;
                    onlyForPlayer = 1;
                    condition = QUOTE((this animationSourcePhase 'door_2_1_unhide' > 0.5) && (this doorPhase 'door_2_1_source' > 0.5) && {alive this} && {!(this getVariable [ARR_2(QUOTE(QEGVAR(fastroping,doorsLocked)),false)])});
                    statement = "this animateDoor ['door_2_1_source',0]";
                };

                class closeDoor_R: closeDoor_L
                {
                    displayNameDefault = "Close right Door";
                    displayName = "Close right Door";
                    condition = QUOTE((this animationSourcePhase 'door_2_2_unhide' > 0.5) && (this doorPhase 'door_2_2_source' > 0.5) && {alive this} && {!(this getVariable [ARR_2(QUOTE(QEGVAR(fastroping,doorsLocked)),false)])});
                    statement = "this animateDoor ['door_2_2_source',0]";
                };
            };
    };
    class gm_bo105p1m_vbh_base;
    class gm_bo105p1m_vbh_swooper_base: gm_bo105p1m_vbh_base {
        EGVAR(fastroping,enabled) = 1;
        EGVAR(fastroping,ropeOrigins)[] = {{-1.34,0.695,-0.0757732},{1.34,0.695,-0.0973468}};
        EGVAR(fastroping,onCut) = QFUNC(onCut);
        EGVAR(fastroping,onCutRopes) = QFUNC(onCutRopes);
        EGVAR(fastroping,onDeployRopes) = QFUNC(onDeployRopes);
        EGVAR(fastroping,onPrepare) = QFUNC(onPrepare);
    };
};

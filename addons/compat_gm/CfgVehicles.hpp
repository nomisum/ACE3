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
    };
    class gm_bo105p1m_vbh_base;
    class gm_bo105p1m_vbh_swooper_base: gm_bo105p1m_vbh_base {
        EGVAR(fastroping,enabled) = 1;
        EGVAR(fastroping,ropeOrigins)[] = {{-1.34,0.65,-0.0757732},{1.34,0.65,-0.0973468}};
        EGVAR(fastroping,onCut) = QFUNC(onCut);
        EGVAR(fastroping,onPrepare) = QFUNC(onPrepare);
    };
};

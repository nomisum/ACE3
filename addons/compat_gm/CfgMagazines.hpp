class cfgMagazines {
    class CA_Magazine;
    class gm_explosive_petn_charge: CA_Magazine {
        ace_explosives_DelayTime = 1;
        ace_explosives_Placeable = 1;
        ace_explosives_SetupObject = "ACE_Explosives_Place_gm_explosive_petn";
        useAction = 0;
        class ACE_Triggers {
            SupportedTriggers[] = {"Timer", "Command", "MK16_Transmitter", "DeadmanSwitch"};
            class Timer {
                FuseTime = 0.5;
            };
            class Command {
                FuseTime = 0.5;
            };
            class MK16_Transmitter: Command {};
            class DeadmanSwitch: Command {};
        };
    };

    class gm_explosive_plnp_charge: gm_explosive_petn_charge {
        ace_explosives_SetupObject = "ACE_Explosives_Place_gm_explosive_plnp";
    };

    class ATMine_Range_Mag;
    class gm_mine_at_tm46: ATMine_Range_Mag {
        ace_explosives_SetupObject = "ACE_Explosives_Place_gm_mine_tm46";
        useAction = 0;
        class ACE_Triggers {
            SupportedTriggers[] = {"PressurePlate"};
            class PressurePlate {
                digDistance = 0.03;
            };
        };
    };
    class gm_mine_at_dm21: ATMine_Range_Mag {
        ace_explosives_SetupObject = "ACE_Explosives_Place_gm_explosive_dm21";
        useAction = 0;
        class ACE_Triggers {
            SupportedTriggers[] = {"PressurePlate"};
            class PressurePlate {
                digDistance = 0.03;
            };
        };
    };
    class gm_mine_at_mn111: ATMine_Range_Mag {
        ace_explosives_SetupObject = "ACE_Explosives_Place_gm_explosive_m111";
        useAction = 0;
        class ACE_Triggers {
            SupportedTriggers[] = {"PressurePlate"};
            class PressurePlate {
                digDistance = 0.03;
            };
        };
    };

    // class ATMine_Range_Mag;
    class gm_mine_ap_dm31: ATMine_Range_Mag {
        ace_explosives_SetupObject = "ACE_Explosives_Place_gm_explosive_dm31";
        useAction = 0;
        class ACE_Triggers {
            SupportedTriggers[] = {"Tripwire"};
            class Tripwire {
                digDistance = 0.125;
            };
        };
    };
};
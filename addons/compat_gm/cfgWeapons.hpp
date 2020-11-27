class CfgWeapons {
    #define HEARING_PROTECTION_OPEN EGVAR(hearing,protection) = 0; EGVAR(hearing,lowerVolume) = 0;
    #define HEARING_PROTECTION_VICCREW EGVAR(hearing,protection) = 0.85; EGVAR(hearing,lowerVolume) = 0.6;
    #define HEARING_PROTECTION_EARMUFF EGVAR(hearing,protection) = 0.75; EGVAR(hearing,lowerVolume) = 0.5;
    #define HEARING_PROTECTION_PELTOR EGVAR(hearing,protection) = 0.75; EGVAR(hearing,lowerVolume) = 0;

    
    class gm_ge_headgear_headset_crew_base;
    class gm_ge_headgear_headset_crew_oli: gm_ge_headgear_headset_crew_base {
        HEARING_PROTECTION_PELTOR
    };
    
    class gm_ge_headgear_sph4_base;
    class gm_ge_headgear_sph4_oli: gm_ge_headgear_sph4_base{
        HEARING_PROTECTION_PELTOR
    };
    
    class gm_pl_headgear_wz63_base;
    class gm_pl_army_headgear_wz63_oli: gm_pl_headgear_wz63_base {
        HEARING_PROTECTION_PELTOR
    };
    class gm_pl_army_headgear_wz63_net_oli: gm_pl_headgear_wz63_base {
        HEARING_PROTECTION_PELTOR
    };
    
    class gm_ge_headgear_crewhat_80_base;
    class gm_ge_headgear_crewhat_80_blk: gm_ge_headgear_crewhat_80_base {
        HEARING_PROTECTION_PELTOR
    };
    
    class gm_gc_headgear_crewhat_80_base;
    class gm_gc_army_headgear_crewhat_80_blk: gm_gc_headgear_crewhat_80_base {
        HEARING_PROTECTION_PELTOR
    };
    
    class gm_gc_headgear_zsh3_base;
    class gm_gc_headgear_zsh3_wht: gm_gc_headgear_zsh3_base { 
        HEARING_PROTECTION_PELTOR
    };
    class gm_gc_headgear_zsh3_blu: gm_gc_headgear_zsh3_base { 
        HEARING_PROTECTION_PELTOR
    };
    class gm_gc_headgear_zsh3_orn: gm_gc_headgear_zsh3_base { 
        HEARING_PROTECTION_PELTOR
    };
    

    class gm_ge_headgear_beret_base;
    class gm_ge_headgear_crewhat_80_blk: gm_ge_headgear_beret_base {
        HEARING_PROTECTION_PELTOR
    };
    class gm_ge_headgear_beret_crew_red_antiair: gm_ge_headgear_beret_base {
        HEARING_PROTECTION_PELTOR
    };
    class gm_ge_headgear_beret_crew_blk_antitank: gm_ge_headgear_beret_base {
        HEARING_PROTECTION_PELTOR
    };
    class gm_ge_headgear_beret_crew_blk_armor: gm_ge_headgear_beret_base {
        HEARING_PROTECTION_PELTOR
    };
    class gm_ge_headgear_beret_crew_blk_armorrecon: gm_ge_headgear_beret_base {
        HEARING_PROTECTION_PELTOR
    };
    class gm_ge_headgear_beret_crew_red_artillery: gm_ge_headgear_beret_base {
        HEARING_PROTECTION_PELTOR
    };
    class gm_ge_headgear_beret_crew_red_engineer: gm_ge_headgear_beret_base {
        HEARING_PROTECTION_PELTOR
    };
    class gm_ge_headgear_beret_crew_red_maintenance: gm_ge_headgear_beret_base {
        HEARING_PROTECTION_PELTOR
    };
    class gm_ge_headgear_beret_crew_grn_mechinf: gm_ge_headgear_beret_base {
        HEARING_PROTECTION_PELTOR
    };
    class gm_ge_headgear_beret_crew_red_militarypolice: gm_ge_headgear_beret_base {
        HEARING_PROTECTION_PELTOR
    };
    class gm_ge_headgear_beret_crew_red_nbc: gm_ge_headgear_beret_base {
        HEARING_PROTECTION_PELTOR
    };
    class gm_ge_headgear_beret_crew_red_opcom: gm_ge_headgear_beret_base {
        HEARING_PROTECTION_PELTOR
    };
    class gm_ge_headgear_beret_crew_bdx_paratrooper: gm_ge_headgear_beret_base {
        HEARING_PROTECTION_PELTOR
    };
    class gm_ge_headgear_beret_crew_blk_recon: gm_ge_headgear_beret_base {
        HEARING_PROTECTION_PELTOR
    };
    class gm_ge_headgear_beret_crew_red_supply: gm_ge_headgear_beret_base {
        HEARING_PROTECTION_PELTOR
    };
    class gm_ge_headgear_beret_crew_red_signals: gm_ge_headgear_beret_base {
        HEARING_PROTECTION_PELTOR
    };
};
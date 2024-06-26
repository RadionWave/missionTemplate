/*
    Fichier: fnc_message
    Auteur: Techniciens Adeptus pour Adeptus TEAM (adeptusrepublica.fr)
    Publique: Non

    Description: this execVM "function\cons_coms.sqf";
*/

#define ADD_CUSTOM_ACTION(_object, _actionName, _function, _radius) \
    _object addAction [ \
        _actionName, \
        { [] remoteExec [_function, 0]; }, \
        nil, \
        1.5, \
        true, \
        true, \
        "", \
        "true", \
        _radius, \
        false, \
        "", \
        "" \
    ];

/**
    Joue un son et affiche un message demandant aux officiers et sous-officiers de se rendre sur le pont principal.

    Cette fonction joue un son de rafraîchissement d'hologramme et affiche un message à l'écran indiquant 
    que les officiers et sous-officiers sont demandés sur le pont principal.

    Exemple d'utilisation:
    fnc_callCONCO;  // Joue le son de rafraîchissement d'hologramme et affiche le message de convocation
 */
fnc_callCONCO = {
    playSound "ls_hologram_refresh";
    titleText ["<t align='center' shadow='2' color='#4c6ca8' size='1.2' font='RobotoCondensedBold'>Holo Coms</t><t color='#ffffff' size='1.2' font='RobotoCondensed'> : Les Officiers et Sous-Officiers sont demandées sur le pont Principal</t>", "PLAIN DOWN", -1, true, true];
};

ADD_CUSTOM_ACTION(cons_coms, "Convocation CO/NCO", "fnc_callCONCO", 3);

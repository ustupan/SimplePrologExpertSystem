    rodzaj(podobne_do_przeciebienia) :-
        symptom(Pacjent,goraczka);
        symptom(Pacjent,katar);
        symptom(Pacjent,bol_glowy).

    rodzaj(wysypki) :-
        symptom(wysypka).

    rodzaj(uklad_moczowy) :-
        symptom(Pacjent,wymioty).

    rodzaj(uklad_pokarmowy) :-
        symptom(Pacjemt,wymioty).

    rodzaj(laryngologiczne) :-
        symptom(Pacjent,goraczka).

    rodzaj(reumatyczne) :-
        symptom(Pacjent,osoba_starsza).   // osoba_starsza == +50

    rodzaj(hormonalne) :-
        symptom(Pacjent,depresja).

    rodzaj(choroby_serca) :-
        symptom(Pacjent,zmeczenie).

    //podobne do przeziebienia
    Hipoteza(Pacjent,grypa) :-
        rodzaj(podobne_do_przeciebienia),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,bol_glowy),
        symptom(Pacjent,bol_miesni),
        symptom(Pacjent,zapalenie_spojowek),
        symptom(Pacjent,dreszcze),
        symptom(Pacjent,bol_gardla),
        symptom(Pacjent,katar),
        symptom(Pacjent,kaszel).

    Hipoteza(Pacjent,przeziebienie) :-
        rodzaj(podobne_do_przeciebienia),
        symptom(Pacjent,bol_glowy),
        symptom(Pacjent,kichanie),
        symptom(Pacjent,bol_gardla),
        symptom(Pacjent,katar),
        symptom(Pacjent,dreszcze).

    Hipoteza(Pacjent,swinka) :-
        rodzaj(podobne_do_przeciebienia),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,obrzek_wezlow_chlonnych),
        symptom(Pacjent,bol_miesni),
        symptom(Pacjent,bol_uszu),
        symptom(Pacjent,wymioty).

    Hipoteza(Pacjent,kleszczowe_zapalenie_mozgu) :-
        rodzaj(podobne_do_przeciebienia),
        symptom(Pacjent,bol_glowy),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,dreszcze),
        symptom(Pacjent,bol_miesni),
        symptom(Pacjent,katar).

    Hipoteza(Pacjent,mononukleoza) :-
        rodzaj(podobne_do_przeciebienia),
        symptom(Pacjent,bol_glowy),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,dreszcze),
        symptom(Pacjent,bol_miesni),
        symptom(Pacjent,katar),
        symptom(Pacjent,obrzek_wezlow_chlonnych),
        symptom(Pacjent,bol_brzucha).

    Hipoteza(Pacjent,hiv) :-
        symptom(Pacjent,goraczka),
        rodzaj(podobne_do_przeciebienia),
        symptom(Pacjent,obrzek_wezlow_chlonnych),
        symptom(Pacjent,bol_glowy),
        symptom(Pacjent,wysypka),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,biegunka),
        symptom(Pacjent,zmeczenie),
        symptom(Pacjent,bol_brzucha).

    //Wysypki
    Hipoteza(Pacjent,odra) :-
        rodzaj(wysypki),
        symptom(Pacjent,wysypka),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,kaszel),
        symptom(Pacjent,zapalenie_spojowek),
        symptom(Pacjent,katar).

    Hipoteza(Pacjent,ospa_wietrzna) :-
        rodzaj(wysypki),
        symptom(Pacjent,wysypka),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,dreszcze),
        symptom(Pacjent,bol_miesni).

    Hipoteza(Pacjent,rozyczka) :-
        rodzaj(wysypki),
        symptom(Pacjent,wysypka),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,bol_glowy),
        symptom(Pacjent,katar),
        symptom(Pacjent,biegunka).

    Hipoteza(Pacjent,szkarlatyna) :-
        rodzaj(wysypki),
        symptom(Pacjent,wysypka),
        symptom(Pacjent,bol_gardla),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,biegunka),
        symptom(Pacjent,obrzek_wezlow_chlonnych).

    Hipoteza(Pacjent,goraczka_trzydniowa) :-
        rodzaj(wysypki),
        symptom(Pacjent,wysypka),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,biegunka),
        symptom(Pacjent,obrzek_wezlow_chlonnych),
        symptom(Pacjent,rozdraznienie).

    //Uładu moczowego
    Hipoteza(Pacjent,kamica_nerkowa) :-
        rodzaj(uklad_moczowy),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,bol_brzucha),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,krwiomocz).

    Hipoteza(Pacjent,kamica_pecherzowa) :-
        rodzaj(uklad_moczowy),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,bol_brzucha),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,krwiomocz),
        symptom(Pacjent,dreszcze).

    Hipoteza(Pacjent,kamica_szczawianowa) :-
        rodzaj(uklad_moczowy),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,bol_brzucha),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,dreszcze),
        symptom(Pacjent,omdlenia).

    Hipoteza(Pacjent,kamienie_nerkowe) :-
        rodzaj(uklad_moczowy),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,bol_brzucha),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,dreszcze),
        symptom(Pacjent,krwiomocz),
        symptom(Pacjent,nipokoj).

    Hipoteza(Pacjent,klebuszowe_zapalenie_nerek) :-
        rodzaj(uklad_moczowy),
        symptom(Pacjent,bol_glowy),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,dreszcze),
        symptom(Pacjent,krwiomocz),
        symptom(Pacjent,nipokoj).

    //Układu pokarmowego
    Hipoteza(Pacjent,glistnica) :-
        rodzaj(uklad_pokarmowy),
        symptom(Pacjent,bol_glowy),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,dreszcze),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,zapalenie_spojowek),
        symptom(Pacjent, dusznosci).

    Hipoteza(Pacjent,gronkowiec) :-
        rodzaj(uklad_pokarmowy),
        symptom(Pacjent,bol_brzucha),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,bol_uszu).

    Hipoteza(Pacjent,grzybicowe_zapalenie_pluc) :-
        rodzaj(uklad_pokarmowy),
        symptom(Pacjent,deszcze),
        symptom(Pacjent,kaszel),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,biegunka),
        symptom(Pacjent,dusznosci).

    Hipoteza(Pacjent,grypa_zoladkowa) :-
        rodzaj(uklad_pokarmowy),
        symptom(Pacjent,bol_brzucha),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,bol_glowy),
        symptom(Pacjent,biegunka).

    //Laryngologiczne
    Hipoteza(Pacjent,zapalenie_ucha) :-
        rodzaj(laryngologiczne),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,bol_uszu).

    Hipoteza(Pacjent,perforacja_blony_bebenkowej) :-
        rodzaj(laryngologiczne),
        symptom(Pacjent,bol_uszu),
        symptom(Pacjent,szumy_uszu),
        symptom(Pacjent,goraczka),

    Hipoteza(Pacjent,robne_zapalenie_migdalkow) :-
        rodzaj(laryngologiczne),
        symptom(Pacjent,bol_gardla),
        symptom(Pacjent,bol_brzucha),
        symptom(Pacjent,bol_glowy),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,obrzek_wezlow_chlonnych).

    //Reumatyczne
    Hipoteza(Pacjent,choroba_stilla) :-
        rodzaj(reumatyczne),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,obrzek_wezlow_chlonnych),
        symptom(Pacjent,bol_miesni),
        symptom(Pacjent,bol_garlda),
        symptom(Pacjent,szumy_uszu).

    Hipoteza(Pacjent,choroba_stawow_krekow_szyjnych) :-
        rodzaj(reumatyczne),
        symptom(Pacjent,bol_glowy),
        symptom(Pacjent,omdlenia),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,paralize).

    Hipoteza(Pacjent,zapalenie_wielomiesniowe) :-
        rodzaj(reumatyczne),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,bol_glowy),
        symptom(Pacjent,bol_gardla),
        symptom(Pacjent,rumien).

    Hipoteza(Pacjent,zespol_sjogrena) :-
        rodzaj(reumatyczne),
        symptom(Pacjent,zapalenie_spojowek),
        symptom(Pacjent,prochnica),
        symptom(Pacjent,bol_gardla),

    //Hormonalne
    Hipoteza(Pacjent,cisawica) :-
        rodzaj(hormonalne),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,biegunka),
        symptom(Pacjent,bol_brzuha),
        symptom(Pacjent,omdlenia),
        symptom(Pacjent,depresja).

    Hipoteza(Pacjent,cukrzyca) :-
        rodzaj(hormonalne),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,paralize),
        symptom(Pacjent,depresja).

    Hipoteza(Pacjent,guz_chromochlonny) :-
        rodzaj(hormonalne),
        symptom(Pacjent,bol_glowy),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,biegunka),
        symptom(Pacjent,depresja),
        symptom(Pacjent,nerwowosc).

    // Choroby serca

    Hipoteza(Pacjent,nadcisnienie) :-
        rodzaj(choroby_serca),
        symptom(Pacjent,zmeczenie),
        symptom(Pacjent,nerwowosc),
        symptom(Pacjent,dusznosci),
        symptom(Pacjent,bol_glowy),
        symptom(Pacjent,lomotanie_serca).

    Hipoteza(Pacjent,choroba_wiencowa) :-
        rodzaj(choroby_serca),
        symptom(Pacjent,lomotanie_serca),
        symptom(Pacjent,bol_brzucha),
        symptom(Pacjent,bol_ramion),
        symptom(Pacjent,zmeczenie),
        symptom(Pacjent,bol_szyi).

    Hipoteza(Pacjent,arytmia) :-
        rodzaj(choroby_serca),
        symptom(Pacjent,dusznosci),
        symptom(Pacjent,zmeczenie),
        symptom(Pacjent,dlawienie_w_klatce),
        symptom(Pacjent,omdlenia),
        symptom(Pacjent,nerwowosc).

    Hipoteza(Pacjent,zawal) :-
        rodzaj(choroby_serca),
        symptom(Pacjent,dlawienie_w_klatce),
        symptom(Pacjent,omdlenia),
        symptom(Pacjent,dreszcze),
        symptom(Pacjent,zmeczenie),
        symptom(Pacjent,biegunka),
        symptom(Pacjent,bol_brzucha),
        symptom(Pacjent,paralize).

    Hipoteza(Pacjent,nowotwor_serca) :-
        rodzaj(choroby_serca),
        symptom(Pacjent,Hipoteza(Pacjent,arytmia)),
        symptom(Pacjent,kaszel),
        symptom(Pacjent,zmeczenie),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,wysypka).


























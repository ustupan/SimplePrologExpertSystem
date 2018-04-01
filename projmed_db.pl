
rodzaj(Pacjent,podobne_do_przeciebienia) :-
        symptom(Pacjent,goraczka);
        symptom(Pacjent,katar);
        symptom(Pacjent,bol_glowy).

rodzaj(Pacjent, wysypki) :-
        symptom(Pacjent,wysypka).

rodzaj(Pacjent, uklad_moczowy) :-
        symptom(Pacjent,wymioty).

rodzaj(Pacjent, uklad_pokarmowy) :-
        symptom(Pacjent,wymioty).

rodzaj(Pacjent, laryngologiczne) :-
        symptom(Pacjent,goraczka).

rodzaj(_, reumatyczne) :-
        wiek(1).

rodzaj(Pacjent, hormonalne) :-
        symptom(Pacjent,depresja).

rodzaj(Pacjent, choroby_serca) :-
        symptom(Pacjent,zmeczenie).

hipoteza(Pacjent,grypa) :-
        rodzaj(Pacjent,podobne_do_przeciebienia),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,bol_glowy),
        symptom(Pacjent,bol_miesni),
        symptom(Pacjent,zapalenie_spojowek),
        symptom(Pacjent,dreszcze),
        symptom(Pacjent,bol_gardla),
        symptom(Pacjent,katar),
        symptom(Pacjent,kaszel).

hipoteza(Pacjent,przeziebienie) :-
        rodzaj(Pacjent,podobne_do_przeciebienia),
        symptom(Pacjent,bol_glowy),
        symptom(Pacjent,kichanie),
        symptom(Pacjent,bol_gardla),
        symptom(Pacjent,katar),
        symptom(Pacjent,dreszcze).

hipoteza(Pacjent,swinka) :-
        rodzaj(Pacjent,podobne_do_przeciebienia),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,obrzek_wezlow_chlonnych),
        symptom(Pacjent,bol_miesni),
        symptom(Pacjent,bol_uszu),
        symptom(Pacjent,wymioty).

hipoteza(Pacjent,kleszczowe_zapalenie_mozgu) :-
        rodzaj(Pacjent,podobne_do_przeciebienia),
        symptom(Pacjent,bol_glowy),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,dreszcze),
        symptom(Pacjent,bol_miesni),
        symptom(Pacjent,katar).

hipoteza(Pacjent,mononukleoza) :-
        rodzaj(Pacjent,podobne_do_przeciebienia),
        symptom(Pacjent,bol_glowy),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,dreszcze),
        symptom(Pacjent,bol_miesni),
        symptom(Pacjent,katar),
        symptom(Pacjent,obrzek_wezlow_chlonnych),
        symptom(Pacjent,bol_brzucha).

hipoteza(Pacjent,hiv) :-
        symptom(Pacjent,goraczka),
        rodzaj(Pacjent,podobne_do_przeciebienia),
        symptom(Pacjent,obrzek_wezlow_chlonnych),
        symptom(Pacjent,bol_glowy),
        symptom(Pacjent,wysypka),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,biegunka),
        symptom(Pacjent,zmeczenie),
        symptom(Pacjent,bol_brzucha).

hipoteza(Pacjent,odra) :-
        rodzaj(Pacjent,wysypki),
        symptom(Pacjent,wysypka),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,kaszel),
        symptom(Pacjent,zapalenie_spojowek),
        symptom(Pacjent,katar).

hipoteza(Pacjent,ospa_wietrzna) :-
        rodzaj(Pacjent,wysypki),
        symptom(Pacjent,wysypka),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,dreszcze),
        symptom(Pacjent,bol_miesni).

hipoteza(Pacjent,rozyczka) :-
        rodzaj(Pacjent,wysypki),
        symptom(Pacjent,wysypka),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,bol_glowy),
        symptom(Pacjent,katar),
        symptom(Pacjent,biegunka).

hipoteza(Pacjent,szkarlatyna) :-
        rodzaj(Pacjent,wysypki),
        symptom(Pacjent,wysypka),
        symptom(Pacjent,bol_gardla),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,biegunka),
        symptom(Pacjent,obrzek_wezlow_chlonnych).

hipoteza(Pacjent,goraczka_trzydniowa) :-
        rodzaj(Pacjent,wysypki),
        symptom(Pacjent,wysypka),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,biegunka),
        symptom(Pacjent,obrzek_wezlow_chlonnych),
        symptom(Pacjent,rozdraznienie).

hipoteza(Pacjent,kamica_nerkowa) :-
        rodzaj(Pacjent,uklad_moczowy),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,bol_brzucha),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,krwiomocz).

hipoteza(Pacjent,kamica_pecherzowa) :-
        rodzaj(Pacjent,uklad_moczowy),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,bol_brzucha),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,krwiomocz),
        symptom(Pacjent,dreszcze).

hipoteza(Pacjent,kamica_szczawianowa) :-
        rodzaj(Pacjent,uklad_moczowy),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,bol_brzucha),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,dreszcze),
        symptom(Pacjent,omdlenia).

hipoteza(Pacjent,kamienie_nerkowe) :-
        rodzaj(Pacjent,uklad_moczowy),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,bol_brzucha),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,dreszcze),
        symptom(Pacjent,krwiomocz),
        symptom(Pacjent,nipokoj).

hipoteza(Pacjent,klebuszowe_zapalenie_nerek) :-
        rodzaj(Pacjent,uklad_moczowy),
        symptom(Pacjent,bol_glowy),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,dreszcze),
        symptom(Pacjent,krwiomocz),
        symptom(Pacjent,nipokoj).

hipoteza(Pacjent,glistnica) :-
        rodzaj(Pacjent,uklad_pokarmowy),
        symptom(Pacjent,bol_glowy),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,dreszcze),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,zapalenie_spojowek),
        symptom(Pacjent, dusznosci).

hipoteza(Pacjent,gronkowiec) :-
        rodzaj(Pacjent,uklad_pokarmowy),
        symptom(Pacjent,bol_brzucha),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,bol_uszu).

hipoteza(Pacjent,grzybicowe_zapalenie_pluc) :-
        rodzaj(Pacjent,uklad_pokarmowy),
        symptom(Pacjent,deszcze),
        symptom(Pacjent,kaszel),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,biegunka),
        symptom(Pacjent,dusznosci).

hipoteza(Pacjent,grypa_zoladkowa) :-
        rodzaj(Pacjent,uklad_pokarmowy),
        symptom(Pacjent,bol_brzucha),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,bol_glowy),
        symptom(Pacjent,biegunka).

hipoteza(Pacjent,zapalenie_ucha) :-
        rodzaj(Pacjent,laryngologiczne),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,bol_uszu).

hipoteza(Pacjent,perforacja_blony_bebenkowej) :-
        rodzaj(Pacjent,laryngologiczne),
        symptom(Pacjent,bol_uszu),
        symptom(Pacjent,szumy_uszu),
        symptom(Pacjent,goraczka).

hipoteza(Pacjent,ropne_zapalenie_migdalkow) :-
        rodzaj(Pacjent,laryngologiczne),
        symptom(Pacjent,bol_gardla),
        symptom(Pacjent,bol_brzucha),
        symptom(Pacjent,bol_glowy),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,obrzek_wezlow_chlonnych).

hipoteza(Pacjent,choroba_stilla) :-
        rodzaj(Pacjent,reumatyczne),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,obrzek_wezlow_chlonnych),
        symptom(Pacjent,bol_miesni),
        symptom(Pacjent,bol_garlda),
        symptom(Pacjent,szumy_uszu).

hipoteza(Pacjent,choroba_stawow_kregow_szyjnych) :-
        rodzaj(Pacjent,reumatyczne),
        symptom(Pacjent,bol_glowy),
        symptom(Pacjent,omdlenia),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,paralize).

hipoteza(Pacjent,zapalenie_wielomiesniowe) :-
        rodzaj(Pacjent,reumatyczne),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,bol_glowy),
        symptom(Pacjent,bol_gardla),
        symptom(Pacjent,rumien).

hipoteza(Pacjent,zespol_sjogrena) :-
        rodzaj(Pacjent,reumatyczne),
        symptom(Pacjent,zapalenie_spojowek),
        symptom(Pacjent,prochnica),
        symptom(Pacjent,bol_gardla).

hipoteza(Pacjent,cisawica) :-
        rodzaj(Pacjent,hormonalne),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,biegunka),
        symptom(Pacjent,bol_brzuha),
        symptom(Pacjent,omdlenia),
        symptom(Pacjent,depresja).

hipoteza(Pacjent,cukrzyca) :-
        rodzaj(Pacjent,hormonalne),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,paralize),
        symptom(Pacjent,depresja).

hipoteza(Pacjent,guz_chromochlonny) :-
        rodzaj(Pacjent,hormonalne),
        symptom(Pacjent,bol_glowy),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,biegunka),
        symptom(Pacjent,depresja),
        symptom(Pacjent,nerwowosc).

hipoteza(Pacjent,nadcisnienie) :-
        rodzaj(Pacjent,choroby_serca),
        symptom(Pacjent,zmeczenie),
        symptom(Pacjent,nerwowosc),
        symptom(Pacjent,dusznosci),
        symptom(Pacjent,bol_glowy),
        symptom(Pacjent,lomotanie_serca).

hipoteza(Pacjent,choroba_wiencowa) :-
        rodzaj(Pacjent,choroby_serca),
        symptom(Pacjent,lomotanie_serca),
        symptom(Pacjent,bol_brzucha),
        symptom(Pacjent,bol_ramion),
        symptom(Pacjent,zmeczenie),
        symptom(Pacjent,bol_szyi).

hipoteza(Pacjent,arytmia) :-
        rodzaj(Pacjent,choroby_serca),
        symptom(Pacjent,dusznosci),
        symptom(Pacjent,zmeczenie),
        symptom(Pacjent,dlawienie_w_klatce),
        symptom(Pacjent,omdlenia),
        symptom(Pacjent,nerwowosc).

hipoteza(Pacjent,zawal) :-
        rodzaj(Pacjent,choroby_serca),
        symptom(Pacjent,dlawienie_w_klatce),
        symptom(Pacjent,omdlenia),
        symptom(Pacjent,dreszcze),
        symptom(Pacjent,zmeczenie),
        symptom(Pacjent,biegunka),
        symptom(Pacjent,bol_brzucha),
        symptom(Pacjent,paralize).

hipoteza(Pacjent,nowotwor_serca) :-
        rodzaj(Pacjent,choroby_serca),
        symptom(Pacjent,hipoteza(Pacjent,arytmia)),
        symptom(Pacjent,kaszel),
        symptom(Pacjent,zmeczenie),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,wysypka).

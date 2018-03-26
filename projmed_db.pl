
rodzaj(podobne_do_przeciebienia) :-
        symptom(Pacjent,goraczka);
        symptom(Pacjent,katar);
        symptom(Pacjent,bol_glowy).

rodzaj(wysypki) :-
        symptom(Pacjent,wysypka).

rodzaj(uklad_moczowy) :-
        symptom(Pacjent,wymioty).

rodzaj(uklad_pokarmowy) :-
        symptom(Pacjent,wymioty).

rodzaj(laryngologiczne) :-
        symptom(Pacjent,goraczka).

rodzaj(reumatyczne) :-
        false.

rodzaj(hormonalne) :-
        symptom(Pacjent,depresja).

rodzaj(choroby_serca) :-
        symptom(Pacjent,zmeczenie).

hipoteza(Pacjent,grypa) :-
        rodzaj(podobne_do_przeciebienia),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,bol_glowy),
        symptom(Pacjent,bol_miesni),
        symptom(Pacjent,zapalenie_spojowek),
        symptom(Pacjent,dreszcze),
        symptom(Pacjent,bol_gardla),
        symptom(Pacjent,katar),
        symptom(Pacjent,kaszel).

hipoteza(Pacjent,przeziebienie) :-
        rodzaj(podobne_do_przeciebienia),
        symptom(Pacjent,bol_glowy),
        symptom(Pacjent,kichanie),
        symptom(Pacjent,bol_gardla),
        symptom(Pacjent,katar),
        symptom(Pacjent,dreszcze).

hipoteza(Pacjent,swinka) :-
        rodzaj(podobne_do_przeciebienia),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,obrzek_wezlow_chlonnych),
        symptom(Pacjent,bol_miesni),
        symptom(Pacjent,bol_uszu),
        symptom(Pacjent,wymioty).

hipoteza(Pacjent,kleszczowe_zapalenie_mozgu) :-
        rodzaj(podobne_do_przeciebienia),
        symptom(Pacjent,bol_glowy),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,dreszcze),
        symptom(Pacjent,bol_miesni),
        symptom(Pacjent,katar).

hipoteza(Pacjent,mononukleoza) :-
        rodzaj(podobne_do_przeciebienia),
        symptom(Pacjent,bol_glowy),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,dreszcze),
        symptom(Pacjent,bol_miesni),
        symptom(Pacjent,katar),
        symptom(Pacjent,obrzek_wezlow_chlonnych),
        symptom(Pacjent,bol_brzucha).

hipoteza(Pacjent,hiv) :-
        symptom(Pacjent,goraczka),
        rodzaj(podobne_do_przeciebienia),
        symptom(Pacjent,obrzek_wezlow_chlonnych),
        symptom(Pacjent,bol_glowy),
        symptom(Pacjent,wysypka),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,biegunka),
        symptom(Pacjent,zmeczenie),
        symptom(Pacjent,bol_brzucha).

hipoteza(Pacjent,odra) :-
        rodzaj(wysypki),
        symptom(Pacjent,wysypka),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,kaszel),
        symptom(Pacjent,zapalenie_spojowek),
        symptom(Pacjent,katar).

hipoteza(Pacjent,ospa_wietrzna) :-
        rodzaj(wysypki),
        symptom(Pacjent,wysypka),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,dreszcze),
        symptom(Pacjent,bol_miesni).

hipoteza(Pacjent,rozyczka) :-
        rodzaj(wysypki),
        symptom(Pacjent,wysypka),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,bol_glowy),
        symptom(Pacjent,katar),
        symptom(Pacjent,biegunka).

hipoteza(Pacjent,szkarlatyna) :-
        rodzaj(wysypki),
        symptom(Pacjent,wysypka),
        symptom(Pacjent,bol_gardla),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,biegunka),
        symptom(Pacjent,obrzek_wezlow_chlonnych).

hipoteza(Pacjent,goraczka_trzydniowa) :-
        rodzaj(wysypki),
        symptom(Pacjent,wysypka),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,biegunka),
        symptom(Pacjent,obrzek_wezlow_chlonnych),
        symptom(Pacjent,rozdraznienie).

hipoteza(Pacjent,kamica_nerkowa) :-
        rodzaj(uklad_moczowy),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,bol_brzucha),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,krwiomocz).

hipoteza(Pacjent,kamica_pecherzowa) :-
        rodzaj(uklad_moczowy),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,bol_brzucha),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,krwiomocz),
        symptom(Pacjent,dreszcze).

hipoteza(Pacjent,kamica_szczawianowa) :-
        rodzaj(uklad_moczowy),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,bol_brzucha),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,dreszcze),
        symptom(Pacjent,omdlenia).

hipoteza(Pacjent,kamienie_nerkowe) :-
        rodzaj(uklad_moczowy),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,bol_brzucha),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,dreszcze),
        symptom(Pacjent,krwiomocz),
        symptom(Pacjent,nipokoj).

hipoteza(Pacjent,klebuszowe_zapalenie_nerek) :-
        rodzaj(uklad_moczowy),
        symptom(Pacjent,bol_glowy),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,dreszcze),
        symptom(Pacjent,krwiomocz),
        symptom(Pacjent,nipokoj).

hipoteza(Pacjent,glistnica) :-
        rodzaj(uklad_pokarmowy),
        symptom(Pacjent,bol_glowy),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,dreszcze),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,zapalenie_spojowek),
        symptom(Pacjent, dusznosci).

hipoteza(Pacjent,gronkowiec) :-
        rodzaj(uklad_pokarmowy),
        symptom(Pacjent,bol_brzucha),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,bol_uszu).

hipoteza(Pacjent,grzybicowe_zapalenie_pluc) :-
        rodzaj(uklad_pokarmowy),
        symptom(Pacjent,deszcze),
        symptom(Pacjent,kaszel),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,biegunka),
        symptom(Pacjent,dusznosci).

hipoteza(Pacjent,grypa_zoladkowa) :-
        rodzaj(uklad_pokarmowy),
        symptom(Pacjent,bol_brzucha),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,bol_glowy),
        symptom(Pacjent,biegunka).

hipoteza(Pacjent,zapalenie_ucha) :-
        rodzaj(laryngologiczne),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,bol_uszu).

hipoteza(Pacjent,perforacja_blony_bebenkowej) :-
        rodzaj(laryngologiczne),
        symptom(Pacjent,bol_uszu),
        symptom(Pacjent,szumy_uszu),
        symptom(Pacjent,goraczka).

hipoteza(Pacjent,robne_zapalenie_migdalkow) :-
        rodzaj(laryngologiczne),
        symptom(Pacjent,bol_gardla),
        symptom(Pacjent,bol_brzucha),
        symptom(Pacjent,bol_glowy),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,obrzek_wezlow_chlonnych).

hipoteza(Pacjent,choroba_stilla) :-
        rodzaj(reumatyczne),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,obrzek_wezlow_chlonnych),
        symptom(Pacjent,bol_miesni),
        symptom(Pacjent,bol_garlda),
        symptom(Pacjent,szumy_uszu).

hipoteza(Pacjent,choroba_stawow_krekow_szyjnych) :-
        rodzaj(reumatyczne),
        symptom(Pacjent,bol_glowy),
        symptom(Pacjent,omdlenia),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,paralize).

hipoteza(Pacjent,zapalenie_wielomiesniowe) :-
        rodzaj(reumatyczne),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,bol_glowy),
        symptom(Pacjent,bol_gardla),
        symptom(Pacjent,rumien).

hipoteza(Pacjent,zespol_sjogrena) :-
        rodzaj(reumatyczne),
        symptom(Pacjent,zapalenie_spojowek),
        symptom(Pacjent,prochnica),
        symptom(Pacjent,bol_gardla).


hipoteza(Pacjent,cisawica) :-
        rodzaj(hormonalne),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,biegunka),
        symptom(Pacjent,bol_brzuha),
        symptom(Pacjent,omdlenia),
        symptom(Pacjent,depresja).

hipoteza(Pacjent,cukrzyca) :-
        rodzaj(hormonalne),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,paralize),
        symptom(Pacjent,depresja).

hipoteza(Pacjent,guz_chromochlonny) :-
rodzaj(hormonalne),
        symptom(Pacjent,bol_glowy),
        symptom(Pacjent,wymioty),
        symptom(Pacjent,biegunka),
        symptom(Pacjent,depresja),
        symptom(Pacjent,nerwowosc).


hipoteza(Pacjent,nadcisnienie) :-
        rodzaj(choroby_serca),
        symptom(Pacjent,zmeczenie),
        symptom(Pacjent,nerwowosc),
        symptom(Pacjent,dusznosci),
        symptom(Pacjent,bol_glowy),
        symptom(Pacjent,lomotanie_serca).

hipoteza(Pacjent,choroba_wiencowa) :-
        rodzaj(choroby_serca),
        symptom(Pacjent,lomotanie_serca),
        symptom(Pacjent,bol_brzucha),
        symptom(Pacjent,bol_ramion),
        symptom(Pacjent,zmeczenie),
        symptom(Pacjent,bol_szyi).

hipoteza(Pacjent,arytmia) :-
        rodzaj(choroby_serca),
        symptom(Pacjent,dusznosci),
        symptom(Pacjent,zmeczenie),
        symptom(Pacjent,dlawienie_w_klatce),
        symptom(Pacjent,omdlenia),
        symptom(Pacjent,nerwowosc).

hipoteza(Pacjent,zawal) :-
        rodzaj(choroby_serca),
        symptom(Pacjent,dlawienie_w_klatce),
        symptom(Pacjent,omdlenia),
        symptom(Pacjent,dreszcze),
        symptom(Pacjent,zmeczenie),
        symptom(Pacjent,biegunka),
        symptom(Pacjent,bol_brzucha),
        symptom(Pacjent,paralize).

hipoteza(Pacjent,nowotwor_serca) :-
        rodzaj(choroby_serca),
        symptom(Pacjent,hipoteza(Pacjent,arytmia)),
        symptom(Pacjent,kaszel),
        symptom(Pacjent,zmeczenie),
        symptom(Pacjent,goraczka),
        symptom(Pacjent,wysypka).


dokumentacja(grypa) :-
    write('Grypa – ostra choroba zakazna ukladu oddechowego wywolana zakazeniem wirusem grypy.'), nl,
    write('Grypa przenosi sie pomiędzy ludzmi drogą kropelkowa (na przykład podczas kichania),'), nl,
    write('a najwieksza ilosc zachorowan wystepuje podczas sezonowych epidemii, powodujac ostre'), nl,
    write('objawy uniemozliwiajace prace osobom czynnym zawodowo.').

dokumentacja(przeziebienie) :-
    write('Przeziebienie – wirusowa choroba zakazna gornych drog oddechowych'), nl,
    write('ze szczegolnie nasilonymi objawami w obrebie nosa.'), nl,
    write(' najpowszechniejsza choroba zakazna wystepująca u ludzi.'), nl.

dokumentacja(swinka) :-
    write('Swinka jest ogolnoustrojowa choroba wywołana zakazeniem wirusem swinki'), nl,
    write('(paramyksowirus) przebiegajaca z zajeciem narzadów gruczolowych (najczesciej '), nl,
    write('slinianek, niekiedy trzustki, rzadziej ukladu nerwowego).'), nl.

dokumentacja(kleszczowe_zapalenie_mozgu) :-
    write('Kleszczowe zapalenie mozgu to choroba ukladu nerwowego,'), nl,
    write('ktorej leczenie moze zajac nawet rok. Na szczescie przed kleszczowym '), nl,
    write('zapaleniem mozgu chroni nas szczepionka.'), nl.

dokumentacja(mononukleoza) :-
    write('Mononukleoza najlatwiej zarazic sie przez pocalunek, dlatego czesto'), nl,
    write('nazywana jest wlasnie choroba pocalunkow. Wywoluje ja wirus przenoszony'), nl,
    write('przez sline. Mononukleoza najczęściej atakuje dzieci i mlodziez.'), nl.

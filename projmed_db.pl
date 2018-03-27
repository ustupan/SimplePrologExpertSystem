
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

rodzaj(Pacjent, reumatyczne) :-
        false.

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

hipoteza(Pacjent,robne_zapalenie_migdalkow) :-
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

hipoteza(Pacjent,choroba_stawow_krekow_szyjnych) :-
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


dokumentacja(grypa) :-
    write('Grypa – ostra choroba zakazna ukladu oddechowego wywolana zakazeniem wirusem grypy.'), nl,
    write('Grypa przenosi sie pomiędzy ludzmi drogą kropelkowa (na przykład podczas kichania),'), nl,
    write('a najwieksza ilosc zachorowan wystepuje podczas sezonowych epidemii, powodujac ostre'), nl,
    write('objawy uniemozliwiajace prace osobom czynnym zawodowo.'), nl.

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

dokumentacja(hiv) :-
    write('Bywa, ze wirus HIV nie daje poczatkowo zadnych dolegliwosci.'), nl,
    write('U innych osob zakazenie HIV daje pierwsze objawy przypominajace grype. '), nl,
    write('Po okolo dwoch tygodniach dolegliwosci mijaja bez sladu. Nastepuje okres bezobjawowy,'), nl,
    write('ktory moze trwac od kilku miesiecy, do nawet kilkunastu lat. Jednak juz wtedy wirus w'), nl,
    write('ukryciu niszczy uklad odpornosciowy.'), nl.

dokumentacja(odra) :-
    write('Odra jest ostrą, wirusową chorobą zakaźną, charakteryzującą się gruboplamistą'), nl,
    write('wysypką, zapaleniem błon śluzowych dróg oddechowych i spojówek z towarzyszącą gorączką.'), nl.

dokumentacja(ospa_wietrzna) :-
    write('Ospa wietrzna to choroba wywolywana przez wirusa. Charakteryzuje sie'), nl,
    write('specyficzna wysypka i pojawianiem sie czerwonych grudek na ciele.'), nl,
    write('To powszechna wsrod dzieci choroba, która kiedys uwazana byla niemal za rytual przejscia.'), nl.

dokumentacja(rozyczka) :-
    write('Rozyczka jest wysypkowa choroba zakazna wywolana przez wirus z rodziny Togaviridae.'), nl,
    write('W czasie choroby wirus jest obecny w wydzielinie z nosa i gardla, we krwi, w kale i moczu.'), nl,
    write('Mozna go uzyskac z jamy nosowo-gardłowej od ok. 7 dni przed wysypka do 14 dni po jej zniknieciu.'), nl.

dokumentacja(szkarlatyna) :-
    write('Szkarlatyne wywoluja niektore szczepy paciorkowcow, produkujace toksyne bakteryjna.'), nl,
    write('Paciorkowce to bakterie wywolujace m.in. angine. Zrodlem zakazenia jest chory na'), nl,
    write('angine lub plonice. Zarazic sie mozna droga kropelkowa.'), nl.

dokumentacja(goraczka_trzydniowa) :-
    write('Goraczka trzydniowa, czyli inaczej rumien nagly czy trzydniowka, to choroba wywolana przez herpeswirusy.'), nl,
    write('Ma ona ostry przebieg i wywoluje bardzo wysoka goraczke trwajaca kilka dni. Rumien nagly wystepuje u'), nl,
    write('dzieci między 6. a 24. miesiącem życia.'), nl.

dokumentacja(kamica_nerkowa) :-
    write('Kamica nerkowa to cztery schorzenia ukladu moczowego o podobnych objawach, ale innych przyczynach.'), nl,
    write('U podloza kamicy cystynowej lezy wada wrodzona, trzy pozostale - kamica fosforanowa,'), nl,
    write('kamica szczawianowa i kamica moczanowa - wynikaja z bledow dietetycznych.'), nl.

dokumentacja(kamica_pecherzowa) :-
    write('Kamica pecherzowa jest jedna z odmian kamicy nerkowej. Glowna przyczyna jej powstawania.'), nl,
    write('jest zwiekszona ilosc wydalanego z moczem kwasu moczowego. Moze byc to zwiazane'), nl,
    write('z cierpieniem na pewnego rodzaju wrodzone wady metaboliczne.'), nl.

dokumentacja(kamica_szczawianowa) :-
    write('Kamica szczawianowa to jedna z odmian kamicy nerkowej. Rozwoj schorzenia spowodowany jest'), nl,
    write('nadmiernym odkladaniem sie w nerkach oraz drogach moczowych szczawianow. Mimo ze diagnozowana '), nl,
    write('jest stosunkowo czesto to przyczyny zalegania tego zwiazku chemicznego nie sa do konca znane.'), nl.

dokumentacja(kamienie_nerkowe) :-
    write('Kamienie w nerkach tworza sie trzy razy czesciej u mezczyzn niz u kobiet. Przyczyna ich powstawania jest'), nl,
    write('odkladanie sie zlogow w nerkach lub pecherzu moczowym. Na szczescie jest coraz wiecej sposobow ich usuwania.'), nl,
    write('Kamienie mozna rozbic, rozpuscic, urodzic.'), nl.

dokumentacja(klebuszowe_zapalenie_nerek) :-
    write('Choroby klebuszkow nerkowych sa istotnym problemem w nefrologii. Cechuja sie zajeciem przez proces zapalny'), nl,
    write('wylacznie lub glownie klebuszkww nerkowych. Zmiany dotyczace innych struktur nerek (cewki, utkanie srodmiazszowe,'), nl,
    write('naczynia) maja charakter wtorny i sa nastepstwem zaburzen wczesniejszych'), nl.

dokumentacja(glistnica) :-
    write('Glistnica lub inaczej askarioza to choroba pasozytnicza, ktora wywoluje glista ludzka (Ascaris lumbricoides),'), nl,
    write('pasozyt z rodziny nicieni. Glistnica jest choroba rozpowszechniona na calym swiecie. Czlowiek zaraza się glistnica,'), nl,
    write('pijac wode lub zjadajac niemyte owoce lub warzywa zanieczyszczone kalem zwierzecym.'), nl.

dokumentacja(gronkowiec) :-
    write('Gronkowiec atakuje zarowno ludzi jak i zwierzeta. Czasem wystarczy chwilowe obnizenie'), nl,
    write('odpornosci i oslabienie ukladu immunologicznego, zeby gronkowiec wniknal do organizmu,'), nl,
    write('powodujac czesto grozne dla zycia, dolegliwosci.'), nl.

dokumentacja(grzybicowe_zapalenie_pluc) :-
    write('Grzybicze zapalenie pluc to odmiana zapalenia pluc wywolywana przez grzyby. Wiele osob je'), nl,
    write('bagatelizuje, nie zwracajac uwagi na konsekwencje braku odpowiedniego leczenia, ktore moga'), nl,
    write('byc bardzo powazne. Grzybicze zapalenie pluc mozna tymczasem wyleczyc bardzo szybko, stosujac'), nl,
    write('odpowiednie metody'), nl.

dokumentacja(grypa_zoladkowa) :-
    write('Grypa zoladkowa, czyli jelitowka, to wirusowe zakazenie przewodu pokarmowego. Pojawia sie'), nl,
    write('szybko i stosunkowo szybko przechodzi. Grypa zoladkowa objawia sie goraczka, bolem brzucha,'), nl,
    write('biegunka i wymiotami. Symptomy jelitowki latwo pomylic z zatruciem pokarmowym,'), nl,
    write('ale objawow lepiej nie badatelizowac.'), nl.

dokumentacja(zapalenie_ucha) :-
    write('Ostre zapalenie ucha srodkowego jest to proces zapalny obejmujacy blone sluzowa'), nl,
    write('oraz struktury ucha srodkowego rozwijajacy sie nagle, z ogolnymi i/lub miejscowymi'), nl,
    write('objawami ostrego stanu zapalnego i obecnoscia ropnej wydzieliny w jamie bebenkowej.'), nl.

dokumentacja(perforacja_blony_bebenkowej) :-
    write('Perforacja blony bebenkowej oznacza pekniecie, przedziurawienie blony bebenkowej,'), nl,
    write('glownej czesci ucha srodkowego, ktora odgrywa kluczowa role w procesie slyszenia.'), nl,
    write('To wlasnie dzieki bebenkowi fale dzwiekowe mogą byc przeksztalcone w drgania i'), nl,
    write('przeniesione na kosteczki sluchowe.'), nl.

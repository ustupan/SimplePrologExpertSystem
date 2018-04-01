:- use_module(library(dcg/basics)).
:-(clause(zawodnik(_,_),_); consult('projmed_db.pl')).
:-(clause(dokumentacja(_),_); consult('dokumentacja_db.pl')).

menu:-
    write('********************************************************'), nl,
    write('*                                                      *'), nl,
    write('*                      PROJMED.                        *'), nl,
    write('*    Prosty system ekspertowy do wykrywania chorob.    *'), nl,
    write('*               1.- Rozpocznij analize                 *'), nl,
    write('*               2.- Przeglad bazy chorob               *'), nl,
    write('*               3.- Dodaj chorobę do bazy              *'), nl,
    write('*               4.- Koniec pracy                       *'), nl,
	  write('*                                                      *'), nl,
    write('********************************************************'), nl,
    read_line_to_codes(user_input,MenuCodes),
    string_codes(MyString,MenuCodes),
    atom_number(MyString, Wybor),
    menul(Wybor).

menul(1):-
    write('********************************************************'), nl,
    write('*System wykryje chorobe na podstawie twoich odpowiedzi *'), nl,
    write('********************************************************'), nl, nl,
    start.

menul(2):-
    nl,nl,
    write('Podaj chorobe, aby sprawdzic czy mamy ja w bazie:'), nl,
    read_line_to_codes(user_input,MenuCodes),
    wyszukaj(MenuCodes).

menul(3):-
    nl,nl,
    add_choroba.

menul(4):-
    nl,nl,
    write('Dzieki za wspolprace'), nl,
    abolish(known,3),
    abolish(wiek,1),
    halt.

start:-
    write('Jak masz na imie?'), nl,
    read_line_to_codes(user_input,Codes1),
    capitalize(Codes1,Codes2)
    ->
    atom_codes(Name,Codes2),
    write('Ile masz lat?'), nl,
    read_line_to_codes(user_input,WiekPacjenta),
    atom_codes(WiekPacjenta2,WiekPacjenta),
    atom_number(WiekPacjenta2, WiekPac),
    istBiggerThen(WiekPac,50),
    repeat,
    abolish(known/3),
    dynamic(known/3),
    retractall(known/3),
    diagnose(Name), nl, nl,
    write('Chcesz sprobowac ponownie? (t/n)'), nl,
    read(Resp),\+ Resp=t, nl, nl,
    write('Dzieki za wspolprace'),
    abolish(known,3),
    abolish(wiek,1).

symptom(_, Val):- nl, ask('Czy odczuwasz symptom taki jak ',Val).

ask(Pytanie, Val):- known(Pytanie, Val, true),!.
ask(Pytanie, Val):- known(Pytanie, Val, false),!, fail.

ask(Pytanie, Val):-
    write(Pytanie),write(Val) , write('? (t/n)'), nl,
    read(Ans), !,
    ((Ans=t, assert(known(Pytanie, Val, true)));
    (assert(known(Pytanie, Val, false)),fail)).

diagnose(Pacjent):-
    nl, hipoteza(Pacjent,Disease),
    !, nl,
    write(Pacjent),
    write(',prawdopodobnie twoja choroba to: '),
    write(Disease), nl,
    info(Disease).

diagnose(_):-
    nl, write('Niestety nie wiem co to za choroba').

info(Disease):-
    write('Czy chcesz dowiedziec sie wiecej o tej chorobie? (t/n)'), nl, nl,
    read(Resp), nl,
    \+ Resp=t
    ->
    true;
    dokumentacja(Disease).

capitalize([],[]).

capitalize([H1|T], [H2|T]):-
    code_type(H2, to_upper(H1)).

istBiggerThen(X,Y) :-
    X > Y
    -> assert(wiek(1));
    assert(wiek(0)).

wyszukaj(Choroba):-
    \+ file_contains('b.txt', Choroba),
    write('Nie posiadamy jej w bazie'), nl,
    !.

wyszukaj(Choroba):-
    file_contains('b.txt', Choroba),
    write('Tak posiadamy ja w bazie!'), nl,
    write('Czy chcesz dowiedziec sie wiecej o tej chorobie? (t/n)'), nl, nl,
    read(Resp), nl,
    \+ Resp=t
    ->
    true;
    dokumentacja(Choroba).

file_contains(File, Pattern) :-
    phrase_from_file(match(Pattern), File).

match(Pattern) -->
    string(_),
    string(Pattern),
    string(_).

add_choroba:-
    open('projmed_db.pl', append, Handle), nl,
    write('Podaj nazwe:'), nl,
    read(Nazwa),
    write(Handle,'hipoteza(Pacjent,'), write(Handle, Nazwa), write(Handle, ') :- \n'),
    close(Handle),
    add_rodzaj.

add_rodzaj:-
    open('projmed_db.pl', append, Handle), nl,
    write('Wybierz rodzaj:'), nl,
    write(Handle, '\t'),
    write('1. podobne_do_przeciebienia'), nl,
    write('2. wysypki'), nl,
    write('3. uklad_moczowy'), nl,
    write('4. uklad_pokarmowy'), nl,
    write('5. laryngologiczne'), nl,
    write('6. reumatyczne'), nl,
    write('7. hormonalne'), nl,
    write('8. choroby_serca'), nl,
    read(Rodzaj),
    write(Handle, 'rodzaj(Pacjent,'),
    (Rodzaj = 1, write(Handle, 'podobne_do_przeciebienia),\n');
    Rodzaj = 2, write(Handle, 'wysypki),\n');
    Rodzaj = 3, write(Handle, 'uklad_moczowy),\n');
    Rodzaj = 4, write(Handle, 'uklad_pokarmowy),\n');
    Rodzaj = 5, write(Handle, 'laryngologiczne),\n');
    Rodzaj = 6, write(Handle, 'reumatyczne),\n');
    Rodzaj = 7, write(Handle, 'hormonalne),\n'); !,
    write(Handle, 'choroby_serca),\n')),
    close(Handle),
    add_symptom.

add_symptom:-
    open('projmed_db.pl', append, Handle), nl,
    repeat,
    write('Podaj symptom:'), nl,
    write(Handle, '\t'),
    read(Symptom),
    write(Handle,'symptom(Pacjent,'), write(Handle, Symptom), write(Handle, '),\n'),
    write('Chcesz dodac kolejny symptom? (t/n)'), nl,
    read(Resp),
    \+ Resp=t, nl, nl,
    write(Handle, '\tnl. \n \n'),
    write('Dzieki za wspolprace \n'),
    close(Handle).

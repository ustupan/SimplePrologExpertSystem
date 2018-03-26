menu:-
    write('********************************************************'), nl,
    write('*                                                      *'), nl,
    write('*                      PROJMED.                        *'), nl,
    write('*    Prosty system ekspertowy do wykrywania chorob.    *'), nl,
    write('*               1.- Rozpocznij analize                 *'), nl,
    write('*               2.- Przeglad bazy chorob               *'), nl,
    write('*               3.- Koniec pracy                       *'), nl,
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

menu1(2):-
    nl,nl,
	write('Podaj chorobe, aby sprawdzic czy mamy ja w bazie:'), nl,
	read(Choroba), nl,
	!,
	wyszukaj(Choroba),
	dalej(Odp),
	(Odp = t, menu1(2) ; menu).


start:-
    write('Jak masz na imie?'), nl,
    read_line_to_codes(user_input,Codes1),
    capitalize(Codes1,Codes2)
    ->
    atom_codes(Name,Codes2),
    repeat,
    abolish(known/3),
    dynamic(known/3),
    retractall(known/3),
    diagnose(Name), nl, nl,
    write('Chcesz sprobowac ponownie ? (t/n)'), nl,
    read(Resp),\+ Resp=t, nl,
    write('Dzieki za wspolprace'),
    abolish(known,3) .


symptom(X, Val):- nl, write(X), ask(' czy odczuwasz symptom taki jak ',Val).

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
    write('Moze to byc '),
    write(Disease).

diagnose(_):-
    nl, write('Niestety nie wiem co to za choroba').

capitalize([],[]).
capitalize([H1|T], [H2|T]):-
    code_type(H2, to_upper(H1)).

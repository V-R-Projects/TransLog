
% Defining English Greetings

gretting(sal(f1)) --> ["hi"].
gretting(sal(f2)) --> ["hello"].
gretting(sal(f3)) --> ["bro"].
gretting(sal(f4)) --> ["bye"].

% Defining English Modifiers

modifier(a(art)) --> ["the"].
modifier(a(art1)) --> ["a"].
modifier(a(art2)) --> ["some"].
modifier(a(art3)) --> ["that"].
modifier(a(art4)) --> ["those"].

% Auxiliar Words for Questions

auxiliar(au(aux1)) --> ["when"].
auxiliar(au(aux2)) --> ["what"].
auxiliar(au(aux3)) --> ["where"].
auxiliar(au(aux4)) --> ["why"].
auxiliar(au(aux5)) --> ["which"].

% Verb To Be

verb_to_be(tobe(tb1), sg, primera) --> ["am"].
verb_to_be(tobe(tb2), pl, _) --> ["are"].
verb_to_be(tobe(tb3), sg,_) --> ["is"].

% Defining English subjects

subject(suj(su1), _, primera) --> ["i"].
subject(suj(su2), pl, primera) --> ["we"].
subject(suj(su3), pl, segunda) --> ["you"].
subject(suj(su4), pl, tercera) --> ["they"].
subject(suj(su5), sg, tercera) --> ["she"].
subject(suj(su6), sg, tercera) --> ["he"].
subject(suj(su7), sg, tercera) --> ["it"].

% Defining English Nouns

noun(sus(s1),sg) --> ["girl"]. 
noun(sus(s2),sg) --> ["boy"]. 
noun(sus(s3),pl) --> ["girls"]. 
noun(sus(s4),pl) --> ["boys"]. 
noun(sus(s5),sg) --> ["cat"]. 
noun(sus(s6),pl) --> ["cats"]. 
noun(sus(s7),sg) --> ["dog"].
noun(sus(s8),pl) --> ["dogs"].
noun(sus(s9),sg) --> ["person"].
noun(sus(s10),sg) --> ["people"].
noun(sus(s11),sg) --> ["computer"].
noun(sus(s12),pl) --> ["computers"].
noun(sus(s13),sg) --> ["teacher"].
noun(sus(s14),pl) --> ["teachers"].
noun(sus(s15),sg) --> ["mother"].
noun(sus(s16),sg) --> ["father"].
noun(sus(s17),pl) --> ["parents"].
noun(sus(s18),sg) --> ["food"].
noun(sus(s19),sg) --> ["pet"].
noun(sus(s20),pl) --> ["pets"].

% Defining English Verbs

verb(v(v1),sg) --> ["eats"].
verb(v(v2),pl) --> ["eat"].

verb(v(v3),sg) --> ["loves"].
verb(v(v4),pl) --> ["love"].

verb(v(v5),sg) --> ["plays"].
verb(v(v6),pl) --> ["play"].

verb(v(v7),sg) --> ["walks"].
verb(v(v8),pl) --> ["walk"].

verb(v(v9),sg) --> ["goes"].
verb(v(v10),pl) --> ["go"].

verb(v(v11),sg) --> ["cooks"].
verb(v(v12),pl) --> ["cook"].

verb(v(v13),sg) --> ["speaks"].
verb(v(v14),pl) --> ["speak"].

verb(v(v15),sg) --> ["writes"].
verb(v(v16),pl) --> ["write"].

verb(v(v17),sg) --> ["reads"].
verb(v(v18),pl) --> ["read"].

verb(v(v19),sg) --> ["watches"].
verb(v(v20),pl) --> ["watch"].
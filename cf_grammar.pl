% Context Free Grammar Code

% Including Files
:-[spanish_db].
:-[english_db].

% SPANISH GRAMMAR

% Generating Sentences in Spanish
oracion(s(S,V,O)) --> sintagma_nominal(S,Num,Pers), verbo(V,Num,Pers), sintagma_nominal(O,_,_).
oracion(s(S,V,O)) --> sintagma_nominal(S,Num,Pers), verbo(V,Num,Pers).
oracion(s(S,V,O)) --> sintagma_nominal(S,Num,Pers).
oracion(s(S,V)) --> sintagma_nominal(S,Num,Pers), signo_pregunta(V).
oracion(s(S)) --> saludos(S).

% Facts for Spanish Nominal Predicate
sintagma_nominal(art(M,S),Num,Pers) --> articulo(M,Gen,Num), sustantivo(S,Gen,Num,Pers).
sintagma_nominal(art(M,S),Num,Pers) --> sustantivo(S,Gen,Num,Pers).
sintagma_nominal(art(M,S),Num, Pers) --> sujeto(S,Gen,Num,Pers).

% Facts for Spanish Greetings.
saludos(salu(S)) --> saludo(S).
saludos(salu(S, T)) --> saludo(S), saludo(D).


% ENGLISH GRAMMAR

% Generating Sentences in English
sentence(s(S,V,O)) --> nominal_predicate(S,Num), verb(V,Num), nominal_predicate(O,_).
sentence(s(S,V)) --> nominal_predicate(S,Num), verb(V,Num).
sentence(s(S)) --> nominal_predicate(S,Num).
sentence(s(S)) --> question(S,Num,Pers).
sentence(s(S)) --> grettings(S).

% Facts for English Nominal Predicate
nominal_predicate(art(A,S),Num) --> modifier(A), noun(S,Num).
nominal_predicate(art(S), Num,Pers) --> subject(S,Num,Pers).

% Facts for English Questions
question(det(A,T,S),Num,Pers) --> auxiliar(A), verb_to_be(T,Num,Pers), subject(S,Num,Pers).

% Facts for English Greetings
grettings(sal(S)) --> gretting(S).
grettings(sal(S, D)) --> gretting(S), gretting(D).
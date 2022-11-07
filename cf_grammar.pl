% Context Free Grammar Code

:-style_check(-singleton). % step out warnings

% Including Files
:-[spanish_db].
:-[english_db].

% SPANISH GRAMMAR

% Generating Sentences in Spanish
oracion(s(S,V,O)) --> sintagma_nominal(S,Gen,Pers,Num), sintagma_verbal(V,Pers,Num), sintagma_nominal(O,_,_,_).
oracion(s(S,V)) --> sintagma_nominal(S,Gen,Pers,Num), sintagma_verbal(V,Pers,Num).
oracion(s(S)) --> sintagma_nominal(S,Gen,Pers,Num).
oracion(s(S)) --> pregunta(S,Gen,Num,Pers).
oracion(s(S)) --> saludos(S).

% Facts for Spanish Verbal Predicate
sintagma_verbal(V,Pers,Num) --> verbo(V,Pers,Num).

% Facts for Spanish Nominal Predicate
sintagma_nominal(det(M,S),Gen,Pers,Num) --> articulo(M,Gen,Num), sustantivo(S,Gen,Pers,Num).
sintagma_nominal(det(S),Gen,Pers,Num) --> sustantivo(S,Gen,Pers,Num).
sintagma_nominal(det(S),Gen,Pers,Num) --> sujeto(S,Gen,Pers,Num).

% Facts for Questions in Spanish
pregunta(det(A,T,S,P),Gen,Num,Pers) --> auxiliares(A,Num), ser(T,Num,Pers), sujeto(S,Gen,Pers,Num), signo_pregunta(P).
pregunta(det(A,D,T,S,P),Gen,Num,Pers) --> auxiliares(A,Num), ser(D,Num,Pers), articulo(T,Gen,Num), sustantivo(S,Gen,Pers,Num), signo_pregunta(P).

% Facts for Spanish Greetings.
saludos(sal(S)) --> saludo(S).
saludos(sal(S, D)) --> saludo(S), saludo(D).

% ENGLISH GRAMMAR

% Generating Sentences in English
sentence(s(S,V,O)) --> nominal_predicate(S,Num,Pers), verbal_predicate(V,Num), nominal_predicate(O,_).
sentence(s(S,V)) --> nominal_predicate(S,Num,Pers), verbal_predicate(V,Num).
sentence(s(S)) --> nominal_predicate(S,Num,Pers).
sentence(s(S)) --> question(S,Num,Pers).
sentence(s(S)) --> grettings(S).

% Facts for Spanish Verbal Predicate
verbal_predicate(V,Num) --> verb(V,Num).

% Facts for English Nominal Predicate
nominal_predicate(det(A,S),Num) --> modifier(A), noun(S,Num).
nominal_predicate(det(S),Num) --> noun(S,Num).
nominal_predicate(det(S), Num,Pers) --> subject(S,Num,Pers).

% Facts for English Questions
question(det(A,T,S,P),Num,Pers) --> auxiliar(A), verb_to_be(T,Num,Pers), subject(S,Num,Pers),signo_pregunta(P).
question(det(A,T,M,S,P),Num,Pers) --> auxiliar(A), verb_to_be(T,Num,Pers), modifier(M), noun(S,Num),signo_pregunta(P).

% Facts for English Greetings
grettings(sal(S)) --> gretting(S).
grettings(sal(S,D)) --> gretting(S), gretting(D).

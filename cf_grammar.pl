% Context Free Grammar Code

% Including Files
:-[spanish_db].
:-[english_db].

% SPANISH GRAMMAR

% Generating Sentences in Spanish
oracion(s(S,V,O)) --> sintagma_nominal(S,Pers,Num), verbo(V,Pers,Num), sintagma_nominal(O,_,_).
oracion(s(S,V)) --> sintagma_nominal(S,Pers,Num), verbo(V,Pers,Num).
oracion(s(S)) --> sintagma_nominal(S,Pers,Num).
oracion(s(S,V)) --> sintagma_nominal(S,Pers,Num), signo_pregunta(V).
oracion(s(S)) --> saludos(S).

% Facts for Spanish Nominal Predicate
sintagma_nominal(det(M,S),Pers,Num) --> articulo(M,Gen,Num), sustantivo(S,Gen,Pers,Num).
sintagma_nominal(det(S),Pers,Num) --> sustantivo(S,Gen,Pers,Num).
sintagma_nominal(det(S),Num, Pers) --> sujeto(S,Gen,Pers,Num).

% Facts for Spanish Greetings.
saludos(sal(S)) --> saludo(S).
saludos(sal(S, D)) --> saludo(S), saludo(D).

% ENGLISH GRAMMAR

% Generating Sentences in English
sentence(s(S,V,O)) --> nominal_predicate(S,Num), verb(V,Num), nominal_predicate(O,_).
sentence(s(S,V)) --> nominal_predicate(S,Num), verb(V,Num).
sentence(s(S)) --> nominal_predicate(S,Num).
sentence(s(S)) --> question(S,Num,Pers).
sentence(s(S)) --> grettings(S).

% Facts for English Nominal Predicate
nominal_predicate(det(A,S),Num) --> modifier(A), noun(S,Num).
nominal_predicate(det(S),Num) --> noun(S,Num).
nominal_predicate(det(S), Num,Pers) --> subject(S,Num,Pers).

% Facts for English Questions
question(det(A,T,S,Q),Num,Pers) --> auxiliar(A), verb_to_be(T,Num,Pers), subject(S,Num,Pers), signo_pregunta(Q).

% Facts for English Greetings
grettings(sal(S)) --> gretting(S).

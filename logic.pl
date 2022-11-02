% Logic File

% Including Files
:-[cf_grammar].

% Steping out warnings
:-style_check(-singleton).

% Calling the Translator
transLog():-
    writeln("Digite 1 para Espanol-Ingles / Digite 2 para Ingles-Espanol 2 / Salir-Quit 3"),
    read(OPTION),
    consulta(OPTION).

% Checking equality
igualdad(X,Y):- X==Y.

% Spanish to English
consulta(OPTION):-
    igualdad(OPTION,1),
    writeln("Ingrese su Texto: "),
    read(FRASE),
    string_lower(FRASE, FRASE_MIN), % to lower case
    split_string(FRASE_MIN, " ", " ", LIST), 
    phrase(oracion(A), LIST),
    phrase(sentence(A), RESULT),
    atomic_list_concat(RESULT, " ", ATOM),
    atom_string(ATOM, String),
    writeln(String),
    transLog(), !.

% English to Spanish
consulta(OPTION):-
    igualdad(OPTION,2),
    writeln("Enter your Text: "),
    read(FRASE),
    string_lower(FRASE, FRASE_MIN), % to lower case
    split_string(FRASE_MIN, " ", " ", LIST),
    phrase(sentence(A), LIST),
    phrase(oracion(A), RESULT),
    atomic_list_concat(RESULT, " ", ATOM),
    atom_string(ATOM, String),
    writeln(String), 
    transLog(), !.

% Quit Option
consulta(OPTION):-
    igualdad(OPTION,3),
    writeln("Good bye / Adios").

% Continue conversation
consulta(OPTION):-
    writeln("No entendi, intenta otra vez / Did not understand, try again..."),
    transLog().

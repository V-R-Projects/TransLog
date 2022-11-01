:-[cf_grammar].

transLog():-
    write("Digite 1 para Espanol-Ingles / Digite 2 para Ingles-Espanol 2: "),
    read(OPTION),
    consulta_leng(OPTION).


igualdad(X,Y):- X==Y.

% Español a ingles
consulta_leng(OPTION):-
    igualdad(OPTION,1),
    writeln("Ingrese su Texto: "),
    read(FRASE),
    string_lower(FRASE, FRASE_MIN),
    split_string(FRASE_MIN, " ", " ", LIST),
    phrase(oracion(A), LIST),
    phrase(sentence(A), RESULT),
    atomic_list_concat(RESULT, " ", ATOM),
    atom_string(ATOM, String),
    write(String).

% Ingles a español
consulta_leng(OPTION):-
    igualdad(OPTION,2),
    writeln("Enter your Text: "),
    read(FRASE),
    string_lower(FRASE, FRASE_MIN),
    split_string(FRASE_MIN, " ", " ", LIST),
    phrase(sentence(A), LIST),
    phrase(oracion(A), RESULT),
    atomic_list_concat(RESULT, " ", ATOM),
    atom_string(ATOM, String),
    write(String).
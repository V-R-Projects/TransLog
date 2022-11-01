
% Defining Spanish Greetings

saludo(sal(f1)) --> ["pura"], saludo_auxiliar(Id).
saludo(sal(f2)) --> ["hola"].
saludo(sal(f3)) --> ["mae"].
saludo(sal(f4)) --> ["adios"].
saludo_auxiliar(id1) --> ["vida"].


% Defining Spanish modifiers

articulo(a(art),f,sg) --> ["la"].
articulo(a(art),m,sg) --> ["el"].
articulo(a(art),f,pl) --> ["las"].
articulo(a(art),m,pl) --> ["los"].
articulo(a(art1),f,sg) --> ["una"].
articulo(a(art1),m,sg) --> ["un"].
articulo(a(art2),f,pl) --> ["unas"].
articulo(a(art2),m,pl) --> ["unos"].
articulo(a(art3),f,sg) --> ["esa"].
articulo(a(art3),m,sg) --> ["eso"].
articulo(a(art4),f,pl) --> ["esas"].
articulo(a(art4),m,pl) --> ["esos"].

% Defining Spanish subjects

sujeto(suj(su1), _,primera, _) --> ["yo"].

sujeto(suj(su2), f,primera,pl) --> ["nosotras"].
sujeto(suj(su2), m,primera,pl) --> ["nosotros"].

sujeto(suj(su3), _,segunda,sg) --> ["usted"].
sujeto(suj(su3), _,segunda,pl) --> ["ustedes"].

sujeto(suj(su5), f,tercera,sg) --> ["ella"].
sujeto(suj(su6), m,tercera,sg) --> ["él"].

sujeto(suj(su4), f,tercera,pl) --> ["ellas"].
sujeto(suj(su4), m,tercera,pl) --> ["ellos"].

sujeto(suj(su7), _,tercera,singular) --> [""].

% Defining Spanish Nouns

sustantivo(sus(s1),f, tercera, sg) --> ["niña"].
sustantivo(sus(s2),m, tercera, sg) --> ["niño"].
sustantivo(sus(s3),f, tercera, pl) --> ["niñas"].
sustantivo(sus(s4),m, tercera, pl) --> ["niños"].
sustantivo(sus(s5),m, tercera, sg) --> ["gato"].
sustantivo(sus(s6),m, tercera, pl) --> ["gatos"].
sustantivo(sus(s7),m, tercera, sg) --> ["perro"].
sustantivo(sus(s8),m, tercera, pl) --> ["perros"].
sustantivo(sus(s9),f, tercera, sg) --> ["persona"].
sustantivo(sus(s10),f, tercera, sg) --> ["gente"].
sustantivo(sus(s11),f, tercera, sg) --> ["computadora"].
sustantivo(sus(s12),f, tercera, pl) --> ["computadoras"].
sustantivo(sus(s13),f, tercera, sg) --> ["profesora"].
sustantivo(sus(s13),m, tercera, sg) --> ["profesor"].
sustantivo(sus(s14),f, tercera, sg) --> ["profesoras"].
sustantivo(sus(s14),m, tercera, pl) --> ["profesores"].
sustantivo(sus(s15),f, tercera, sg) --> ["mamá"].
sustantivo(sus(s16),m, tercera, sg) --> ["papá"].
sustantivo(sus(s17),m, tercera, pl) --> ["papás"].
sustantivo(sus(s18),f, tercera, sg) --> ["comida"].
sustantivo(sus(s19),f, tercera, sg) --> ["mascota"].
sustantivo(sus(s20),f, tercera, pl) --> ["mascotas"].


% Defining Spanish Verbs

verbo(v(v1), tercera, sg) --> ["come"].
verbo(v(v2), primera, sg) --> ["como"].
verbo(v(v2), primera, pl) --> ["comemos"].
verbo(v(v2), segunda, sg) --> ["come"].
verbo(v(v2), segunda, pl) --> ["comen"].
verbo(v(v2), tercera, pl) --> ["comen"].

verbo(v(v3), tercera, sg) --> ["ama"].
verbo(v(v4), primera, sg) --> ["amo"].
verbo(v(v4), primera, pl) --> ["amamos"].
verbo(v(v4), segunda, sg) --> ["ama"].
verbo(v(v4), segunda, pl) --> ["aman"].
verbo(v(v4), tercera, pl) --> ["aman"].

verbo(v(v5), tercera, sg) --> ["juega"].
verbo(v(v6), primera, sg) --> ["juego"].
verbo(v(v6), primera, pl) --> ["jugamos"].
verbo(v(v6), segunda, sg) --> ["juega"].
verbo(v(v6), segunda, pl) --> ["juegan"].
verbo(v(v6), tercera, pl) --> ["juegan"].

verbo(v(v7), tercera, sg) --> ["camina"].
verbo(v(v8), primera, sg) --> ["camino"].
verbo(v(v8), primera, pl) --> ["caminamos"].
verbo(v(v8), segunda, sg) --> ["camina"].
verbo(v(v8), segunda, pl) --> ["caminan"].
verbo(v(v8), tercera, pl) --> ["caminan"].

verbo(v(v9), tercera, sg) --> ["va"]. 
verbo(v(v10), primera, sg) --> ["voy"]. 
verbo(v(v10), primera, pl) --> ["vamos"]. 
verbo(v(v10), segunda, sg) --> ["va"]. 
verbo(v(v10), segunda, pl) --> ["van"]. 
verbo(v(v10), tercera, pl) --> ["van"]. 

verbo(v(v11), tercera, sg) --> ["cocina"]. 
verbo(v(v12), primera, sg) --> ["cocino"]. 
verbo(v(v12), primera, pl) --> ["cocinamos"]. 
verbo(v(v12), segunda, sg) --> ["cocina"]. 
verbo(v(v12), segunda, pl) --> ["cocinan"]. 
verbo(v(v12), tercera, pl) --> ["cocinan"]. 

verbo(v(v13), tercera, sg) --> ["habla"]. 
verbo(v(v14), primera, sg) --> ["hablo"]. 
verbo(v(v14), primera, pl) --> ["hablamos"]. 
verbo(v(v14), segunda, sg) --> ["habla"]. 
verbo(v(v14), segunda, pl) --> ["hablan"]. 
verbo(v(v14), tercera, pl) --> ["hablan"]. 

verbo(v(v15), tercera, sg) --> ["escribe"]. 
verbo(v(v16), primera, sg) --> ["escribo"]. 
verbo(v(v16), primera, pl) --> ["escribimos"]. 
verbo(v(v16), segunda, sg) --> ["escribe"]. 
verbo(v(v16), segunda, pl) --> ["escriben"]. 
verbo(v(v16), tercera, pl) --> ["escriben"]. 

verbo(v(v17), tercera, sg) --> ["lee"]. 
verbo(v(v18), primera, sg) --> ["leo"]. 
verbo(v(v18), primera, pl) --> ["leemos"]. 
verbo(v(v18), segunda, sg) --> ["lee"]. 
verbo(v(v18), segunda, pl) --> ["leen"]. 
verbo(v(v18), tercera, pl) --> ["leen"]. 

verbo(v(v19), tercera, sg) --> ["observa"]. 
verbo(v(v20), primera, sg) --> ["observo"]. 
verbo(v(v20), primera, pl) --> ["observamos"]. 
verbo(v(v20), segunda, sg) --> ["observa"]. 
verbo(v(v20), segunda, pl) --> ["observan"]. 
verbo(v(v20), tercera, pl) --> ["observan"]. 

% Question Mark

signo_pregunta(sp(sp1)) --> ["?"].
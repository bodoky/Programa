:-use_module(library(pce)).

esrespuesta('si').
esrespuesta('no').
%---------------------------------------------------------------------
%HECHOS PARA TEST DE NIÑOS
%---------------------------------------------------------------------
%HECHO 1: Se siente bien estando solo.
espregunta('Se siente bien estando solo?',X):-esrespuesta(X).
%HECHO 2: Tiene menos de 3 amigos en clase.
espregunta('Tiene menos de 3 amigos en clase?',X):-esrespuesta(X).
%HECHO 3: Tiene más de 3 amigos en clase.
espregunta('Tiene más de 3 amigos en clase?',X):-esrespuesta(X).
%HECHO 4: Presenta problemas de comportamiento.
espregunta('Presenta problemas de comportamiento?',X):-esrespuesta(X).
%HECHO 5: Tiene problemas de Autoestima.
espregunta('Tiene problemas de Autoestima?',X):-esrespuesta(X).
%HECHO 6: Es callado en clases.
espregunta('Es callado en clases?',X):-esrespuesta(X).
%HECHO 7: Le gusta formar grupos en clase.
espregunta('Le gusta formar grupos en clase?',X):-esrespuesta(X).
%HECHO 8: Es ordenado.
espregunta('Es ordenado?',X):-esrespuesta(X).
%HECHO 9: Es optimista.
espregunta('Es optimista?',X):-esrespuesta(X).
%HECHO 10: Es solidario con sus compañeros.
espregunta('Es solidario con sus compañeros?',X):-esrespuesta(X).
%---------------------------------------------------------------------
%%HECHOS PARA TEST DE JÓVENES
%---------------------------------------------------------------------
%HECHO 11: Presenta algún vicio.
espregunta('Presenta algún vicio?',X):-esrespuesta(X).
%HECHO 12: Sufre de algún complejo de la sociedad.
espregunta('Sufre de algún complejo de la sociedad?',X):-esrespuesta(X).
%HECHO 13: Tiene independencia familiar.
espregunta('Tiene independencia familiar?',X):-esrespuesta(X).
%HECHO 14: Le gusta trabajar en grupos.
espregunta('Le gusta trabajar en grupos?',X):-esrespuesta(X).
%HECHO 15: Tiene autoestima baja.
espregunta('Tiene autoestima baja?',X):-esrespuesta(X).
%HECHO 16: Es impulsivo.
espregunta('Es impulsivo?',X):-esrespuesta(X).
%---------------------------------------------------------------------
%%HECHOS PARA TEST DE ADULTOS
%---------------------------------------------------------------------
%HECHO 17: Ha formado alguna familia.
espregunta('Ha formado alguna familia?',X):-esrespuesta(X).
%HECHO 18: Tuvo una vida agitada.
espregunta('Tuvo una vida agitada?',X):-esrespuesta(X).
%HECHO 19: Tiene problemas con la depresión.
espregunta('Tiene problemas con la depresión?',X):-esrespuesta(X).
%HECHO 20: Tiene algún vicio.
espregunta('Tiene algún vicio?',X):-esrespuesta(X).
%HECHO 21: Su situación económica es favorable.
espregunta('Su situación económica es favorable?',X):-esrespuesta(X).
%HECHO 22: Toma medicamentos.
espregunta('Toma medicamentos?',X):-esrespuesta(X).
%---------------------------------------------------------------------
% MENU DE INICIO
%---------------------------------------------------------------------
espregunta('EDAD DE 5-12 ?',X):-esrespuesta(X).
espregunta('EDAD DE 13-30 ?',X):-esrespuesta(X).
espregunta('EDAD DE 31-MAS ?',X):-esrespuesta(X).

:-
 new(Ventana,dialog('TEST PSICOLOGICO')),
 send(Ventana,size,size(400,200)),
 send(Ventana,colour,colour(red)),
 send(Ventana,append,new(Menu, menu_bar)),
 send(Menu,append,new(Iniciar, popup(test))),
 send_list(Iniciar,append,[menu_item(iniciar,message(@prolog,pp))]),
 send(Ventana,append(label(n,'INTEGRANTES:'))),
 send(Ventana,append(label(n,'* JOSUE MACAS'))),
 send(Ventana,append(label(n,'* JORGE TANDAZO'))),
 send(Ventana,append(label(n,'* JIMMY VICENTE'))),
 send(Ventana,open,point(200,200)).

%----------------------------------
%SECCIÓN DE MENU
%----------------------------------
pp:-
    new(D,dialog('PREGUNTAS')),
    new(Pre1,menu('EDAD DE 5-12 ?')),
    send_list(Pre1,append,[si , no]),
    new(Pre2,menu('EDAD DE 13-30 ?')),
    send_list(Pre2,append,[si,no]),
    new(Pre3,menu('EDAD DE 31-MAS ?')),
    send_list(Pre3,append,[si,no]),
    send(D,append(Pre1)),
    send(D,append,Pre2),
    send(D,append,Pre3),
    new(B,button(siguiente,and(message(@prolog,principal,
                                       Pre1?selection,
                                       Pre2?selection,
                                       Pre3?selection),message(D,destroy)))),
    send(D,append,B),
    send(D,default_button,siguiente),
    send(D,open,point(350,350)).
%----------------------------------
%SECCIÓN DE MENU
%----------------------------------
principal(P1,P2,P3):-
    espregunta('EDAD DE 5-12 ?',P1),P1='si',
    espregunta('EDAD DE 13-30 ?',P2),P2='no',
 espregunta('EDAD DE 31-MAS ?',P3),P3='no',test_peque.
principal(P1,P2,P3):-
    espregunta('EDAD DE 5-12 ?',P1),P1='no',
    espregunta('EDAD DE 13-30 ?',P2),P2='si',
    espregunta('EDAD DE 31-MAS ?',P3),P3='no', ph.
principal(P1,P2,P3):-
    espregunta('EDAD DE 5-12 ?',P1),P1='no',
    espregunta('EDAD DE 13-30 ?',P2),P2='no',
    espregunta('EDAD DE 31-MAS ?',P3),P3='si', pho.
principal(_,_,_):-
    new(D,dialog('ERROR')),
    new(L,label(l,'ELIJA SOLO UNA OPCION',font('times','roman',16))),
    send(D,append,L),send(D,open,point(350,350)).


%--------------------------------------------------------------
% REGLAS PARA TEST DE NIÑOS
%---------------------------------------------------------------
test_peque:-
    new(D,dialog('PREGUNTAS PARA TEST DE NIÑES')),
    mostrar('C:/Programa/niñez.jpg',D,20,40) ,
    new(Pre1,menu('Se siente bien estando solo?')),
    send_list(Pre1,append,[si,no]),
    new(Pre2,menu('Tiene menos de 3 amigos en clase?')),
    send_list(Pre2,append,[si,no]),
    new(Pre3,menu('Tiene más de 3 amigos en clase?')),
    send_list(Pre3,append,[si,no]),
    new(Pre4,menu('Presenta problemas de comportamiento?')),
    send_list(Pre4,append,[si,no]),
    new(Pre5,menu('Tiene problemas de Autoestima?')),
    send_list(Pre5,append,[si,no]),
    new(Pre6,menu('Es callado en clases?')),
    send_list(Pre6,append,[si , no]),
    new(Pre7,menu('Le gusta formar grupos en clase?')),
    send_list(Pre7,append,[si,no]),
    new(Pre8,menu('Es ordenado?')),
    send_list(Pre8,append,[si,no]),
    new(Pre9,menu('Es optimista?')),
    send_list(Pre9,append,[si,no]),
    new(Pre10,menu('Es solidario con sus compañeros?')),
    send_list(Pre10,append,[si,no]),
    send(D,append(Pre1)),
    send(D,append,Pre2),
    send(D,append,Pre3),
    send(D,append,Pre4),
    send(D,append,Pre5),
    send(D,append,Pre6),
    send(D,append,Pre7),
    send(D,append,Pre8),
    send(D,append,Pre9),
    send(D,append(Pre10)),
    new(B1,button(atras,and(message(@prolog,pp),message(D,destroy)))),
    new(B,button(siguiente,message(@prolog,peque,
                                   Pre1?selection,
                                   Pre2?selection,
                                   Pre3?selection,
                                   Pre4?selection,
                                   Pre5?selection,
                                   Pre6?selection,                                                                   
                                   Pre7?selection,
                                   Pre8?selection,
                                   Pre9?selection,
                                   Pre10?selection))),

    send(D,append,B1),
    send(D,append,B),
    send(D,open,point(300,300)).

%--------------------------------------------------------------
% PRIMERA SECCIÓN
%---------------------------------------------------------------
% Si H1 = “si” AND H2 = “no” AND H3 = “no” AND H4 = “no” AND H5 = “si”
% AND H6 = “si” AND H7 = “no” AND H8 = “si” AND H9 = “no” AND H10 = “no”
% ENTONCES este tipo de personas son emocionalmente inestables y
% extrovertidas.
peque(P1,P2,P3,P4,P5,P6,P7,P8,P9,P10):-
    espregunta('Se siente bien estando solo?',P1),P1='si',
    espregunta('Tiene menos de 3 amigos en clase?',P2),P2='no',
    espregunta('Tiene más de 3 amigos en clase?',P3),P3='no',
    espregunta('Presenta problemas de comportamiento?',P4),P4='no',
    espregunta('Tiene problemas de Autoestima?',P5),P5='si',
    espregunta('Es callado en clases?',P6),P6='si',
    espregunta('Le gusta formar grupos en clase?',P7),P7='no',
    espregunta('Es ordenado?',P8),P8='si',
    espregunta('Es optimista?',P9),P9='no',
    espregunta('Es solidario con sus compañeros?',P10),P10='no',
    peque_primera('C:/Programa/introvertido.jpg','ESTE TIPO DE PERSONAS ES EMOCIONALMENTE INESTABLE.').
%--------------------------------------------------------------
%RESPUESTA PRIMERA SECCIÓN
%---------------------------------------------------------------
peque_primera(X,Y):-
    new(D,dialog('RESULTADOS DE TEST ')),
    mostrar(X,D,20,30),
    new(L,label(n,'PERSONALIDAD :')),
    send(D,append(label(n,'PERSONA :'))),
    send(D,append(label(n,'INTROVERTIDA,'))),
    send(D,append,L),
    send(D,append(label(n,Y))),
    send(D,open).
%--------------------------------------------------------------
% SEGUNDA SECCIÓN
%---------------------------------------------------------------
% Si H1 = “no” AND H2 = “no” AND H3 = “si” AND H4 = “no” AND H5 = “no”
% AND H6 = “no” AND H7 = “no” AND H8 = “no” AND H9 = “si” AND H10 = “si”
% ENTONCES este tipo de personas son emocionalmente estables y
% extrovertidas.
peque(P1,P2,P3,P4,P5,P6,P7,P8,P9,P10):-
    espregunta('Se siente bien estando solo?',P1),P1='no',
    espregunta('Tiene menos de 3 amigos en clase?',P2),P2='no',
    espregunta('Tiene más de 3 amigos en clase?',P3),P3='si',
    espregunta('Presenta problemas de comportamiento?',P4),P4='no',
    espregunta('Tiene problemas de Autoestima?',P5),P5='no',
    espregunta('Es callado en clases?',P6),P6='no',
    espregunta('Le gusta formar grupos en clase?',P7),P7='no',
    espregunta('Es ordenado?',P8),P8='no',
    espregunta('Es optimista?',P9),P9='si',
    espregunta('Es solidario con sus compañeros?',P10),P10='si',
    peque_segunda('C:/Programa/extrovertido.jpg','ESTE TIPO DE PERSONAS ES EMOCIONALMENTE ESTABLE').

%--------------------------------------------------------------
%RESPUESTA SEGUNDA SECCIÓN
%---------------------------------------------------------------
peque_segunda(X,Y):-
    new(D,dialog('RESULTADOS DE TEST ')),
    mostrar(X,D,20,30),
    new(L,label(n,'PERSONALIDAD :')),
    send(D,append(label(n,'PERSONA :'))),
    send(D,append(label(n,'EXTROVERTIDA.'))),
    send(D,append,L),
    send(D,append(label(n,Y))),
    send(D,open).

%--------------------------------------------------------------
% TERCERA SECCIÓN
%---------------------------------------------------------------
% Si H1 = “no” AND H2 = “no” AND H3 = “si” AND H4 = “si” AND H5 = “no”
% AND H6 = “no” AND H7 = “no” AND H8 = “no” AND H9 = “no” AND H10 = “no”
% ENTONCES este tipo de personas son extrovertidos y emocionalmente
% inestables.
peque(P1,P2,P3,P4,P5,P6,P7,P8,P9,P10):-
    espregunta('Se siente bien estando solo?',P1),P1='no',
    espregunta('Tiene menos de 3 amigos en clase?',P2),P2='no',
    espregunta('Tiene más de 3 amigos en clase?',P3),P3='si',
    espregunta('Presenta problemas de comportamiento?',P4),P4='si',
    espregunta('Tiene problemas de Autoestima?',P5),P5='no',
    espregunta('Es callado en clases?',P6),P6='no',
    espregunta('Le gusta formar grupos en clase?',P7),P7='no',
    espregunta('Es ordenado?',P8),P8='no',
    espregunta('Es optimista?',P9),P9='no',
    espregunta('Es solidario con sus compañeros?',P10),P10='no',
    peque_tercera('C:/Programa/vio_intro.jpg','ESTE TIPO DE PERSONAS ES EMOSIONALMENTE INESTASBLE').
%--------------------------------------------------------------
%RESPUESTA TERCERA SECCIÓN
%---------------------------------------------------------------
peque_tercera(X,Y):-
    new(D,dialog('RESULTADOS DE TEST ')),
    mostrar(X,D,20,30),
    new(L,label(n,'PERSONALIDAD :')),
    send(D,append(label(n,'PERSONA :'))),
    send(D,append(label(n,'EXTROVERTIDA'))),
    send(D,append,L),
    send(D,append(label(n,Y))),
    send(D,open).

%--------------------------------------------------------------
% SECCIÓN PARA TEST NO ASIGNADOS
%---------------------------------------------------------------
peque(_,_,_,_,_,_,_,_,_,_):-
    new(D,dialog('ERROR')),
    new(L,label(l,'PLAGA NO DETERMINADA',font('times','roman',16))),
    send(D,append,L),
    send(D,open,point(350,350)).

%--------------------------------------------------------------
% REGLAS PARA TEST DE JÓVENES
%---------------------------------------------------------------
ph:-
    new(D,dialog('PREGUNTAS PARA TEST DE JÓVENES')),
    mostrar('C:/Programa/juventud.jpg',D,20,40),
    new(Pre1,menu('Presenta algún vicio?')),
    send_list(Pre1,append,[si , no]),
    new(Pre2,menu('Sufre de algún complejo de la sociedad?')),
    send_list(Pre2,append,[si,no]),
    new(Pre3,menu('Tiene independencia familiar?')),
    send_list(Pre3,append,[si,no]),
    new(Pre4,menu('Le gusta trabajar en grupos?')),
    send_list(Pre4,append,[si,no]),
    new(Pre5,menu('Tiene autoestima baja?')),
    send_list(Pre5,append,[si,no]),
    new(Pre6,menu('Es impulsivo?')),
    send_list(Pre6,append,[si,no]),
    send(D,append(Pre1)),
    send(D,append,Pre2),
    send(D,append,Pre3),
    send(D,append,Pre4),
    send(D,append,Pre5),
    send(D,append(Pre6)),
    new(B1,button(atras,and(message(@prolog,pp),message(D,destroy)))),
    new(B,button(siguiente,message(@prolog,jov,
                                   Pre1?selection,
                                   Pre2?selection,
                                   Pre3?selection,
                                   Pre4?selection,
                                   Pre5?selection,
                                   Pre6?selection))),
    send(D,append,B1),
    send(D,append,B),
    send(D,open,point(300,300)).

%--------------------------------------------------------------
% PRIMERA SECCIÓN
%---------------------------------------------------------------
% Si H11 = “si” AND H12 = “si” AND H13 = “si” AND H14 = “si” AND H15 =
% “no” AND H16 = “no” ENTONCES este tipo de personas son altamente
% introvertidas.
jov(P1,P2,P3,P4,P5,P6):-
    espregunta('Presenta algún vicio?',P1),P1='si',
    espregunta('Sufre de algún complejo de la sociedad?',P2),P2='si',
    espregunta('Tiene independencia familiar?',P3),P3='si',
    espregunta('Le gusta trabajar en grupos?',P4),P4='si',
    espregunta('Tiene autoestima baja?',P5),P5='no',
    espregunta('Es impulsivo?',P6),P6='no',
    jov_primera('C:/Programa/adol_intro.jpg','ESTE TIPO DE PERSONAS ES ALTAMENTE INTROVERTIDA').

%--------------------------------------------------------------
%RESPUESTA PRIMERA SECCIÓN
%---------------------------------------------------------------
jov_primera(X,Y):-
    new(D,dialog('RESULTADOS DE TEST ')),
    mostrar(X,D,20,30),
    new(L,label(n,'PERSONALIDAD :')),
    send(D,append(label(n,'PERSONA :'))),
    send(D,append(label(n,'APAGADA Y/O TRISTE CON GRAN PROBABILIDADE DE FRACASAR EN LA SOCIEDAD'))),
    send(D,append,L),
    send(D,append(label(n,Y))),
    send(D,open).
%--------------------------------------------------------------
% SEGUNDA SECCIÓN
%--------------------------------------------------------------
% Si H11 = “no” AND H12 = “no” AND H13 = “si” AND H14 = “si” AND H15 =
% “no” AND H16 = “si” ENTONCES este tipo de personas son altamente
% extrovertidas.
jov(P1,P2,P3,P4,P5,P6):-
    espregunta('Presenta algún vicio?',P1),P1='no',
    espregunta('Sufre de algún complejo de la sociedad?',P2),P2='no',
    espregunta('Tiene independencia familiar?',P3),P3='si',
    espregunta('Le gusta trabajar en grupos?',P4),P4='si',
    espregunta('Tiene autoestima baja?',P5),P5='no',
    espregunta('Es impulsivo?',P6),P6='si',
    jov_segunda('C:/Programa/adol_extro.jpg','ESTE TIPO DE PERSONAS ES ALTAMENTE EXTROVERTIDA').
%--------------------------------------------------------------
%RESPUESTA SEGUNDA SECCIÓN
%---------------------------------------------------------------
jov_segunda(X,Y):-
    new(D,dialog('RESULTADOS DE TEST ')),
    mostrar(X,D,20,30),
    new(L,label(n,'PERSONALIDAD :')),
    send(D,append(label(n,'PERSONA :'))),
    send(D,append(label(n,'CON GRAN FACILIDAD PARA LOS NEGOCIOS'))),
    send(D,append,L),
    send(D,append(label(n,Y))),
    send(D,open).

%--------------------------------------------------------------
% SECCIÓN PARA TEST NO ASIGNADOS
%---------------------------------------------------------------
jov(_,_,_,_,_,_):-
    new(D,dialog('ERROR')),
    new(L,label(l,'DIAGNOSTICO NO DETERMINADO',font('times','roman',16))),
    send(D,append,L),send(D,open,point(350,350)).

%--------------------------------------------------------------
% REGLAS PARA TEST DE ADULTOS
%---------------------------------------------------------------
pho:-
    new(D,dialog('PREGUNTAS')),
    mostrar('C:/Programa/adulto.jpg',D,30,40),
    new(Pre1,menu('Ha formado alguna familia?')),
    send_list(Pre1,append,[si , no]),
    new(Pre2,menu('Tuvo una vida agitada?')),
    send_list(Pre2,append,[si,no]),
    new(Pre3,menu('Tiene problemas con la depresión?')),
    send_list(Pre3,append,[si,no]),
    new(Pre4,menu('Tiene algún vicio?')),
    send_list(Pre4,append,[si,no]),
    new(Pre5,menu('Su situación económica es favorable?')),
    send_list(Pre5,append,[si,no]),
    new(Pre6,menu('Toma medicamentos?')),
    send_list(Pre6,append,[si,no]),
    send(D,append(Pre1)),
    send(D,append,Pre2),
    send(D,append,Pre3),
    send(D,append,Pre4),
    send(D,append,Pre5),
    send(D,append(Pre6)),
    new(B1,button(atras,and(message(@prolog,pp),message(D,destroy)))),
    new(B,button(siguiente,message(@prolog,adul,
                                   Pre1?selection,
                                   Pre2?selection,
                                   Pre3?selection,
                                   Pre4?selection,
                                   Pre5?selection,
                                   Pre6?selection))),
    send(D,append,B1),
    send(D,append,B),
    send(D,open,point(300,300)).
%--------------------------------------------------------------
% PRIMERA SECCIÓN
%---------------------------------------------------------------
% Si H17 = “no” AND H18 = “si” AND H19 = “si” AND H20 = “no” AND H21 =
% “no” AND H22 = “no” ENTONCES probabilidad de vejez solitaria.
adul(P1,P2,P3,P4,P5,P6):-
    espregunta('Ha formado alguna familia?',P1),P1='no',
    espregunta('Tuvo una vida agitada?',P2),P2='si',
    espregunta('Tiene problemas con la depresión?',P3),P3='si',
    espregunta('Tiene algún vicio?',P4),P4='no',
    espregunta('Su situación económica es favorable?',P5),P5='no',
    espregunta('Toma medicamentos?',P6),P6='no',
    adul_primera('C:/Programa/vej_solo.jpg','PERSONA CON GRAN POSIBILIDAD DE VIVIR SU VEJEZ EN SOLEDAD').
%--------------------------------------------------------------
%RESPUESTA PRIMERA SECCIÓN
%---------------------------------------------------------------
adul_primera(X,Y):-
    new(D,dialog('RESULTADOS DE TEST ')),
    mostrar(X,D,30,40),
    new(L,label(n,'PRONOSTICO :')),
    send(D,append(label(n,'PERSONA :'))),
    send(D,append(label(n,'SOLITARIA'))),
    send(D,append,L),
    send(D,append(label(n,Y))),
    send(D,open).

%--------------------------------------------------------------
% SEGUNDA SECCIÓN
%---------------------------------------------------------------
% Si H17 = “si” AND H18 = “no” AND H19 = “no” AND H20 = “no” AND H21 =
% “si” AND H22 = “no” ENTONCES probabilidad de vejez en comunión con su
% familia.
adul(P1,P2,P3,P4,P5,P6):-
    espregunta('Ha formado alguna familia?',P1),P1='si',
    espregunta('Tuvo una vida agitada?',P2),P2='no',
    espregunta('Tiene problemas con la depresión?',P3),P3='no',
    espregunta('Tiene algún vicio?',P4),P4='no',
    espregunta('Su situación económica es favorable?',P5),P5='si',
    espregunta('Toma medicamentos?',P6),P6='no',
    adul_segunda('C:/Programa/vej_alegre.jpg','PERSONA CON GRAN POSIBILIDAD DE VIVIR SU VEJEZ CON SU FAMILIA').
%--------------------------------------------------------------
%RESPUESTA SEGUNDA SECCIÓN
%---------------------------------------------------------------
adul_segunda(X,Y):-
    new(D,dialog('RESULTADOS DE TEST ')),
    mostrar(X,D,10,20),
    new(L,label(n,'PRONOSTICO :')),
    send(D,append(label(n,'PERSONA :'))),
    send(D,append(label(n,'FAMILIAR'))),
    send(D,append,L),
    send(D,append(label(n,Y))),
    send(D,open).
%--------------------------------------------------------------
% SECCIÓN PARA TEST NO ASIGNADOS
%---------------------------------------------------------------

adul(_,_,_,_,_,_):-
    new(D,dialog('ERROR')),
    new(L,label(l,'DIAGNOSTICO NO DETERMINADO',font('times','roman',16))),
    send(D,append,L),
    send(D,open,point(350,350)).

%--------------------------------------------------------------
% SECCIÓN PARA PRESENTAR IMAGENES
%---------------------------------------------------------------

mostrar(V,D,X,Y):-
    new(I,image(V)),
    new(B,bitmap(I)),
    new(F2,figure),
    send(F2,display, B),
    new(D1,device),
    send(D1,display, F2),
    send(D,display, D1),
    send(D,display,D1,point(X,Y)).

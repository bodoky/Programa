# SISTEMA EXPERTO SOBRE TEST PSICOLÓGICO PARA DETECTAR TIPOS DE PERSONALIDAD DE ACUERDO A LA EDAD BIOLÓGICA
##BASE DE ECHOS
* HECHO 1: Se siente bien estando solo.
* HECHO 2: Tiene menos de 3 amigos en clase.
* HECHO 3: Tiene más de 3 amigos en clase.
* HECHO 4: Presenta problemas de comportamiento.
* HECHO 5: Tiene problemas de Autoestima.
* HECHO 6: Es callado en clases.
* HECHO 7: Le gusta formar grupos en clase.
* HECHO 8: Es ordenado.
* HECHO 9: Es optimista.
* HECHO 10: Es solidario con sus compañeros.
* HECHO 11: Presenta algún vicio.
* HECHO 12: Sufre de algún complejo de la sociedad.
* HECHO 13: Tiene independencia familiar.
* HECHO 14: Le gusta trabajar en grupos.
* HECHO 15: Tiene autoestima baja
* HECHO 16: Es impulsivo
* HECHO 17: Ha formado alguna familia
* HECHO 18: Tuvo una vida agitada
* HECHO 19: Tiene problemas con la depresión
* HECHO 20: Tiene algún vicio
* HECHO 21: Su situación económica es favorable
* HECHO 22: Toma medicamentos.
#
##REGLAS
#
##Reglas para test de niños
#
* Si H1 = “si” AND H2 = “no” AND H3 = “no” AND H4 = “no” AND H5 = “si” AND H6 = “si” AND H7 = “no” AND  H8 = “si” AND H9 = “no” AND H10 = “no” ENTONCES este tipo de personas son emocionalmente inestables. 
* Si H1 = “no” AND H2 = “no” AND H3 = “si” AND H4 = “no” AND H5 = “no” AND H6 = “no” AND H7 = “no” AND  H8 = “no” AND H9 = “si” AND H10 = “si” ENTONCES este tipo de personas son emocionalmente estables y extrovertidas. 
* Si H1 = “no” AND H2 = “no” AND H3 = “si” AND H4 = “si” AND H5 = “no” AND H6 = “no” AND H7 = “no” AND  H8 = “no” AND H9 = “no” AND H10 = “no” ENTONCES este tipo de personas son extrovertidos y emocionalmente inestables.
#
###Reglas para test de jóvenes
#
* Si H11 = “si” AND H12 = “si” AND H13 = “si” AND H14 = “si” AND H15 = “no” AND H16 = “no” ENTONCES este tipo de personas son altamente introvertidas. 
* Si H11 = “no” AND H12 = “no” AND H13 = “si” AND H14 = “si” AND H15 = “no” AND H16 = “si” ENTONCES este tipo de personas son altamente extrovertidas. 
#
###Reglas para test de adultos
#
* Si H17 = “no” AND H18 = “si” AND H19 = “si” AND H20 = “no” AND H21 = “no” AND H22 = “no” ENTONCES probabilidad de vejez solitaria. 
* Si H17 = “si” AND H18 = “no” AND H19 = “no” AND H20 = “no” AND H21 = “si” AND H22 = “no” ENTONCES probabilidad de vejez en comunión con su familia. 
#
#NOTA
#
Descarge y ubique los archivos en la raiz del disco "C:", en una carpeta denominada "Programa"

Proceso ConteoNegaPosi
	Definir num Como Real
    Definir contadorPositivos, contadorNegativos Como Entero
    
    contadorPositivos <- 0
    contadorNegativos <- 0
	
	Repetir
		Escribir "Elige una opci�n: "
		Escribir "1. Introducir n�meros"
        Escribir "2. Salir"
        Leer op
		
		Segun op Hacer
			1:
				Repetir
					Escribir "Introduce un n�mero (0) para terminar: "
                    Leer num
                    Si num > 0 Entonces
                        contadorPositivos <- contadorPositivos + 1
                    Sino
                        Si num < 0 Entonces
                            contadorNegativos <- contadorNegativos + 1
                        FinSi
                    FinSi
				Hasta Que num = 0
				Escribir "Cantidad de n�meros positivos: ", contadorPositivos
				Escribir "Cantidad de n�meros negativos: ", contadorNegativos
			2:
				Escribir "Fin"
			De Otro Modo:
				Escribir "Valor invalido"
		Fin Segun
		
	Hasta Que op = 2
	
FinProceso

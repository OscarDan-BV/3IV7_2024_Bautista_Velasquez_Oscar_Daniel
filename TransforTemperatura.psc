Proceso sin_titulo
	Definir op, temperatura, resultado, co Como Real
	Repetir
		Escribir "Escribe la opcion a elegir que quieres convertir"
		Escribir "(1)Fahrenheit (2)Kelvin (3)Rankine (4)Celsius (5)Salir"
		leer op
		Segun op Hacer
			1:
				Escribir "A que lo desea convertit?"
				Escribir "(1)Kelvin (2)Rankine (3)Celsius"
				Leer co
				Escribir "Escribe el valor a convertir"
				leer fahrenheit
				Segun co Hacer
					1:
						kelvin = ((fahrenheit - 32) * 5 / 9) + 273.15
						Escribir "La temperatura en Kelvin es: ", kelvin
					2:
						rankine = fahrenheit + 459.67
						Escribir "La temperatura en Rankine es: ", rankine
					3:
						celsius = (fahrenheit - 32) * 5 / 9
						Escribir "La temperatura en Celsius es: ", celsius
					De Otro Modo:
						Escribir "valor invalido"
				Fin Segun
			2:
				Escribir "A que lo desea convertit?"
				Escribir "(1)Fahrenheit (2)Rankine (3)Celsius"
				Leer co
				Escribir "Escribe el valor a convertir"
				leer kelvin
				Segun co Hacer
					1:
						fahrenheit = (kelvin - 273.15) * 9 / 5 + 32
						Escribir "La temperatura en Fahrenheit es: ", fahrenheit
					2:
						rankine = kelvin * 9 / 5
						Escribir "La temperatura en Rankine es: ", rankine
					3:
						celsius = kelvin - 273.15
						Escribir "La temperatura en Celsius es: ", celsius
					De Otro Modo:
						Escribir "valor invalido"
				Fin Segun
			3:
				Escribir "A que lo desea convertit?"
				Escribir "(1)Fahrenheit (2)Kelvin (3)Celsius"
				Leer co
				Escribir "Escribe el valor a convertir"
				leer rankine
				Segun co Hacer
					1:
						fahrenheit <- rankine - 459.67
						Escribir "La temperatura en Fahrenheit es: ", fahrenheit
					2:
						kelvin <- rankine * 5 / 9
						Escribir "La temperatura en Kelvin es: ", kelvin
					3:
						celsius <- (rankine - 491.67) * 5 / 9
						Escribir "La temperatura en Celsius es: ", celsius
					De Otro Modo:
						Escribir "valor invalido"
				Fin Segun
			4:
				Escribir "A que lo desea convertit?"
				Escribir "(1)Fahrenheit (2)Kelvin (3)Rankine"
				Leer co
				Escribir "Escribe el valor a convertir"
				leer celsius
				Segun co Hacer
					1:
						fahrenheit <- celsius * 9 / 5 + 32
						Escribir "La temperatura en Fahrenheit es: ", fahrenheit
					2:
						kelvin <- celsius + 273.15
						Escribir "La temperatura en Kelvin es: ", kelvin
					3:
						rankine <- (celsius + 273.15) * 9 / 5
						Escribir "La temperatura en Rankine es: ", rankine
					De Otro Modo:
						Escribir "valor invalido"
				Fin Segun
			5:	
				Escribir "Fin" 
			De Otro Modo:
				Escribir "valor invalido"
		Fin Segun
	Hasta Que op = 5
	
	

FinProceso

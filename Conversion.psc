Proceso Conversion
	Definir r Como Caracter
	Repetir
		Definir pies, pulgadas, yardas, centimetros, metros Como Real
		Definir op Como Entero
		Escribir "Ingrese la medida en pies:"
		Leer pies
		pulgadas = pies * 12
		yardas = pies / 3
		centimetros = pulgadas * 2.54
		metros = centimetros / 100
		
		Repetir
			Escribir "Seleccione la conversión:"
			Escribir "1- Convertir a pulgadas"
			Escribir "2- Convertir a yardas"
			Escribir "3- Convertir a centímetros"
			Escribir "4- Convertir a metros"
			Escribir "5- Salir"
			Leer op
			
			Segun op Hacer
				1:
					Escribir "La conversion en pulgadas es: ", pulgadas
				2:
					Escribir "La conversion en yardas es: ", yardas
				3:
					Escribir "La conversion en centímetros es: ", centimetros
				4:
					Escribir "La conversion en metros es: ", metros
				5:
					Escribir "---------------------------------------------"
				De Otro Modo:
					Escribir "Opción no válida, por favor intente de nuevo."
			Fin Segun
		Hasta Que op = 5
		
		Escribir "¿Desea repetir el proceso? (Si/No): "
		Leer r
	Hasta Que r = "No" o r = "no" o r = "NO" o r = "nO"
FinProceso

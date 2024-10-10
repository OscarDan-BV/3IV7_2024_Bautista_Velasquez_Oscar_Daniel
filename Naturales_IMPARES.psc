Proceso Naturales_IMPARES
	
	Definir n, i Como Entero
    Definir r Como Caracter
	
	Repetir
		n <- 0
		Para i<-1 Hasta 100 Con Paso 1 Hacer
			n = n + 1
			si n%2= 1 o n = 1 Entonces
				Escribir n
			FinSi
		Fin Para
		Escribir "¿Desea repetir los 100 numeros naturales impares? (Si/No): "
		Leer r
	Hasta Que r = "No" o r = "no" o r = "NO" o r = "nO"
	
FinProceso
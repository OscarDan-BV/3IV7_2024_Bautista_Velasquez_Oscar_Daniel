Algoritmo SumaDeNumeros
	Definir N Como Real
	Definir suma Como Entero
	
	Repetir
		suma <- 0
		N <- 0
		k <- 0
		Escribir 'Realiza la suma de N numeros'
		Leer k
		Para i<-1 Hasta k Con Paso 1 Hacer
			Escribir N
			N <- N+1
			Escribir N
			suma <- suma+N
			Escribir suma
		FinPara
		Escribir 'La suma es: ', suma
		Escribir "¿Desea repetir la suma? (Si/No): "
		Leer r
	Hasta Que r = "No" o r = "no" o r = "NO" o r = "nO"
	
	FinAlgoritmo

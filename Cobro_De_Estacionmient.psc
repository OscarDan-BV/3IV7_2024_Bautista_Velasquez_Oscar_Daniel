Algoritmo Cobro_De_Estacionmiento
	Definir horaentrada, minutoentrada, segundoentrada, horasalida, minutosalida, segundosalida Como Real
	Definir totalhoras, totalminutos, minutostotalescuenta Como Real
	Definir totalcobro Como Real
	
	Escribir "Ingrese la hora de entrada (Formato de 24hrs)"
	leer horaentrada
	Escribir "Ingrese los minutos de entrada (Formato de 0-59)"
	Leer minutoentrada
	Escribir "Ingrese los segundos de entrada (Formato de 0-59)"
	Leer segundoentrada
	
	Escribir "Ingrese la hora de Salida (Formato de 24hrs)"
	leer horasalida
	Escribir "Ingrese los minutos de salida (Formato de 0-59)"
	Leer minutosalida
	Escribir "Ingrese los segundos de salida (Formato de 0-59)"
	Leer segundosalida
	
	// Proceso
	// Calcular el tiempo total en minutos y segundos
	
	totalhoras = horasalida - horaentrada
	totalminutos = minutosalida - minutoentrada
	segundosrestantes = segundosalida - segundoentrada
	
	// Ajustar los minutos y horas si es necesario
	Si segundosrestantes < 0 Entonces
		segundosrestantes = segundosrestantes + 60
		totalminutos = totalminutos - 1
	Fin Si
	
	Si totalminutos < 0 Entonces
		totalminutos = totalminutos + 60
		totalhoras = totalhoras - 1
	Fin Si
	
	// Convertir todo a minutos
	totalminutos = (totalhoras * 60) + totalminutos
	
	// Vamos a calcular el cobro
	totalcobro = 0
	
	//tengo que empezar a evaluar los casos
	//Si los minutos de salida son menores a los de entrada
	//hay que ajustar la hora y los minutosalida
	Si totalminutos >= 60 Entonces
		totalcobro = totalcobro + (totalminutos / 60) * 15
	Fin Si
	
	// Calcular el cobro de cada fracción 
	minutosrestantes = totalminutos % 60
	Si minutosrestantes > 0 Entonces
		fracciones15min = minutosrestantes // aquí se obtiene las fracciones de 15 minutos
		// Cobrar cada fracción 
		totalcobro = totalcobro + fracciones15min * 6
	Fin Si
	
	// Mostrar el resultado
	Escribir "El total a pagar es de: ", totalcobro , " pesos"
FinAlgoritmo

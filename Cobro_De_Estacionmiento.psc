Algoritmo Cobro_De_Estacionmiento
	Definir horaentrada, minutoentrada, horasalida, minutosalida Como Real
	Definir totalhoras, totalminutos, minutostotalescuenta Como Real
	Definir totalcobro Como Real
	
	Escribir "Ingrese la hora de entrada(Forato de 24hrs)"
	leer horaentrada
	Escribir "Ingrese los minutos de entrada(Forato de 0-59seg)"
	Leer minutoentrada
	
	Escribir "Ingrese la hora de Salida(Forato de 24hrs)"
	leer horasalida
	Escribir "Ingrese los minutos de entrada(Forato de 0 - 59seg)"
	Leer minutosalida
	
	//Proceso
	//Calcular el tiempo en total en minutos
	
	totalhoras = horasalida-horaentrada
	totalminutos = minutosalida-minutoentrada
	
	//tengo que empezar a evaluar los casos
	//Si los minutos de salida son menores a los de entrada
	//hay que ajustar la hora y los minutosalida
	
	Si totalminutos < 0 Entonces
		totalminutos = totalminutos + 60
		//totalminutos += 60
		totalhoras = totalhoras - 1
		
	Fin Si
	
	//Convertir todo a minutos
	
	totalminutos = (totalhoras*60) + totalminutos
	
	//Vamos a calcular el cobro
	
	totalcobro = 0
	
	//calcular el cobro por la hora completa
	Si totalminutos >= 60 Entonces
		totalcobro = totalcobro + (totalminutos/60)*15
	Fin Si
	
	//calcular el cobro de cada fraccion 
	minutosrestantes = totalminutos%60
	Si minutosrestantes > 0  Entonces
		fracciones15min = minutosrestantes //aqui se obtiene los 15
		//cobrar cada fraccion 
		totalcobro = totalcobro + fracciones15min * 6
	Fin Si
	
	//mostrar el resultado
	Escribir "El total a pagar es de: ", totalcobro , " pesos"
FinAlgoritmo

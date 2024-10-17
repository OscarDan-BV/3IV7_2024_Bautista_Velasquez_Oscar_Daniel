//ademas de los dos vistos en clase, agg los 6 mas


SubProceso Rectangulo(Base,Altura)
	Definir Area,Perimetro Como Real
	Area = Base * Altura
	Perimetro = (Base*2)+(Altura*2)
	Escribir "El area del rectangulo es de: ",Area
	Escribir "El perimetro del rectangulo es de: ",Perimetro
FinSubProceso
SubProceso Triangulo(Base,Altura,Lado1,Lado2,Lado3)
	Definir Area,Perimetro Como Real
	Area = (Base*Altura)/2
	Perimetro = Lado1 + Lado2 + Lado3
	Escribir "El area del triangulo es de: ",Area
	Escribir "El perimetro del triangulo es de: ",Perimetro
FinSubProceso

SubProceso pentagono(lado, apotema)
	Definir area, perimetro Como Real
	perimetro = lado * 5
    area = .5*(perimetro * apotema)
	Escribir "El area del hexagono es: ", area
	Escribir "El perimetro del hexagono es: ",perimetro
FinSubProceso

SubProceso hexagono(lado, apotema)
	Definir area, perimetro Como Real
	perimetro = lado * 6
    area = .5*(perimetro * apotema)
	Escribir "El area del hexagono es: ", area
	Escribir "El perimetro del hexagono es: ",perimetro
FinSubProceso

SubProceso heptagono(lado, apotema)
	Definir area, perimetro Como Real
	perimetro = lado * 7
    area = .5*(perimetro * apotema)
	Escribir "El area del hexagono es: ", area
	Escribir "El perimetro del hexagono es: ",perimetro
FinSubProceso

SubProceso octagono(lado, apotema)
	Definir area, perimetro Como Real
	perimetro = lado * 8
    area = .5*(perimetro * apotema)
	Escribir "El area del hexagono es: ", area
	Escribir "El perimetro del hexagono es: ",perimetro
FinSubProceso

SubProceso eneagono(lado, apotema)
	Definir area, perimetro Como Real
	perimetro = lado * 9
    area = .5*(perimetro * apotema)
	Escribir "El area del hexagono es: ", area
	Escribir "El perimetro del hexagono es: ",perimetro
FinSubProceso

SubProceso decagono(lado, apotema)
	Definir area, perimetro Como Real
	perimetro = lado * 10
    area = .5*(perimetro * apotema)
	Escribir "El area del hexagono es: ", area
	Escribir "El perimetro del hexagono es: ",perimetro
FinSubProceso



Algoritmo Calculadora_Figuras
	Definir Op Como Caracter
	Definir Base, Altura, Lado1, Lado2, Lado3, lado, apotema Como Real
	Escribir "Selecciona una opción"
	Escribir "A.-Area y Perimetro del Triangulo"
	Escribir "B.-Area y Perimetro del Rectangulo"
	Escribir "C.- Area y Perimetro del pentagono regular"
	Escribir "D.- Area y Perimetro del hexagono regular"
	Escribir "E.- Area y Perimetro del heptagono regular"
	Escribir "F.- Area y Perimetro del octagono regular"
	Escribir "G.- Area y Perimetro del eneagono regular"
	Escribir "H.- Area y Perimetro del decagono regular"
	Leer Op
	Segun Op Hacer
		"A":
			Escribir "Ingresa la base del rectangulo"
			Leer Base
			Escribir "Ingresa la altura"
			Leer Altura
			Rectangulo(Base, Altura);
		"B":
			Escribir "Ingresa la base del triangulo"
			Leer Base
			Escribir "Ingresa la altura"
			Leer Altura
			Escribir "Ingresa lado 1"
			Leer Lado1
			Escribir "Ingresa lado 2"
			Leer Lado2
			Escribir "Ingresa lado 3"
			Leer Lado3
			Triangulo(Base, Altura,Lado1,Lado2,Lado3);
		caso "C" :
			Escribir "Ingresa el valor de la distancia de un lado del pentagono regular" 
			Leer lado
			Escribir "Ingresa el valor del apotema" 
			leer apotema
			pentagono(lado, apotema)
			
		Caso "D" :
			Escribir "Ingresa el valor de la distancia de un lado del hexagono regular"
			Leer lado
			Escribir "Ingresa el valor del apotema" 
			leer apotema
			hexagono(lado, apotema)
		Caso "E" :
			Escribir "Ingresa el valor de la distancia de un lado del heptagono regular"
			Leer lado
			Escribir "Ingresa el valor del apotema" 
			leer apotema
			heptagono(lado, apotema)
		Caso "F" :
			Escribir "Ingresa el valor de la distancia de un lado del octagono regular"
			Leer lado
			Escribir "Ingresa el valor del apotema" 
			leer apotema
			octagono(lado, apotema)
		Caso "G" :
			Escribir "Ingresa el valor de la distancia de un lado del eneagono regular"
			Leer lado
			Escribir "Ingresa el valor del apotema" 
			leer apotema
			eneagono(lado, apotema)
		Caso "H" :
			Escribir "Ingresa el valor de la distancia de un lado del decagono regular"
			Leer lado
			Escribir "Ingresa el valor del apotema" 
			leer apotema
			decagono(lado, apotema)
		De Otro Modo:
			Escribir "Opcion no valida"
	FinSegun
FinAlgoritmo

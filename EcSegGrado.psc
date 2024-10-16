Proceso EcuacionSegundoGrado
    Definir a, b, c Como Real
    Definir d Como Real
    Definir op Como Entero
    Escribir "Ec segundo grado"
    Repetir
        Escribir "Elige la opcion"
        Escribir "1. Resolver una ecuación de segundo grado"
        Escribir "2. Salir"
        Leer op
		
        Segun op Hacer
            1:
                Escribir "Introduce los valores"
                Escribir "Valor a:"
                Leer a
                Escribir "Valor b:"
                Leer b
                Escribir "Valor c:"
                Leer c
				
                d = b * b - 4 * a * c
				
                Si a = 0 Entonces
                    Escribir "El coeficiente (a) no puede ser cero en la ec"
                Sino
                    Si d > 0 Entonces
                        Escribir "La ecuación tiene dos soluciones reales."
                        Escribir "x1 = ", (-b + Raiz(d)) / (2 * a)
                        Escribir "x2 = ", (-b - Raiz(d)) / (2 * a)
                    Sino
                        Si d = 0 Entonces
                            Escribir "La ecuación tiene una solución real"
                            Escribir "x = ", -b / (2 * a)
                        Sino
                            Escribir "La ecuación no tiene una solucion real"
                        Fin Si
                    Fin Si
                Fin Si
            2:
                Escribir "Fin del programa"
            De Otro Modo:
                Escribir "Opción no valida, intenta de nuevo"
        Fin Segun
		
    Hasta Que op = 2
	
Fin Proceso

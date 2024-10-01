Algoritmo Todologo
	
    Definir Dias, Hab, Res, Capacidad, Ocupadas Como Entero
    Dimension Habitaciones[30]
    Dimension Estadia[30]
    Dimension Res[30]
    
    Para i <- 0 Hasta 20 Con Paso 1 Hacer
        Habitaciones[i] <- 1
    FinPara
    
    Repetir
        Escribir "Elija la opción a realizar (solo el numero)"
        Escribir "1 Cliente"
        Escribir "2 Personal"
        Escribir "3 Administrador"
        Escribir "4 Salir"
        Leer Op
        Segun Op Hacer
            1:
                Escribir "¿Qué quiere hacer?"
                Escribir "1 Reservar una habitación"
                Escribir "2 Cancelar una reservación"
                Leer SubOp
                Segun SubOp Hacer
                    1:
                        Escribir "Elija una habitación del 1 al 20"
                        Leer Hab
                        Repetir
                            Si Hab > 20 o Hab <= 0 Entonces
                                Escribir "Elija una habitación del 1 al 20"
                                Leer Hab
                                R = 1
                            SiNo
                                Habitaciones[Hab] = Habitaciones[Hab] - 1
                                Escribir "Ingrese su tiempo de estadía (máximo 30 días)"
                                Leer Dias
                                
                                Repetir
                                    Si Dias > 30 Entonces
                                        Escribir "El tiempo de estadía no puede superar los 30 días. Inténtelo de nuevo."
                                        Leer Dias
                                    FinSi
                                Hasta Que Dias <= 30
                                
                                Estadia[Hab] = Dias
                                NumRes = azar(99999)
                                Escribir "Este es el número de reservación: ",NumRes
                                Res[Hab] = NumRes
                                R = 0
                            FinSi
                        Hasta Que R <> 1
                    2:
                        Escribir "Ingrese su el numero de su habitación"
                        Leer Hab
                        Repetir
                            Si Hab > 20 o Hab <= 0 Entonces
                                Escribir "Ingrese el numero de su habitación (entre 1 y 20)"
                                Leer Hab
                                R = 1
                            SiNo
                                Escribir "Ingrese el número de su reservación"
                                Leer NumRes
                                Si Res[Hab] = NumRes Entonces
                                    Escribir "Su reservación se ha cancelado"
                                    Habitaciones[Hab] = Habitaciones[Hab] + 1
                                SiNo
                                    Escribir "Esta habitación no fue reservada por usted"
                                FinSi
                                R = 0
                            FinSi
                        Hasta Que R <> 1
                FinSegun
            2:
                Para i <- 1 Hasta 20 Con Paso 1 Hacer
                    Si Habitaciones[i] = 0 Entonces
                        Escribir "La habitación ",i," está ocupada"
                    SiNo
                        Si Habitaciones[i] = 1 Entonces
                            Escribir "La habitación ",i," está libre"
                        FinSi
                    FinSi
                FinPara
            3:
                Ocupadas <- 0  
                Para i <- 1 Hasta 20 Con Paso 1 Hacer
                    Si Habitaciones[i] = 0 Entonces
                        Ocupadas = Ocupadas + 1
                    FinSi
                FinPara
                Porc = Ocupadas / 20
                Escribir "El hotel está ocupado al ",(Porc*100),"%"
            4:
                Op = 4
            De Otro Modo:
                Escribir "Elija una opción"
        FinSegun
    Hasta Que Op = 4
FinAlgoritmo

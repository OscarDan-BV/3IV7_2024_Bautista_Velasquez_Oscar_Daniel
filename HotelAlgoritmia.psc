Algoritmo Todologo
	
    Definir Dias, Hab, Res, Capacidad, Ocupadas Como Entero
    Dimension Habitaciones[30]
    Dimension Estadia[30]
    Dimension Res[30]
    
    Para i <- 0 Hasta 20 Con Paso 1 Hacer
        Habitaciones[i] <- 1
    FinPara
    
    Repetir
        Escribir "Elija la opci�n a realizar (solo el numero)"
        Escribir "1 Cliente"
        Escribir "2 Personal"
        Escribir "3 Administrador"
        Escribir "4 Salir"
        Leer Op
        Segun Op Hacer
            1:
                Escribir "�Qu� quiere hacer?"
                Escribir "1 Reservar una habitaci�n"
                Escribir "2 Cancelar una reservaci�n"
                Leer SubOp
                Segun SubOp Hacer
                    1:
                        Escribir "Elija una habitaci�n del 1 al 20"
                        Leer Hab
                        Repetir
                            Si Hab > 20 o Hab <= 0 Entonces
                                Escribir "Elija una habitaci�n del 1 al 20"
                                Leer Hab
                                R = 1
                            SiNo
                                Habitaciones[Hab] = Habitaciones[Hab] - 1
                                Escribir "Ingrese su tiempo de estad�a (m�ximo 30 d�as)"
                                Leer Dias
                                
                                Repetir
                                    Si Dias > 30 Entonces
                                        Escribir "El tiempo de estad�a no puede superar los 30 d�as. Int�ntelo de nuevo."
                                        Leer Dias
                                    FinSi
                                Hasta Que Dias <= 30
                                
                                Estadia[Hab] = Dias
                                NumRes = azar(99999)
                                Escribir "Este es el n�mero de reservaci�n: ",NumRes
                                Res[Hab] = NumRes
                                R = 0
                            FinSi
                        Hasta Que R <> 1
                    2:
                        Escribir "Ingrese su el numero de su habitaci�n"
                        Leer Hab
                        Repetir
                            Si Hab > 20 o Hab <= 0 Entonces
                                Escribir "Ingrese el numero de su habitaci�n (entre 1 y 20)"
                                Leer Hab
                                R = 1
                            SiNo
                                Escribir "Ingrese el n�mero de su reservaci�n"
                                Leer NumRes
                                Si Res[Hab] = NumRes Entonces
                                    Escribir "Su reservaci�n se ha cancelado"
                                    Habitaciones[Hab] = Habitaciones[Hab] + 1
                                SiNo
                                    Escribir "Esta habitaci�n no fue reservada por usted"
                                FinSi
                                R = 0
                            FinSi
                        Hasta Que R <> 1
                FinSegun
            2:
                Para i <- 1 Hasta 20 Con Paso 1 Hacer
                    Si Habitaciones[i] = 0 Entonces
                        Escribir "La habitaci�n ",i," est� ocupada"
                    SiNo
                        Si Habitaciones[i] = 1 Entonces
                            Escribir "La habitaci�n ",i," est� libre"
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
                Escribir "El hotel est� ocupado al ",(Porc*100),"%"
            4:
                Op = 4
            De Otro Modo:
                Escribir "Elija una opci�n"
        FinSegun
    Hasta Que Op = 4
FinAlgoritmo

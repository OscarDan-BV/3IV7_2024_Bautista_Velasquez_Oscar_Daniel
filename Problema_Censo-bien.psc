Proceso Problema_Censo
    Definir N, Q, a, b, per, aniospreguntas, anio Como Entero
	Definir conteovivos, edadmenor, edadmayor Como Entero
	
	Dimension per[10000, 10000] 
	Dimension anioscons[3000]
	
	Escribir "Escribe la cantidad de personas";
	Leer N;
	
    Para i Desde 1 Hasta N Hacer
		Escribir "Escribe el año de nacimiento de una persona";
        Leer a
		Escribir "Escribe el año de fallecimiento de la persona";
		Leer b
        per[i, 1] = a
        per[i, 2] = b
    Fin Para
	
	Escribir "Escribe cuantos años quieres revisar"
	Leer Q;
    Para j Desde 1 Hasta Q Hacer
		Escribir "Escribe que año quieres consultar";
        Leer anioscons[j]
    Fin Para
	
    Para j Desde 1 Hasta Q Hacer
        anio = anioscons[j]
        conteovivos = 0
        edadmenor = 9999
        edadmayor = -1
        Para i Desde 1 Hasta N Hacer
            Si per[i, 1] <= anio Y per[i, 2] >= anio Entonces
                conteovivos = conteovivos + 1
                edadActual = anio - per[i, 1]
                Si edadActual < edadmenor Entonces
                    edadmenor = edadActual
                Fin Si
                Si edadActual > edadmayor Entonces
                    edadmayor = edadActual
                Fin Si
            Fin Si
        Fin Para
		//prueba
		Si anioscons[j]>=2050 Entonces
			Escribir "Edad más joven no hay"
            Escribir "Edad más anciana no hay"
			Escribir "No hay personas vivas" 
		SiNo
			Escribir "Para el año: ", anio
			Escribir "Personas vivas: ", conteovivos
			Si conteovivos > 0  Entonces
				Escribir "Edad más joven: ", edadmenor
				Escribir "Edad más anciana: ", edadmayor
			Sino
				Escribir "Edad más joven no hay"
				Escribir "Edad más anciana no hay"
			Fin Si
		Fin Si
		//prueba
        
    Fin Para
Fin Proceso


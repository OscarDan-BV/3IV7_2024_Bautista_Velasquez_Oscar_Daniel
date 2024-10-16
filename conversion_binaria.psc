Algoritmo convercion_binaria
	definir n, c como entero;
	definir b como texto;
	b=" ";
	escribir "Ingrese numero que desea tranformar";
	leer n ;
	si n>=0 Entonces
		mientras n>0 hacer 
			c=n%2
			nb= ConvertirATexto(c) 
			b= nb + b 
			n=trunc(n/2)
		FinMientras
	FinSi
	escribir "El numero en binario es: ", b;
	si b=" " Entonces
		b="0"
	FinSi
FinAlgoritmo

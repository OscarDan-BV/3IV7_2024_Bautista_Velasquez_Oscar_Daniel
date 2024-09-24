Algoritmo Tiendita
	Definir producto como texto
	Definir codigoproducto, cantidad Como Entero
	Definir precio Como Real
	
	//crear un menu de seleccion 
	Mientras opcion <> 5 Hacer
		Escribir "1 - Ingresa un nuevo producto"
		Escribir  "2 - actualiza un producto"
		Escribir  "3 - Consulta un inventario"
		Escribir "4 - generar un reporte"
		Escribir "5 - salir"
		Leer opcion
		Segun opcion Hacer
			Caso 1:
				Escribir "Ingresa el nombre del producto"
				Leer producto
				Escribir "Ingresa el codigo del producto"
				Leer codigoproducto
				Escribir "Ingresa la cantidad"
				Leer cantidad
				Escribir " Ingresa el precio"
				Leer prcio
			Caso 2:
				Escribir "Ingresa el codigo del producto a actualizar"
				leer codigoproducto
				Escribir "Ingresa la nueva cantidad"
				Leer cantidad
			Caso 3:
				Escribir "Consultar inventario"
				Escribir "Nombre del producto", producto
				Escribir "codgo del producto", codigoproducto
				Escribir "Precio del producto", precio
				Escribir "Cantidad del producto", cantidad
			Caso 4:
				Escribir "Habia una ves un patito que decia miau miau"

		Fin Segun
	Fin Mientras
FinAlgoritmo

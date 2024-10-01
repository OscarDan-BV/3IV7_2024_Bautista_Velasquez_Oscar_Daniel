Algoritmo Tiendita
	Definir producto Como Texto
	Definir codigoproducto, cantidad Como Entero
	Definir precio Como Real
	Definir opcion Como Entero
	
	Definir inventario Como Caracter
	Definir codigos Como Entero
	Definir precios Como Real
	Definir ventas Como Real
	Definir cantidades Como Entero
	
	Dimension inventario[500]
	Dimension codigos[500]
	Dimension precios[500]
	Dimension cantidades[500]
	Dimension ventas[500]
	Definir totalVentas Como Real
	totalVentas <- 0
	
	// Crear un menú de selección 
	Mientras opcion <> 5 Hacer
		Escribir "1 - Ingresa un nuevo producto"
		Escribir "2 - Actualiza un producto"
		Escribir "3 - Consulta un inventario"
		Escribir "4 - Generar un reporte"
		Escribir "5 - Salir"
		Leer opcion
		Segun opcion Hacer
			Caso 1:
				Escribir "Ingresa el nombre del producto"
				Leer producto
				Escribir "Ingresa el código del producto"
				Leer codigoproducto
				Escribir "Ingresa la cantidad"
				Leer cantidad
				Escribir "Ingresa el precio"
				Leer precio
				// Guardar en inventario
				inventario[i] <- producto
				codigos[i] <- codigoproducto
				precios[i] <- precio
				cantidades[i] <- cantidad
				i <- i + 1 // Incrementar el índice
			Caso 2:
				Escribir "Ingresa el código del producto a actualizar"
				Leer codigoproducto
				Escribir "Ingresa la nueva cantidad"
				Leer cantidad
				// Buscar y actualizar
				Para i Desde 1 Hasta indice Hacer
					Si codigos[i] = codigoproducto Entonces
						cantidades[i] <- cantidad
						Escribir "Cantidad actualizada."
					Fin Si
				Fin Para
			Caso 3:
				Escribir "Consultar inventario"
				Para i Desde 1 Hasta indice Hacer
					Escribir "Nombre del producto: ", inventario[i]
					Escribir "Código del producto: ", codigos[i]
					Escribir "Precio del producto: ", precios[i]
					Escribir "Cantidad del producto: ", cantidades[i]
				Fin Para
			Caso 4:
				Escribir "Generando reporte..."
				// Mostrar inventario y total de ventas
				Escribir "Reporte de Inventario:"
				Para i Desde 1 Hasta indice Hacer
					Escribir "Nombre del producto: ", inventario[i]
					Escribir "Código del producto: ", codigos[i]
					Escribir "Precio del producto: ", precios[i]
					Escribir "Cantidad disponible: ", cantidades[i]
					Escribir "-------------------------------"
				Fin Para
				// Calcular total de ventas
				Para i Desde 1 Hasta indice Hacer
					totalVentas <- totalVentas + (precios[i] * cantidades[i]) // Suponiendo que las cantidades son las vendidas
				Fin Para
				Escribir "Total de ventas: ", totalVentas
				Escribir "==============================="
		Fin Segun
	Fin Mientras
FinAlgoritmo


def conversion_binaria_decimal():
    print("Solo ingresa el número:")
    print("1. Decimal a Binario")
    print("2. Binario a Decimal")
    opcion = input("Ingresa lo que deseas convertir: ")

    if opcion == "1":
        num_decimal = int(input("Ingresa el número decimal que deseas convertir a binario: "))
        binario = ""

        if num_decimal >= 0:
            while num_decimal > 0:
                residuo = num_decimal % 2
                binario = str(residuo) + binario
                num_decimal = num_decimal // 2

            if binario == "":
                binario = "0"

            print("El número en binario es:", binario)
        else:
            print("El número debe ser igual o mayor a cero.")

    elif opcion == "2":
        num_binario = input("Ingresa el número binario que deseas transformar: ")

        if all(digito in "01" for digito in num_binario):
            num_decimal = 0
            longitud_binario = len(num_binario)

            for i in range(longitud_binario):
                bit = int(num_binario[i])
                num_decimal += bit * (2 ** (longitud_binario - 1 - i))

            print("El número decimal es:", num_decimal)
        else:
            print("El número binario solo admite 0 y 1.")
    else:
        print("Opción no válida.")

conversion_binaria_decimal()


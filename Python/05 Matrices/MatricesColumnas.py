def ingresar_matriz(tamaño):
    matriz = []
    print(f"Introduce los valores de la matriz de {tamaño}x{tamaño}")
    for i in range(tamaño):
        columna = []
        for j in range(tamaño):
            valor = float(input(f"Elemento [{i+1}][{j+1}]: "))
            columna.append(valor)
        matriz.append(columna)
    return matriz

def sumar_matriz(matriz1, matriz2, tamaño):
    matriz_suma = []
    for i in range(tamaño):
        columna = []
        for j in range(tamaño):
            columna.append(matriz1[j][i] + matriz2[j][i])
        matriz_suma.append(columna)
    return matriz_suma

def imprimir_matriz(matriz):
    for columna in matriz:
        print(columna)

tamaño = int(input("Elige el tamaño de la matriz (3 o 5): "))
while tamaño not in [3, 5]:
    tamaño = int(input("Tamaño inválido. Elige 3 o 5: "))

print("Matriz 1: ")
matriz1 = ingresar_matriz(tamaño)
print("Matriz 2: ")
matriz2 = ingresar_matriz(tamaño)

matriz_resultado = sumar_matriz(matriz1, matriz2, tamaño)

print("El resultado es: ")
imprimir_matriz(matriz_resultado)
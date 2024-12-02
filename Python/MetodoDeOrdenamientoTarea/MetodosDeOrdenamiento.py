import tkinter as tk
from tkinter import messagebox
import time

def burbuja(lista):
    n = len(lista)
    for i in range(n):
        for j in range(0, n - i - 1):
            if lista[j] > lista[j + 1]:
                lista[j], lista[j + 1] = lista[j + 1], lista[j]
    return lista

def seleccion_sort(lista):
    n = len(lista)
    for i in range(n):
        min_idx = i
        for j in range(i + 1, n):
            if lista[j] < lista[min_idx]:
                min_idx = j
        lista[i], lista[min_idx] = lista[min_idx], lista[i]
    return lista

def insercion(lista):
    for i in range(1, len(lista)):
        key = lista[i]
        j = i - 1
        while j >= 0 and key < lista[j]:
            lista[j + 1] = lista[j]
            j -= 1
        lista[j + 1] = key
    return lista

def merge_sort(lista):
    if len(lista) > 1:
        mid = len(lista) // 2
        izquierda = lista[:mid]
        derecha = lista[mid:]

        merge_sort(izquierda)
        merge_sort(derecha)

        i = j = k = 0
        while i < len(izquierda) and j < len(derecha):
            if izquierda[i] < derecha[j]:
                lista[k] = izquierda[i]
                i += 1
            else:
                lista[k] = derecha[j]
                j += 1
            k += 1
        while i < len(izquierda):
            lista[k] = izquierda[i]
            i += 1
            k += 1
        while j < len(derecha):
            lista[k] = derecha[j]
            j += 1
            k += 1
    return lista

def quick_sort(lista):
    if len(lista) <= 1:
        return lista
    pivote = lista[len(lista) // 2]
    izquierda = [x for x in lista if x < pivote]
    medio = [x for x in lista if x == pivote]
    derecha = [x for x in lista if x > pivote]
    return quick_sort(izquierda) + medio + quick_sort(derecha)

def ordenar():
    entrada = entry.get()
    if not entrada:
        messagebox.showerror("Error", "Por favor, ingrese una lista de números.")
        return
    
    try:
        lista = list(map(int, entrada.split(",")))
    except ValueError:
        messagebox.showerror("Error", "Asegúrese de que la lista solo contenga números enteros separados por comas.")
        return

    if len(lista) > 40:
        messagebox.showerror("Error", "La lista no puede contener más de 40 números.")
        return
    
    metodo = metodo_var.get()
    if metodo == "Burbuja":
        metodo_func = burbuja
    elif metodo == "Selección":
        metodo_func = seleccion_sort
    elif metodo == "Inserción":
        metodo_func = insercion
    elif metodo == "Merge":
        metodo_func = merge_sort
    elif metodo == "Quick Sort":
        metodo_func = quick_sort
    else:
        messagebox.showerror("Error", "Seleccione un método de ordenamiento.")
        return

    inicio = time.time()
    lista_ordenada = metodo_func(lista.copy())
    tiempo = time.time() - inicio

    resultado_texto = (
        f"Lista original: {lista}\n"
        f"Lista ordenada: {lista_ordenada}\n"
        f"Tiempo: {tiempo:.6f} segundos"
    )
    resultado_label.config(text=resultado_texto)

root = tk.Tk()
root.title("Métodos de Ordenamiento")

tk.Label(root, text="Ingrese una lista de números (separados por comas):").pack(pady=5)
entry = tk.Entry(root, width=50)
entry.pack(pady=5)

tk.Label(root, text="Seleccione un método de ordenamiento:").pack(pady=5)
metodo_var = tk.StringVar(value="Burbuja")
metodos = ["Burbuja", "Selección", "Inserción", "Merge", "Quick Sort"]
for metodo in metodos:
    tk.Radiobutton(root, text=metodo, variable=metodo_var, value=metodo).pack(anchor=tk.W)

tk.Button(root, text="Ordenar", command=ordenar).pack(pady=10)

resultado_label = tk.Label(root, text="", justify=tk.LEFT)
resultado_label.pack(pady=5)

root.mainloop()
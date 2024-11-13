import tkinter as tk
from tkinter import messagebox, simpledialog
from tkinter import ttk
import os

ARCHIVO = "marcas.txt"

marcas = []

def cargar_datos():
    if os.path.exists(ARCHIVO):
        with open(ARCHIVO, "r") as f:
            for linea in f:
                partes = linea.strip().split(",")
                if len(partes) >= 8:
                    marca = {
                        "nombre": partes[0],
                        "categoria": partes[1],
                        "pais_origen": partes[2],
                        "año_fundacion": partes[3],
                        "sede": partes[4],
                        "ventas_anuales": partes[5],
                        "presencia_global": partes[6],
                        "fundador": partes[7]
                    }
                    marcas.append(marca)
    else:
        agregar_marcas_iniciales()
        guardar_datos()

def agregar_marcas_iniciales():
    marcas_iniciales = [
        {"nombre": "Nike", "categoria": "Deportes", "pais_origen": "EE.UU.", "año_fundacion": "1964", "sede": "Oregón", "ventas_anuales": "38000", "presencia_global": "Sí", "fundador": "Phil Knight"},
        {"nombre": "Adidas", "categoria": "Deportes", "pais_origen": "Alemania", "año_fundacion": "1949", "sede": "Herzogenaurach", "ventas_anuales": "21500", "presencia_global": "Sí", "fundador": "Adolf Dassler"},
        {"nombre": "Puma", "categoria": "Deportes", "pais_origen": "Alemania", "año_fundacion": "1948", "sede": "Herzogenaurach", "ventas_anuales": "5700", "presencia_global": "Sí", "fundador": "Rudolf Dassler"},
        {"nombre": "Gucci", "categoria": "Lujo", "pais_origen": "Italia", "año_fundacion": "1921", "sede": "Florencia", "ventas_anuales": "9800", "presencia_global": "Sí", "fundador": "Guccio Gucci"},
        {"nombre": "Louis Vuitton", "categoria": "Lujo", "pais_origen": "Francia", "año_fundacion": "1854", "sede": "París", "ventas_anuales": "10000", "presencia_global": "Sí", "fundador": "Louis Vuitton"},
        {"nombre": "Zara", "categoria": "Moda rápida", "pais_origen": "España", "año_fundacion": "1974", "sede": "Arteijo", "ventas_anuales": "24000", "presencia_global": "Sí", "fundador": "Amancio Ortega"},
        {"nombre": "H&M", "categoria": "Moda rápida", "pais_origen": "Suecia", "año_fundacion": "1947", "sede": "Estocolmo", "ventas_anuales": "22000", "presencia_global": "Sí", "fundador": "Erling Persson"},
        {"nombre": "Chanel", "categoria": "Lujo", "pais_origen": "Francia", "año_fundacion": "1909", "sede": "París", "ventas_anuales": "10000", "presencia_global": "Sí", "fundador": "Coco Chanel"},
        {"nombre": "Cartier", "categoria": "Lujo", "pais_origen": "Francia", "año_fundacion": "1847", "sede": "París", "ventas_anuales": "6300", "presencia_global": "Sí", "fundador": "Louis-François Cartier"},
        {"nombre": "Hermès", "categoria": "Lujo", "pais_origen": "Francia", "año_fundacion": "1837", "sede": "París", "ventas_anuales": "8500", "presencia_global": "Sí", "fundador": "Thierry Hermès"},
        {"nombre": "Rolex", "categoria": "Lujo", "pais_origen": "Suiza", "año_fundacion": "1905", "sede": "Ginebra", "ventas_anuales": "5200", "presencia_global": "Sí", "fundador": "Hans Wilsdorf"},
        {"nombre": "Uniqlo", "categoria": "Moda rápida", "pais_origen": "Japón", "año_fundacion": "1949", "sede": "Tokio", "ventas_anuales": "19000", "presencia_global": "Sí", "fundador": "Tadashi Yanai"},
        {"nombre": "Burberry", "categoria": "Lujo", "pais_origen": "Reino Unido", "año_fundacion": "1856", "sede": "Londres", "ventas_anuales": "3000", "presencia_global": "Sí", "fundador": "Thomas Burberry"},
        {"nombre": "Levi's", "categoria": "Casual", "pais_origen": "EE.UU.", "año_fundacion": "1853", "sede": "San Francisco", "ventas_anuales": "4500", "presencia_global": "Sí", "fundador": "Levi Strauss"},
        {"nombre": "Supreme", "categoria": "Streetwear", "pais_origen": "EE.UU.", "año_fundacion": "1994", "sede": "Nueva York", "ventas_anuales": "500", "presencia_global": "Sí", "fundador": "James Jebbia"},
        {"nombre": "Balenciaga", "categoria": "Lujo", "pais_origen": "España", "año_fundacion": "1917", "sede": "París", "ventas_anuales": "1500", "presencia_global": "Sí", "fundador": "Cristóbal Balenciaga"},
        {"nombre": "Versace", "categoria": "Lujo", "pais_origen": "Italia", "año_fundacion": "1978", "sede": "Milán", "ventas_anuales": "800", "presencia_global": "Sí", "fundador": "Gianni Versace"},
        {"nombre": "Tommy Hilfiger", "categoria": "Casual", "pais_origen": "EE.UU.", "año_fundacion": "1985", "sede": "Nueva York", "ventas_anuales": "7000", "presencia_global": "Sí", "fundador": "Tommy Hilfiger"},
        {"nombre": "Ralph Lauren", "categoria": "Lujo", "pais_origen": "EE.UU.", "año_fundacion": "1967", "sede": "Nueva York", "ventas_anuales": "6200", "presencia_global": "Sí", "fundador": "Ralph Lauren"},
        {"nombre": "Prada", "categoria": "Lujo", "pais_origen": "Italia", "año_fundacion": "1913", "sede": "Milán", "ventas_anuales": "3600", "presencia_global": "Sí", "fundador": "Mario Prada"},
        {"nombre": "Fendi", "categoria": "Lujo", "pais_origen": "Italia", "año_fundacion": "1925", "sede": "Roma", "ventas_anuales": "1100", "presencia_global": "Sí", "fundador": "Adele y Edoardo Fendi"},
        {"nombre": "Under Armour", "categoria": "Deportes", "pais_origen": "EE.UU.", "año_fundacion": "1996", "sede": "Baltimore", "ventas_anuales": "5400", "presencia_global": "Sí", "fundador": "Kevin Plank"},
        {"nombre": "The North Face", "categoria": "Outdoor", "pais_origen": "EE.UU.", "año_fundacion": "1968", "sede": "California", "ventas_anuales": "2800", "presencia_global": "Sí", "fundador": "Douglas Tompkins"},
        {"nombre": "New Balance", "categoria": "Deportes", "pais_origen": "EE.UU.", "año_fundacion": "1906", "sede": "Boston", "ventas_anuales": "4100", "presencia_global": "Sí", "fundador": "William Riley"},
        {"nombre": "Vans", "categoria": "Deportes", "pais_origen": "EE.UU.", "año_fundacion": "1966", "sede": "California", "ventas_anuales": "3500", "presencia_global": "Sí", "fundador": "Paul Van Doren"},
        {"nombre": "Calvin Klein", "categoria": "Lujo", "pais_origen": "EE.UU.", "año_fundacion": "1968", "sede": "Nueva York", "ventas_anuales": "3600", "presencia_global": "Sí", "fundador": "Calvin Klein"},
        {"nombre": "Patagonia", "categoria": "Outdoor", "pais_origen": "EE.UU.", "año_fundacion": "1973", "sede": "California", "ventas_anuales": "1000", "presencia_global": "Sí", "fundador": "Yvon Chouinard"},
        {"nombre": "Columbia", "categoria": "Outdoor", "pais_origen": "EE.UU.", "año_fundacion": "1938", "sede": "Oregón", "ventas_anuales": "2700", "presencia_global": "Sí", "fundador": "Paul Lamfrom"},
        {"nombre": "Moncler", "categoria": "Lujo", "pais_origen": "Francia", "año_fundacion": "1952", "sede": "Milán", "ventas_anuales": "1700", "presencia_global": "Sí", "fundador": "René Ramillon"},
    ]
    marcas.extend(marcas_iniciales)

def guardar_datos():
    with open(ARCHIVO, "w") as f:
        for marca in marcas:
            f.write(f"{marca['nombre']},{marca['categoria']},{marca['pais_origen']},{marca['año_fundacion']},{marca['sede']},{marca['ventas_anuales']},{marca['presencia_global']},{marca['fundador']}\n")

def registrar_marca():
    nombre = simpledialog.askstring("Entrada", "Ingresa el nombre de la marca:")
    categoria = simpledialog.askstring("Entrada", "Ingresa la categoría de la marca:")
    pais_origen = simpledialog.askstring("Entrada", "Ingresa el país de origen de la marca:")
    año_fundacion = simpledialog.askstring("Entrada", "Ingresa el año de fundación de la marca:")
    sede = simpledialog.askstring("Entrada", "Ingresa la sede de la marca:")
    ventas_anuales = simpledialog.askstring("Entrada", "Ingresa las ventas anuales (en millones):")
    presencia_global = simpledialog.askstring("Entrada", "¿Tiene presencia global? (Sí/No):")
    fundador = simpledialog.askstring("Entrada", "Ingresa el nombre del fundador:")

    marca = {
        "nombre": nombre,
        "categoria": categoria,
        "pais_origen": pais_origen,
        "año_fundacion": año_fundacion,
        "sede": sede,
        "ventas_anuales": ventas_anuales,
        "presencia_global": presencia_global,
        "fundador": fundador
    }

    marcas.append(marca)
    guardar_datos()
    messagebox.showinfo("Éxito", "Marca registrada exitosamente")

def consultar_marcas():
    ventana = tk.Tk()
    ventana.title("Lista de Marcas")
    tabla = ttk.Treeview(ventana, columns=("Nombre", "Categoría", "País de Origen", "Año de Fundación", "Sede", "Ventas Anuales", "Presencia Global", "Fundador"), show="headings")
    
    for col in tabla["columns"]:
        tabla.heading(col, text=col)
    
    for marca in marcas:
        tabla.insert("", "end", values=(marca["nombre"], marca["categoria"], marca["pais_origen"], marca["año_fundacion"], marca["sede"], marca["ventas_anuales"], marca["presencia_global"], marca["fundador"]))
    
    tabla.pack(expand=True, fill="both")
    ventana.mainloop()


def editar_marca():
    nombre = simpledialog.askstring("Entrada", "Ingresa el nombre de la marca a editar:")
    for marca in marcas:
        if marca["nombre"] == nombre:
            marca["categoria"] = simpledialog.askstring("Entrada", "Ingresa la nueva categoría o presiona Enter para mantener:", initialvalue=marca["categoria"]) or marca["categoria"]
            marca["pais_origen"] = simpledialog.askstring("Entrada", "Ingresa el nuevo país de origen o presiona Enter para mantener:", initialvalue=marca["pais_origen"]) or marca["pais_origen"]
            marca["año_fundacion"] = simpledialog.askstring("Entrada", "Ingresa el nuevo año de fundación o presiona Enter para mantener:", initialvalue=marca["año_fundacion"]) or marca["año_fundacion"]
            marca["sede"] = simpledialog.askstring("Entrada", "Ingresa la nueva sede o presiona Enter para mantener:", initialvalue=marca["sede"]) or marca["sede"]
            marca["ventas_anuales"] = simpledialog.askstring("Entrada", "Ingresa las nuevas ventas anuales o presiona Enter para mantener:", initialvalue=marca["ventas_anuales"]) or marca["ventas_anuales"]
            marca["presencia_global"] = simpledialog.askstring("Entrada", "¿Tiene presencia global? (Sí/No):", initialvalue=marca["presencia_global"]) or marca["presencia_global"]
            marca["fundador"] = simpledialog.askstring("Entrada", "Ingresa el nombre del nuevo fundador o presiona Enter para mantener:", initialvalue=marca["fundador"]) or marca["fundador"]
            guardar_datos()
            messagebox.showinfo("Éxito", "Marca editada exitosamente")
            return
    messagebox.showerror("Error", "Marca no encontrada")

def eliminar_marca():
    nombre = simpledialog.askstring("Entrada", "Ingresa el nombre de la marca a eliminar:")
    for marca in marcas:
        if marca["nombre"] == nombre:
            marcas.remove(marca)
            guardar_datos()
            messagebox.showinfo("Éxito", "Marca eliminada exitosamente")
            return
    messagebox.showerror("Error", "Marca no encontrada")

def main():
    cargar_datos()
    while True:
        opcion = simpledialog.askstring("Menú de Gestión de Marcas de Ropa", "Selecciona una opción:\n1. Registrar Marca\n2. Consultar Marcas\n3. Editar Marca\n4. Eliminar Marca\n5. Salir")
        
        if opcion == "1":
            registrar_marca()
        elif opcion == "2":
            consultar_marcas()
        elif opcion == "3":
            editar_marca()
        elif opcion == "4":
            eliminar_marca()
        elif opcion == "5":
            messagebox.showinfo("Salir", "Gracias por usar el programa")
            break
        else:
            messagebox.showerror("Error", "Opción no válida")

main()
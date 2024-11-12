import matplotlib.pyplot as plt
import numpy as np

# Datos proporcionados
categories = ['WT', 'MEG-OE']
mean_values = [1, 3.312923605]
std_dev = [0, 0.098639598]

# Posición personalizada de las barras para acercarlas
x_pos = np.arange(len(categories))

# Crear el gráfico
plt.figure(figsize=(6, 4))
plt.bar(x_pos, mean_values, yerr=std_dev, capsize=5, width=0.3, color=['#8B0000', '#CD5C5C'], edgecolor='black')
plt.xticks(x_pos, categories)  # Colocar etiquetas de categorías en la posición ajustada
plt.ylabel('Relative Expression', fontsize=12, color='black')
plt.title('TGF-β Overexpression', fontsize=14, color='black')
plt.ylim(0, 4)

# Estilo de fondo sin líneas punteadas
plt.gca().set_facecolor('#F5F5DC')  # Beige claro de fondo
plt.gca().spines['top'].set_visible(False)
plt.gca().spines['right'].set_visible(False)
plt.grid(False)  # Quitar las líneas de cuadrícula

# Guardar el gráfico actualizado
plt.tight_layout()

plt.show()

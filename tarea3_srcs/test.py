# Definir parámetros
N_inputs = 128
N_levels = 7

# Realizar las asignaciones y mostrar las líneas con los cálculos
for i in range(N_levels):
    for j in range(N_inputs >> (i+1)):  # (N_inputs >> (i + 1)) es el número de sumas en cada nivel
        # Calcular los índices
        idx = 2 * N_inputs - (N_inputs >> (i)) + j
        left_idx = 2 * N_inputs - (2 * N_inputs >> (i)) + 2 * j
        right_idx = left_idx + 1
        
        # Imprimir la línea con los cálculos
        print(f'sumas[{idx}] = sumas[{left_idx}] + sumas[{right_idx}]')


# Definir parámetros
N_inputs = 64
N_levels = 6
# Realizar las asignaciones y mostrar las líneas con los cálculos
for i in range(1,1+N_levels):
    for j in range(N_inputs >> (i+1)):  # (N_inputs >> (i + 1)) es el número de sumas en cada nivel
        # Calcular los índices
        idx = N_inputs - (N_inputs >> (i)) + j
        left_idx = N_inputs - (2 * N_inputs >> (i)) + 2 * j
        right_idx = left_idx + 1
        
        # Imprimir la línea con los cálculos
        print(f'sumas[{idx}] = sumas[{left_idx}] + sumas[{right_idx}]')


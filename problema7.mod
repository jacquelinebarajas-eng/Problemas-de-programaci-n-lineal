# ------------------------------- 
# Problema de optimización : Maximizar los fondos de inversión
# Variables de decisión: 
#      x _i = dinero invertido en fondos de i
# donde i = {inversión garantizados, inversión mixtos}.
# NOTA: las variables deben cumplir que x_i >= 0.
# -------------------------------
var x_1 >= 0;
var x_2 >= 0;

# --------------------------------
# Función objetivo : 
#    maximizar el rendimiento total
# NOTA : x_3 que es la inversión de la Bolsa de Valores se determina por
#           x_3 = 12000 - x_1- x_2
# ---------------------------------
maximize z: 0.07*x_1 + 0.08*x_2 + 0.12*(12000-x_1-x_2);

# --------------------------------
# c1: Restricción de límite en una actividad
# ---------------------------------
subject to c1: x_1 + x_2 >= 10000;

# --------------------------------
# c2: Restricción de disponibilidad de recurso
# ---------------------------------
subject to c2: x_1 + x_2 <= 12000;

# --------------------------------
# c3: Restricción de proporción
# ---------------------------------
subject to c3:  x_1 >= 3*x_2;

end;
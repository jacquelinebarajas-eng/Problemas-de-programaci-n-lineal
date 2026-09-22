# -------------------------------
# Problema de optimización: maximizar la planeación de cultivos
# Variables de decisión:
#      x_i =  acres sembrados de cada semilla   i={A, B, C}.
# NOTA: las variables deben cumplir que x_i >= 0.
# -------------------------------
var x_A >= 0;
var x_B >= 0;
var x_C >= 0;

# --------------------------------
# Función objetivo:
#    maximizar las ganancias de acres para sembrar cada semilla
# ---------------------------------
maximize z: 100*x_A + 300*x_B + 200*x_C;

# --------------------------------
# c1: Restricción de disponibilidad (acres)
# ---------------------------------
subject to c1: x_A + x_B + x_C <= 120;

# --------------------------------
# c2: Restricción de presupuesto de semillas
# ---------------------------------
subject to c2: 40*x_A + 20*x_B + 30*x_C <= 3400;

# --------------------------------
# c3: Restricción de días de trabajo
# ---------------------------------
subject to c3: x_A + 2*x_B + x_C <= 170;


end;
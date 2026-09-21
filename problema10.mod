# ------------------------------- 
# Problema de optimización : maximizar la rentabilidad de las inversiones
# mixtas
# Variables de decisión: 
#      x1 = inversiones de créditos comerciales,
#      x2 = inversiones de bonos corporativos,
#      x3 = inversiones de acciones en oro,
#      x4 = inversiones de acciones en platino,
#      x5 = inversiones de bonos hipotecarios,
#      x6 = inversiones de préstamos para edificio.
# NOTA: las variables deben cumplir que x_i >= 0.
# -------------------------------
var x_1 >= 0;
var x_2 >= 0;
var x_3 >= 0;
var x_4 >= 0;
var x_5 >= 0;
var x_6 >= 0;

# --------------------------------
# Función objetivo : 
#    maximizar la rentabilidad de sus inversiones
# ---------------------------------
maximize z: 0.07*x_1 + 0.10*x_2 + 0.19*x_3 + 0.12*x_4 + 0.08*x_5 + 0.14*x_6;

# --------------------------------
# c1: Restricción de disponibilidad de recurso
# ---------------------------------
subject to c1: x_1 + x_2 + x_3 + x_4 + x_5 <= 5;

# --------------------------------
# c2i: Restricciones de proporción máxima, i={1,2,3,4,5,6}
# ---------------------------------
subject to c21: x_1 <= 0.25*(x_1 + x_2 + x_3 + x_4 + x_5);
subject to c22: x_2 <= 0.25*(x_1 + x_2 + x_3 + x_4 + x_5);
subject to c23: x_3 <= 0.25*(x_1 + x_2 + x_3 + x_4 + x_5);
subject to c24: x_4 <= 0.25*(x_1 + x_2 + x_3 + x_4 + x_5);
subject to c25: x_5 <= 0.25*(x_1 + x_2 + x_3 + x_4 + x_5);
subject to c26: x_6 <= 0.25*(x_1 + x_2 + x_3 + x_4 + x_5);

# --------------------------------
# c3j: Restricciones de proporción mínima,  j={1,2}
# ---------------------------------
subject to c31: x_3 + x_4 <= 0.30*(x_1 + x_2 + x_3 + x_4 + x_5);
subject to c32: x_1 + x_2 <= 0.45*(x_1 + x_2 + x_3 + x_4 + x_5);

# --------------------------------
# c4: Restricción de límite de riesgo
# ---------------------------------
subject to c4: 1.7*x_1 + 1.2*x_2 + 3.7*x_3 + 2.4*x_4 + 2.0*x_5 + 2.9*x_6
    <= 2.0*(x_1 + x_2 + x_3 + x_4 + x_5);

end;
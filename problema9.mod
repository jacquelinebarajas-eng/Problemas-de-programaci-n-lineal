# ------------------------------- 
# Problema de optimización : maximizar la producción para un fabricante de 
# alambre
# Variables de decisión: 
#      x _i = kilogramos de alambre de i a producir por día, 
# donde i={aluminio, cobre}.
# NOTA: las variables deben cumplir que x_i >= 0.
# -------------------------------
var x_1 >= 0;
var x_2 >= 0;

# --------------------------------
# Función objetivo : 
#    maximizar la ganancia del alambre de alumnio y cobre
# ---------------------------------
maximize z: 0.25*x_1+0.4*x_2;

# --------------------------------
# c1i: Restricciones de disponibilidad de recursos
# ---------------------------------
subject to c11: 5*x_1 + 2*x_2 <= 500;
subject to c12: 0.25*x_1 + 0.5*x_2 <= 40;

# --------------------------------
# c2: Restricción de límite de una actividad
# ---------------------------------
subject to c1: x_2 <= 60;

end;
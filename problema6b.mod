# ------------------------------- 
# Problema de optimización : Maximizar la estrategia de rendimiento
# Variables de decisión: 
#      x _i = dinero invertido en compañía i,
# donde i = {Telefónica, Sankander, Ferrofial, Garmefa}.
# NOTA: las variables deben cumplir que x_i >= 0.
# -------------------------------
var x_1 >= 0;
var x_2 >= 0;
var x_3 >= 0;
var x_4 >= 0;
var x_5 >= 0;

# --------------------------------
# Función objetivo : 
#   maximizar la estrategia de rendimiento
# ---------------------------------
maximize z: 0.10*x_1 + 0.08*x_2 + 0.06*x_3 + 0.10*x_4;

# --------------------------------
# c1i: Restricciones para la regla 2
# ---------------------------------
subject to c11:   x_1 <= 100000;
subject to c12:   x_2 <= 100000;
subject to c13:   x_3 <= 100000;
subject to c14:   x_4 <= 100000;

# --------------------------------
# c2: Restricción de inversión total
# ---------------------------------
subject to c2: x_1 + x_2 + x_3 + x_4 = 200000;

end;
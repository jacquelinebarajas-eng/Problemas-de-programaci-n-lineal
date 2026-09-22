# -------------------------------
# Problema de optimización: maximizar la producción metalúrgica
# Variables de decisión:
#      x_1i = unidades de $i$ fundidas en PRODA  i={P_1, P_2}, 
#      x_2i = unidades de $j$ con fundición subcontratada  i={P_1, P_2},  
#      x_3 = unidades de $P_3$ fundidas en PRODA.
# NOTA: las variables deben cumplir que x_ji, x_3 >= 0, con j={1,2}
# -------------------------------
var x_11 >= 0;
var x_12 >= 0;
var x_21 >= 0;
var x_22 >= 0;

var x_3 >= 0;

# --------------------------------
# Función objetivo:
#    maximizar las ganancias semanales de la empresa
# ---------------------------------
maximize z: 0.70*x_11+0.50*x_21+1.00*x_12+0.90*x_22+1.10*x_3;

# --------------------------------
# c1i: Restricciones de la función
# ---------------------------------
subject to c11: 6*x_11 + 10*x_12 + 8*x_3 <= 8000;
subject to c12: 6*(x_11 + x_21) + 3*(x_12 + x_22) + 8*x_3 <= 12000;
subject to c13: 3*(x_11 + x_21) + 2*(x_12 + x_22) + 2*x_3 <= 10000;

end;
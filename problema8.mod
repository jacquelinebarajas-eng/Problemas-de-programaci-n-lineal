# ------------------------------- 
# Problema de optimización : Minimizar el costo que cubra los 
# requerimientos
#      x _ij = miles de $m^2$ rentados al inicio del mes i por j meses,
# con i={enero, febrero, marzo} y j={1,2,3}.
# NOTA: las variables deben cumplir que x_ij >= 0.
# -------------------------------
var x_11 >= 0;
var x_12 >= 0;
var x_13 >= 0;

var x_21 >= 0;
var x_22 >= 0;

var x_31 >= 0;

# --------------------------------
# Función objetivo : 
#    minimizar el costo de requerimiento de espacio
# ---------------------------------
minimize z: 280*(x_11 + x_21 + x_31) + 450*(x_12 + x_22) +600*x_13 ;

# --------------------------------
# c1i: Restricciones de requerimiento de espacio
# ---------------------------------
subject to c11: x_11 + x_12 + x_13 >= 25;
subject to c12: x_12 + x_13 + x_21 + x_22 >= 10;
subject to c13: x_13 + x_22 + x_31 >= 20;

end;
# ------------------------------- 
# Problema de optimización : Maximizar la producción de una compañía metalúrgica.
# Variables de decisión: 
#       x_i : unidad por día para producir el producto i, i={1,2,3,4}
#
# NOTA: las variables deben cumplir que x_i >= 0
# -------------------------------
var x1 >= 0;
var x2 >= 0;
var x3 >= 0;
var x4 >= 0;

# --------------------------------
# Función objetivo : 
#   maximizar la ganancia de producción de cada producto
# NOTA : 
#       ganancia = (precio de venta por unidad $) - (costo de producción)
# ---------------------------------
maximize z: 30*x1 + 30*x2 + 10*x3 + 15*x4;

# --------------------------------
# Restricciones de capacidad diaria de producción de la máquina 1
# ---------------------------------
subject to c1: 2*x1 + 3*x2 + 4*x3 + 2*x4 <= 500;

# --------------------------------
# Restricciones de capacidad diaria de producciónd de la máquina 2
# ---------------------------------
subject to c2: 3*x1 + 2*x2 + x3 + 2*x4 <= 380;

end;
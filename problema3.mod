# ------------------------------- 
# Problema de optimización : Maximizar la producción de una compañía metalúrgica.
# Variables de decisión: 
#       x_i : unidad por día para producir el producto i, i={1,2,3,4}
#
# NOTA: las variables deben cumplir que x_i >= 0
# -------------------------------
var x_1 >= 0;
var x_2 >= 0;
var x_3 >= 0;
var x_4 >= 0;

# --------------------------------
# Función objetivo : 
#   maximizar la ganancia de producción de cada producto
# NOTA : 
#       ganancia = (precio de venta por unidad $) - (costo de producción)
# ---------------------------------
maximize z: 30*x_1 + 30*x_2 + 10*x_3 + 15*x_4;

# --------------------------------
# c1: Restricción de capacidad diaria de producción de la máquina 1
# ---------------------------------
subject to c1: 2*x_1 + 3*x_2 + 4*x_3 + 2*x_4 <= 500;

# --------------------------------
# c2: Restricción de capacidad diaria de producción de la máquina 2
# ---------------------------------
subject to c2: 3*x_1 + 2*x_2 + x_3 + 2*x_4 <= 380;

end;
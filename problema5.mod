# ------------------------------- 
# Problema de optimización : Maximizar la producción en una industria
# automotriz
# Variables de decisión: 
#      x = cantidad de producción de sedanes de cuatro puertas por día,
#      y = cantidad de producción de vagonetas por día.
# NOTA: las variables deben cumplir que x,y >= 0.
# -------------------------------
var x >= 0;
var y >= 0;

# --------------------------------
# Función objetivo : 
#   maximizar la ganancia promedio de cada vagoneta y sedán. 
# ---------------------------------
maximize z: 2100*x + 3000*y;    

# --------------------------------
# c1i: Restricciones de capacidad del sedán y la vagonet
# ---------------------------------
subject to c11: (1/2000)*x + (1/1500)*y <= 1;
subject to c12: (1/2200)*x + (1/2200)*y <= 1;

end;
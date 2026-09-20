# ------------------------------- 
# Problema de optimización : Maximizar la ganancia máxima total de los 
# tres productos que vende la empresa de Milán. 
# Variables de decisión: 
#       x_ij : litros de cada componente i usados para producir j
# donde i={C1,C2} y j={GCA,GCB,GCC}.

# NOTA: las variables deben cumplir que x_ij >= 0.
# -------------------------------
var xC1_GCA >= 0;
var xC2_GCA >= 0;
var xC1_GCB >= 0;
var xC2_GCB >= 0;
var xC1_GCC >= 0;
var xC2_GCC >= 0;

# --------------------------------
# Función objetivo : 
#   maximizar la ganancia máxima total de los tres productos que vende la 
#   empresa de Milán.
# ---------------------------------
maximize z: 125*(xC1_GCA + xC2_GCA) + 135*(xC1_GCB + xC2_GCB) + 
            155*(xC1_GCC + xC2_GCC);

# --------------------------------
# c1i: Restricción de disponibilidad de C1 y C2 (litros) con i={1,2}.
# ---------------------------------
subject to c11: xC1_GCA + xC1_GCB + xC1_GCC <= 10000;
subject to c12: xC2_GCA + xC2_GCB + xC2_GCC <= 15000;

# --------------------------------
# c2i: Restricciones de acuerdo a la demanda de producción, con 
# i={GCA,GCB,GCC}.
# ---------------------------------
subject to c21: xC1_GCA + xC2_GCA >= 6000;
subject to c22: xC1_GCB + xC2_GCB >= 7000;
subject to c23: xC1_GCC + xC2_GCC >= 9000;

# --------------------------------
# c3i: Restricciones por elemento crítico, con 
# i={GCA,GCB,GCC}.
# ---------------------------------
subject to c31: 0.4*xC1_GCA + 0.2*xC2_GCA >= 0.30*(xC1_GCA + xC2_GCA);
subject to c32: 0.4*xC1_GCB + 0.2*xC2_GCB <= 0.30*(xC1_GCB + xC2_GCB);
subject to c33: xC1_GCC >= 0.30*xC2_GCC;

end;
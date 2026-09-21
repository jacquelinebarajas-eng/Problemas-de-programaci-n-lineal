# ------------------------------- 
# Problema de optimización : Maximizar la producción de una empresa 
# textil.
# Variables de decisión: 
#  A_i = monto invertido en la opción A al inicio del año i     i={1,2,3,4,5}, 
#  B_j = monto invertido en la opción B al inicio del año j     j ={1,2,3,4},
#  C_k = monto invertido en la opción C al inicio del año k     k={1,2,3},
#  D_l = monto invertido en la opción D al inicio del año l     l={1,2},
#  S_t = \text{dinero sin invertir al final del año t           t={1,2,3,4,5,6},
# NOTA: las variables deben cumplir que A_i, B_j, C_k, D_l >= 0.
# -------------------------------
var A1 >= 0;
var A2 >= 0;
var A3 >= 0;
var A4 >= 0;
var A5 >= 0;

var B1 >= 0;
var B2 >= 0;
var B3 >= 0;
var B4 >= 0;

var C1 >= 0;
var C2 >= 0;
var C3 >= 0;

var D1 >= 0;
var D2 >= 0;

var S1 >= 0;
var S2 >= 0;
var S3 >= 0;
var S4 >= 0;
var S5 >= 0;
var S6 >= 0;


# --------------------------------
# Función objetivo : 
#   minimizar la inversión inicial posible
# NOTA : Tomar cada una de las opciones en el primer año
# ---------------------------------
minimize z: A1 + B1 + C1 + D1 + S1;
    
# --------------------------------
# Restricciones de balance
# ---------------------------------
subject to c2: S1 + 1.05*A1 = A2 + B2 + C2 + D2 + S2;   # Año 2
subject to c3: S2 + 1.05*A2 + 1.13*B1 = A3 + B3 + C3 + S3 + 20000; # Año 3
subject to c4: S3 + 1.05*A3 + 1.13*B2 + 1.28*C1 = A4 + B4 + S4 + 22000;   # Año 4
subject to c5: S4 + 1.05*A4 + 1.13*B3 + 1.28*C2 + 1.40*D1 = A5 + S5 + 
           24000;    # Año 5
subject to c6: S5 + 1.05*A5 + 1.13*B4 + 1.28*C3 + 1.40*D2 = S6 + 26000;   # Año 6

# --------------------------------
# c1i: Restricciones de límite de riesgo por año  i={1,2,3}
# --------------------------------- 
subject to c11: C1 + D1 <= 0.20*(A1 + B1 + C1 + D1);   # Año 1
subject to c12: C2 + D2 <= 0.20*(A2 + B2 + C2 + D2);   # Año 2
subject to c13: C3 <= 0.20*(A3 + B3 + C3);   # Año 3

end;
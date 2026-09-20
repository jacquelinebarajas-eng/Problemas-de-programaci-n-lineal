# ------------------------------- 
# Problema de optimización : Maximizar la producción de una empresa 
# textil.
# Variables de decisión: 
#  x_i = cantidad de metros de tela i en telar jacquard          i={1,2,3,4,5}, 
#  y_j = cantidad de metros de tela j en telar ratier            j ={3,4,5},
#  z_i = cantidad de metros de tela i comprados en otra fábrica  i={1,2,3,4,5},
#
# NOTA: las variables deben cumplir que x_i,y_j,z_i >= 0.
# -------------------------------
var x_1 >= 0;
var x_2 >= 0;
var x_3 >= 0;
var x_4 >= 0;
var x_5 >= 0;

var y_3 >= 0;
var y_4 >= 0;
var y_5 >= 0;

var z_1 >= 0;
var z_2 >= 0;
var z_3 >= 0;
var z_4 >= 0;
var z_5 >= 0;


# --------------------------------
# Función objetivo : 
#   maximizar la ganancia por metro si se tejió o se compró la tela
# NOTA : 
#       ganancia = Metros de tela producidos en el telar jacquard + 
#                  Metros de tela producidos en el telar ratier +
#                  Metros de tela comprados.
# ---------------------------------
maximize z:
      1.33*x_1 + 1.31*x_2 + 1.61*x_3 + 1.73*x_4 + 1.20*x_5
    + 1.61*y_3 + 1.73*y_4 + 1.20*y_5
    + 1.13*z_1 + 1.16*z_2 + 1.50*z_3 + 1.54*z_4 + 1.00*z_5;
    
# --------------------------------
# c1: Restricciones para cubrir demanda de cada tela (metros)
# ---------------------------------
subject to c11: x_1 + z_1 = 16500;
subject to c12: x_2 + z_2 = 22000;
subject to c13: x_3 + y_3 + z_3 = 62000;
subject to c14: x_4 + y_4 + z_4 = 7500;
subject to c15: x_5 + y_5 + z_5 = 62000;

# --------------------------------
# c2: Restricción de capacidad de los telares (horas)
# ---------------------------------
subject to c21: x_1/4.63 + x_2/4.63 + x_3/5.23 + x_4/5.23 + x_5/4.17 <= 5760;
subject to c22: y_3/5.23 + y_4/5.23 + y_5/4.17 <= 21600;

end;
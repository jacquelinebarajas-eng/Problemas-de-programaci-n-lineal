# -------------------------------
# Problema de optimización: minimizar el transporte
# Variables de decisión:
#      x_ij = kilogramos de aceitunas enviados desde i a j
#          { 1  si Sevilla envía una cantidad positiva a Valencia,
#      y = {
#          { 0  en otro caso.
#
#          { 1  si Sevilla envía a La Coruña,
#      z = {
#          { 0  si Almería envía a La Coruña.
#
# NOTA: las variables deben cumplir que x_ij >= 0, y,z es 0 o 1.
# -------------------------------
var xJV >= 0;
var xJM >= 0;
var xJB >= 0;
var xJL >= 0;

var xSV >= 0;
var xSM >= 0;
var xSB >= 0;
var xSL >= 0;

var xAV >= 0;
var xAM >= 0;
var xAB >= 0;
var xAL >= 0;

var y, binary;
var z, binary;

# --------------------------------
# Función objetivo:
#    minimizar el transporte
# ---------------------------------
minimize costo: 30*xJV + 20*xJM + 70*xJB + 60*xJL + 70*xSV + 50*xSM + 20*xSB
          + 30*xSL + 20*xAV + 50*xAM + 40*xAB + 50*xAL + 200*y;

# --------------------------------
# c1i: Restricciones de capacidad de cada planta, i={1,2,3}
# ---------------------------------
subject to c11: xJV + xJM + xJB + xJL <= 5000;
subject to c12: xSV + xSM + xSB + xSL <= 6000;
subject to c13: xAV + xAM + xAB + xAL <= 2500;

# --------------------------------
# c2i: Restricciones de demanda de cada centro, i={1,2,3,4}
# ---------------------------------
subject to c21: xJV + xSV + xAV = 6000;
subject to c22: xJM + xSM + xAM = 4000;
subject to c23: xJB + xSB + xAB = 2000;
subject to c24: xJL + xSL + xAL = 1500;

# --------------------------------
# c3i: Restricciones de acuerdo a las políticas, i={1,2,3,4}
# ---------------------------------
subject to c31: 0.6*(xJV + xJM + xJB + xJL) <= xJV;
subject to c32: xSV <= 6000*y;
subject to c33: xSL <= 6000*z;
subject to c34: xAL <= 6000*(1-z);

end;
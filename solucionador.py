from amplpy import AMPL

# -------
# 1. Inicializa AMPL
ampl = AMPL()

# 2. Lee tu archivo de optimización (asegúrate de que el nombre coincida)
ampl.read(r"/workspaces/Problemas-de-programaci-n-lineal/problema3.mod")

# 3. Dile que use el solucionador que acabamos de instalar
ampl.set_option("solver", "highs")

# 4. Resuelve el problema
ampl.solve()

# 5. Muestra los resultados en pantalla
#'''
#        PROBLEMA 3
print("\n--- RESULTADOS ---")
print("Ganancia Total Máxima (Z):", ampl.get_objective("z").value())
print("Unidades de x1:", ampl.get_variable("x1").value())
print("Unidades de x2:", ampl.get_variable("x2").value())
print("Unidades de x3:", ampl.get_variable("x3").value())
print("Unidades de x4:", ampl.get_variable("x4").value())
#'''

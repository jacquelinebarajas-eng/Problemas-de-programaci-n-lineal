# Problemas de Programación Lineal

## Índice

1. [Planeación de la producción en una empresa textil](#1-planeación-de-la-producción-en-una-empresa-textil)
2. [Portafolio de inversiones](#2-portafolio-de-inversiones)
3. [Planeación de la producción en una compañía metalúrgica](#3-planeación-de-la-producción-en-una-compañía-metalúrgica)
4. [Planeación de la producción en una empresa de cosméticos](#4-planeación-de-la-producción-en-una-empresa-de-cosméticos)
5. [Planeación de la producción en una industria automotriz](#5-planeación-de-la-producción-en-una-industria-automotriz)
6. [Cartera de inversiones](#6-cartera-de-inversiones)
7. [Fondos de inversión](#7-fondos-de-inversión)
8. [Renta de almacenes](#8-renta-de-almacenes)
9. [Planeación de la producción para un fabricante de alambre](#9-planeación-de-la-producción-para-un-fabricante-de-alambre)
10. [Inversiones mixtas](#10-inversiones-mixtas)
11. [Planificación del transporte en una empresa productora de aceitunas](#11-planificación-del-transporte-en-una-empresa-productora-de-aceitunas)
12. [Programación semanal de la producción en una empresa metalúrgica](#12-programación-semanal-de-la-producción-en-una-empresa-metalúrgica)
13. [Planeación de cultivos](#13-planeación-de-cultivos)

---

## 1. Planeación de la producción en una empresa textil

Una empresa textil produce cinco tipos de telas. Cada tela puede tejerse en uno o más de los 38 telares con que cuenta la industria. El Departamento de Ventas ya pronosticó la demanda del próximo mes; ese pronóstico aparece en la Tabla 1, junto con el precio de venta, el costo variable y el precio de compra, todos expresados por metro de tela con un ancho de 140 cm. La empresa opera las 24 horas del día y tiene programado trabajar los 30 días del mes siguiente.

La industria cuenta con dos tipos de telares: *jacquard* y *ratier*. Los telares *jacquard* son más versátiles y pueden producir los cinco tipos de tela; los telares *ratier* solo producen tres de los cinco tipos. En total existen 38 telares: 8 *jacquard* y 30 *ratier*. La Tabla 2 indica la velocidad de tejido de cada tela en ambos tipos de telar. El tiempo requerido para cambiar de tela no es significativo, por lo que no se toma en cuenta.

La empresa satisface como mínimo toda la demanda requerida, ya sea con sus propios tejidos o con telas adquiridas a otra fábrica. Es decir, dadas las limitaciones de capacidad de los telares, las telas que no puedan tejerse en la propia industria se adquirirán a otra fábrica. El precio de compra de cada tela también aparece en la Tabla 1.

**Propósito:** construir un modelo que sirva para programar la producción de esta empresa textil y que además determine cuántos metros de cada tela deben adquirirse a la otra fábrica.

**Tabla 1.** Demanda mensual, precio de venta, costo variable y precio de compra de las telas.

| Tela | Demanda (m) | Precio de venta ($/m) | Costo variable ($/m) | Precio de compra ($/m) |
|---|---|---|---|---|
| 1 | 16,500 | 3.99 | 2.66 | 2.86 |
| 2 | 22,000 | 3.86 | 2.55 | 2.70 |
| 3 | 62,000 | 4.10 | 2.49 | 2.60 |
| 4 | 7,500  | 4.24 | 2.51 | 2.70 |
| 5 | 62,000 | 3.70 | 2.50 | 2.70 |

**Tabla 2.** Velocidad de los telares (m/h).

| Tela | Jacquard | Ratier |
|---|---|---|
| 1 | 4.63 | -- |
| 2 | 4.63 | -- |
| 3 | 5.23 | 5.23 |
| 4 | 5.23 | 5.23 |
| 5 | 4.17 | 4.17 |

---

## 2. Portafolio de inversiones

Saúl Cortés, ingeniero en organización industrial, desea formar su propio portafolio de inversiones con el fin de emplear la mínima inversión inicial posible y generar con ella cantidades específicas de capital durante los próximos seis años (él considera del año 1 al año 6). El propósito de su análisis de inversión es planear los gastos de su hija Susana cuando ingrese a la universidad, dentro de dos años (año 3). Los requerimientos financieros de Saúl se presentan en la Tabla 3.

Las características de las inversiones entre las que Saúl puede elegir se muestran en la Tabla 4.

Los productos C y D implican riesgo, por lo cual Saúl no quiere destinarles en conjunto más del 20 % de la inversión total.

**Propósito:** encontrar un modelo de programación lineal que ayude a Saúl a resolver de manera óptima su problema de inversión.

**Tabla 3.** Requerimientos financieros de Saúl Cortés.

| Año | Capital requerido ($) |
|---|---|
| 3 | 20,000 |
| 4 | 22,000 |
| 5 | 24,000 |
| 6 | 26,000 |

**Tabla 4.** Características de las inversiones.

| Opción | Rentabilidad (%) | Vencimiento (años) |
|---|---|---|
| A | 5  | 1 |
| B | 13 | 2 |
| C | 28 | 3 |
| D | 40 | 4 |

---

## 3. Planeación de la producción en una compañía metalúrgica

Un fabricante de una empresa metalúrgica de Frankfurt produce cuatro tipos de productos, que se procesan de manera secuencial en dos máquinas. A continuación se presentan los detalles técnicos de esta producción.

**Propósito:** determinar cuántas **unidades** diarias de cada uno de los cuatro productos se deben fabricar para **maximizar** la producción diaria, respetando el límite de tiempo de las dos máquinas.

**Tabla 5.** Detalles de producción del fabricante metalúrgico.

| Máquina | Costo por minuto ($) | Producto 1 | Producto 2 | Producto 3 | Producto 4 | Capacidad diaria (minutos) |
|---|---|---|---|---|---|---|
| 1 | 10 | 2 | 3 | 4 | 2 | 500 |
| 2 | 5  | 3 | 2 | 1 | 2 | 380 |
| **Precio de venta por unidad ($)** | | 65 | 70 | 55 | 45 | |

---

## 4. Planeación de la producción en una empresa de cosméticos

Una empresa de Milán vende productos químicos para cosmética profesional. Dicha empresa planea la producción de tres productos: *GCA, GCB, GCC*, mezclando dos componentes: *C₁, C₂*. Todo producto final debe contener al menos uno de los dos componentes, pero no necesariamente ambos.

Para el próximo periodo de planeación se dispone de 10,000 litros de C₁ y 15,000 litros de C₂. La producción de GCA, GCB, GCC debe programarse de modo que cubra al menos los niveles mínimos de demanda de 6,000, 7,000, 9,000 litros, respectivamente. Se supone que, al mezclar los componentes, no hay pérdida ni ganancia de volumen.

Cada componente químico C₁, C₂ tiene una proporción de elemento crítico de 0.4 y 0.2, respectivamente; es decir, cada litro de C₁ contiene 0.4 litros del elemento crítico. Para obtener GCA, la mezcla debe contener una proporción de al menos 0.3 el elemento crítico. Otro requisito es que la proporción del elemento crítico presente en GCB sea a lo más de 0.3.

Además, la proporción mínima de C₁ respecto de C₂ en el producto GCC debe ser 0.3. La ganancia esperada por la venta de cada litro de GCA, GCB, GCC es de $125, $135 y $155, respectivamente.

**Propósito:** determinar la **ganancia máxima total** de los tres productos que vende la empresa de Milán.

---

## 5. Planeación de la producción en una industria automotriz

Una planta automotriz ensambla dos tipos de vehículos: un sedán de cuatro puertas y una vagoneta. Ambos tipos deben pasar por la planta de pintura y por la planta de ensamble. Si la planta de pintura se dedicara únicamente a pintar sedanes de cuatro puertas, podría pintar alrededor de 2000 vehículos por día, mientras que si solo pintara vagonetas, podría pintar alrededor de 1500 vehículos por día. Por otra parte, si la planta de ensamble se dedicara a un solo tipo de vehículo, sedán de cuatro puertas o vagoneta, podría ensamblar alrededor de 2200 vehículos por día. Cada vagoneta deja una ganancia promedio de $3000, mientras que cada sedán de cuatro puertas deja una ganancia promedio de $2100.

**Propósito:** determinar la producción diaria que maximice la ganancia diaria de la planta de ensamble de vehículos.

---

## 6. Cartera de inversiones

ORGASA tiene una cartera de inversiones en acciones, bonos y otros instrumentos alternativos. Actualmente dispone de $200,000 que deben destinarse a nuevas inversiones. Las cuatro alternativas que ORGASA está considerando se muestran en la Tabla 6.

La medida de riesgo indica la incertidumbre asociada a cada acción en cuanto a su capacidad para alcanzar el rendimiento anual previsto: a mayor valor, mayor riesgo.

ORGASA ha establecido las siguientes condiciones para sus inversiones:

- **Regla 1:** la tasa anual de rendimiento de la cartera debe ser de al menos 9 %.
- **Regla 2:** ningún valor puede representar más del 50 % de la inversión total en dólares.

**a)** Use un programa lineal para integrar una cartera de inversiones que minimice el riesgo.
**b)** Si la compañía ignorara los riesgos implicados y utilizara una estrategia de rendimiento máximo, ¿cómo se modificaría el modelo anterior?

**Tabla 6.** Datos de las inversiones.

| Detalles financieros | Telefónita | Sankander | Ferrofial | Gamefa |
|---|---|---|---|---|
| Precio por acción ($) | 100 | 50 | 80 | 40 |
| Tasa de rendimiento anual | 0.12 | 0.08 | 0.06 | 0.10 |
| Medida de riesgo por $ invertido | 0.10 | 0.07 | 0.05 | 0.08 |

---

## 7. Fondos de inversión

Un pequeño inversionista dispone de $12,000 para invertir y puede elegir entre tres fondos distintos. Los fondos de inversión garantizados ofrecen una tasa de rendimiento esperada del 7 %; los fondos mixtos, en los que una parte del capital está garantizada, tienen una tasa de rendimiento esperada del 8 %; mientras que una inversión en la Bolsa de Valores implica una tasa de rendimiento esperada del 12 %, pero sin capital de inversión garantizado. Con el fin de minimizar el riesgo, el inversionista ha decidido no invertir más de $2,000 en la Bolsa de Valores. Además, por razones fiscales, debe invertir al menos tres veces más en fondos de inversión garantizados que en fondos mixtos. Suponga que al final del año los rendimientos son los esperados: ¿cuáles son los montos óptimos de inversión?

**(a)** Considere este problema como si fuera un modelo de programación lineal con dos variables de decisión.
**(b)** Resuelva el problema con el método gráfico e indique la solución óptima.

---

## 8. Renta de almacenes

Una empresa se ha dado cuenta de que no tendrá suficiente espacio de almacenamiento durante los próximos tres meses. Los requerimientos adicionales de almacenamiento para ese periodo se muestran en la Tabla 7.

Para cubrirlos, la empresa planea rentar espacio adicional a corto plazo. Al inicio de cada mes puede rentar cualquier cantidad de espacio por cualquier número de meses, y puede contratar de manera independiente distintas cantidades de espacio con distintas duraciones. Por ejemplo, durante el primer mes puede rentar 20,000 m² por dos meses y, además, 5,000 m² por un mes. También puede contratar nuevas rentas antes de que venzan las anteriores. Los costos por cada 1,000 m² de espacio rentado, según la duración del contrato, se muestran en la Tabla 8.

**Propósito:** determinar el costo mínimo que proporcione una política de renta que cubra los requerimientos de espacio.

**Tabla 7.** Requerimientos adicionales de espacio de almacenamiento.

| Mes | Enero | Febrero | Marzo |
|---|---|---|---|
| Espacio requerido (1,000 m²) | 25 | 10 | 20 |

**Tabla 8.** Costos de renta.

| Duración de la renta | 1 mes | 2 meses | 3 meses |
|---|---|---|---|
| Costo ($ por 1,000 m²) | 280 | 450 | 600 |

---

## 9. Planeación de la producción para un fabricante de alambre

Una empresa de Valencia fabrica alambre de aluminio y alambre de cobre. Cada kilogramo de alambre de aluminio requiere 5 kWh de electricidad y 0.25 horas de trabajo, mientras que cada kilogramo de alambre de cobre requiere 2 kWh de electricidad y 0.5 horas de trabajo. La producción de alambre de cobre está limitada por la materia prima disponible, que permite fabricar a lo más 60 kg al día. La electricidad está limitada a 500 kWh diarios y el tiempo de trabajo, a 40 horas diarias. La ganancia del alambre de aluminio es de $0.25 por kilogramo y la del alambre de cobre, de $0.40 por kilogramo.

**Propósito:** determinar la cantidad de cada alambre que se debe producir para maximizar la ganancia.

---

## 10. Inversiones mixtas

La empresa Inversiones Internacionales, S.A.U. cuenta con hasta cinco millones de dólares para invertir en seis opciones posibles. La Tabla 9 muestra las características de cada una de ellas. Por experiencia, la compañía sabe que no es recomendable destinar más del 25 % del total a una sola de estas opciones. Además, es necesario invertir al menos el 30 % en metales preciosos y al menos el 45 % entre créditos comerciales y bonos corporativos. Por último, se exige que el riesgo global de la cartera no sea mayor que 2.0.

**Propósito:** maximizar la rentabilidad de sus inversiones para determinar la inversión de la compañía en las seis opciones posibles.

**Tabla 9.** Rentabilidad y riesgo de cada opción de inversión.

| Inversión | Rentabilidad (%) | Riesgo |
|---|---|---|
| Créditos comerciales | 7 | 1.7 |
| Bonos corporativos | 10 | 1.2 |
| Acciones en oro | 19 | 3.7 |
| Acciones en platino | 12 | 2.4 |
| Bonos hipotecarios | 8 | 2.0 |
| Préstamos para edificios | 14 | 2.9 |

---

## 11. Planificación del transporte en una empresa productora de aceitunas

Una empresa de Jaén tiene tres plantas productoras de aceitunas, ubicadas en Jaén, Sevilla y Almería. La capacidad de producción estimada, en kilogramos, para los próximos tres meses se muestra en la Tabla 10.

La compañía distribuye las aceitunas a través de cuatro centros regionales de distribución, localizados en Valencia, Madrid, Barcelona y La Coruña. La demanda pronosticada en dichos centros para los próximos tres meses se presenta en la Tabla 11.

La administración de la empresa desea determinar cuánto de esa producción debe enviarse de cada planta a cada centro de distribución. El costo unitario, en dólares por kilogramo de aceituna enviada por cada ruta, se muestra en la Tabla 12.

**Propósito:** ayudar a la empresa en la toma de decisiones. Por razones estratégicas, la empresa ha adoptado las siguientes políticas para la planificación de su transporte:

- Al menos el 60 % de la producción total de Jaén debe enviarse a Valencia (restricción lineal: no requiere variables enteras).
- Los envíos de Sevilla a Valencia tendrán un costo fijo de $200 (requiere una variable binaria: el costo fijo se activa solo si se envía una cantidad positiva).
- Solo Sevilla o Almería pueden hacer envíos a La Coruña, pero nunca ambas (requiere una variable binaria: condición disyuntiva).

**Tabla 10.** Pronóstico de capacidad de producción en cada planta.

| Planta | Capacidad de producción (kg) |
|---|---|
| Jaén | 5,000 |
| Sevilla | 6,000 |
| Almería | 2,500 |

**Tabla 11.** Demanda pronosticada para cada centro de distribución.

| Centro de distribución | Demanda (kg) |
|---|---|
| Valencia | 6,000 |
| Madrid | 4,000 |
| Barcelona | 2,000 |
| La Coruña | 1,500 |

**Tabla 12.** Costo unitario de transporte ($/kg) de cada planta a cada centro de distribución.

| Origen / Destino | Valencia | Madrid | Barcelona | La Coruña |
|---|---|---|---|---|
| Jaén | 30 | 20 | 70 | 60 |
| Sevilla | 70 | 50 | 20 | 30 |
| Almería | 20 | 50 | 40 | 50 |

---

## 12. Programación semanal de la producción en una empresa metalúrgica

La empresa de productos industriales PRODA, S.A. enfrenta el problema de planificar la producción semanal de sus tres productos (P₁, P₂ y P₃). Estos productos se venden a grandes compañías industriales, por lo que PRODA, S.A. desea fabricarlos y enviarlos en las cantidades que le resulten más rentables.

Cada producto requiere tres operaciones: fundición, mecanizado, y ensamblado y empaquetado. Las operaciones de fundición de los productos P₁ y P₂ pueden subcontratarse, pero el producto P₃ exige equipo especial, por lo que su fundición no puede subcontratarse. Los costos directos de las tres operaciones y los precios de venta se muestran en la Tabla 13.

Cada unidad del producto P1 requiere 6 minutos de fundición (si esta se realiza en PRODA, S.A.), 6 minutos de mecanizado y 3 minutos de ensamblado y empaquetado. Para el producto P₂ los tiempos son, respectivamente, de 10, 3 y 2 minutos. Una unidad del producto P₃ necesita 8 minutos de fundición, 8 minutos de mecanizado y 2 minutos de ensamblado y empaquetado. PRODA, S.A. dispone de capacidades semanales de 8,000 minutos para fundición, 12,000 minutos para mecanizado y 10,000 minutos para ensamblado y empaquetado.

**Propósito:** maximizar las ganancias semanales de la empresa PRODA, S.A.

**Tabla 13.** Costos de operación y precios de venta, en dólares por unidad.

| Costos directos y precio de venta ($) | P₁ | P₂ | P₃ |
|---|---|---|---|
| Costo de fundición en PRODA, S.A. | 0.30 | 0.50 | 0.40 |
| Costo de fundición subcontratada | 0.50 | 0.60 | -- |
| Costo de mecanizado | 0.20 | 0.10 | 0.27 |
| Costo de ensamblado y empaquetado | 0.30 | 0.20 | 0.20 |
| Precio de venta | 1.50 | 1.80 | 1.97 |

---

## 13. Planeación de cultivos

Una empresa citrícola de Valencia posee 120 acres (1 acre = 4,047 m²) y planea sembrar al menos tres cultivos. Las semillas de los cultivos A, B y C cuestan $40, $20 y $30 por acre, respectivamente, y la empresa pretende invertir a lo más $3,400 en semillas. Las semillas A, B y C requieren 1, 2 y 1 días de trabajo por acre, respectivamente, y se dispone de 170 días de trabajo. Si el dueño obtiene una ganancia de $100 por acre con la semilla A, de $300 por acre con la semilla B y de $200 por acre con la semilla C, ¿cuántos acres debería sembrar de cada semilla para maximizar la ganancia?
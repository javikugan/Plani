# Planificacion Con Drones

## Estructura del Proyecto

```
.gitignore
Memoria_Plani_Ext.pdf
__pycache__/
.vscode/
Ejercicio1/
Ejercicio2/
Ejercicio3/
plani_venv/
planificadores/
```

### Carpetas y Archivos Principales

- **Ejercicio1/**  
  Contiene el primer ejercicio, incluyendo:
  - `1.ipynb`: Notebook con experimentos y análisis.
  - `generate_problem.py`: Script para generar problemas PDDL.
  - `dron-domain.pddl`: Dominio PDDL.
  - `Problemas/`, `Resultados/`: Carpetas para almacenar problemas y resultados.

- **Ejercicio2/**  
  Segundo ejercicio, con subcarpetas para diferentes apartados (`2_1/`, `2_2/`).  
  Cada subcarpeta puede tener su propio generador de problemas y experimentos.

- **Ejercicio3/**  
  Tercer ejercicio, con scripts y subcarpetas similares a los anteriores.

- **planificadores/**  
  Contiene los planificadores automáticos (FF, MetricFF, LPG-TD, OPTIC, etc.) y su documentación de uso ([planificadores/README.md](planificadores/README.md)).

- **plani_venv/**  
  Entorno virtual de Python para la gestión de dependencias.

- **Memoria_Plani_Ext.pdf**  
  Documento de memoria del proyecto.

## Scripts y Funcionalidad

### Generadores de Problemas

- Cada ejercicio tiene su propio `generate_problem.py` (o variantes) que permiten crear archivos de problemas en formato PDDL con diferentes parámetros:
  - Número de drones, transportadores, ubicaciones, personas, cajas, metas, tipos de contenido, etc.
  - Ejemplo de uso:
    ```
    python3 generate_problem.py -d 2 -r 2 -l 5 -p 5 -c 5 -g 5 -o Problemas
    ```

### Ejecución de Planificadores

- Los scripts como [`Ejercicio3/3_2/test.py`](Ejercicio3/3_2/test.py) automatizan:
  - La generación de problemas.
  - La ejecución del planificador OPTIC sobre cada problema.
  - La detección de concurrencia en los planes generados.
  - El análisis de escalabilidad y variación de parámetros.

### Análisis y Resultados

- Los notebooks (`.ipynb`) y scripts de análisis procesan los resultados de los planificadores, calculan métricas (tiempo, pasos, coste) y generan tablas o gráficos.
- Los resultados suelen almacenarse en la carpeta `Resultados/` de cada ejercicio.

## Planificadores

- Los ejecutables y scripts de los planificadores están en la carpeta [planificadores/](planificadores/).
- Incluye planificadores como FF, MetricFF, LPG-TD, OPTIC, JavaFF, PDDL4J, entre otros.
- Consulta [planificadores/README.md](planificadores/README.md) para instrucciones de uso e instalación.

## Ejemplo de Flujo de Trabajo

1. **Generar un problema:**
   ```
   python3 Ejercicio3/generate_problem.py -d 2 -r 2 -l 5 -p 5 -c 5 -g 5 -o Ejercicio3/Problemas
   ```
2. **Ejecutar un planificador:**
   ```
   ./planificadores/optic-clp Ejercicio3/dron-domain.pddl Ejercicio3/Problemas/drone_problem_d2_r2_l5_p5_c5_g5_ct2.pddl
   ```
3. **Analizar el plan generado y extraer métricas.**

## Notas

- Los scripts están preparados para ser ejecutados desde la terminal de Linux.
- Es recomendable activar el entorno virtual antes de ejecutar scripts de Python:
  ```
  source plani_venv/bin/activate
  ```
- Algunos scripts pueden requerir permisos de ejecución (`chmod +x`).

---

**Para más detalles sobre cada ejercicio, revisa los notebooks y los scripts de cada carpeta.**
# 🛠️ Motor Optimizer con Pyomo y Bonmin

Este proyecto implementa un modelo de optimización de calendario de reparaciones para una flota de motores aeronáuticos, utilizando programación no lineal con variables mixtas (MINLP) en Pyomo y el solver Bonmin.

## 📊 Objetivo

Minimizar el costo total en valor presente (NPV) de:
- Reparaciones programadas (SV1)
- Reparaciones proyectadas (SV2)
- Costo por fin de vida útil (EOL)

Incorporando:
- Escalación de precios anual del 3%
- Fechas límite de reparación (Next ESV EGTM 0°)
- Límite máximo de 12 años de operación
- Restricciones de tiempo y límites de ciclos

## 🧩 Archivos incluidos

- `modelo_motor_bonmin.ipynb`: Notebook de modelado y resolución con Bonmin
- `PSRV optimización.xlsx`: Base de datos de motores y fechas
- `environment.yml`: Dependencias para ejecutar el modelo en Binder

## 🚀 Ejecución en la nube

Haz clic en el siguiente botón para abrir el notebook en Binder y ejecutarlo sin instalar nada:

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/tuusuario/motor-optimizer-bonmin/HEAD?filepath=modelo_motor_bonmin.ipynb)

> **Nota**: Cambia `tuusuario` por tu nombre de usuario de GitHub.

## 🛠️ Requisitos si deseas correrlo localmente

```bash
conda env create -f environment.yml
conda activate motor-optimizer
jupyter notebook
```

## 👨‍💻 Autor

Proyecto desarrollado con fines académicos y profesionales por [Tu Nombre], optimizando procesos de mantenimiento aeronáutico mediante herramientas de análisis de datos y optimización matemática.

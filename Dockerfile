FROM jupyter/scipy-notebook

USER root

# Instalar bonmin vía coinor (Coin Brew)
RUN apt-get update && apt-get install -y \
    coinor-libbonmin-dev \
    coinor-libipopt-dev \
    coinor-libcoinutils-dev \
    coinor-libosi-dev \
    coinor-libclp-dev \
    coinor-libcbc-dev \
    coinor-libcgl-dev \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

USER $NB_UID

# Instalar Python packages
RUN pip install pyomo pandas openpyxl

# Establecer notebook por defecto
COPY modelo_motor_bonmin.ipynb /home/jovyan/

Análisis de Frecuencia de Palabras en Novelas Clásicas
Este proyecto realiza web scraping de una novela clásica (Moby Dick de Project Gutenberg), analiza la frecuencia de palabras usando NLTK y genera una nube de palabras. Está dockerizado con Jupyter Lab para un entorno reproducible.
Requisitos

Docker Desktop instalado.
Python 3.12 (incluido en el contenedor).
Dependencias: requests, beautifulsoup4, nltk, wordcloud, matplotlib, jupyterlab.

Instalación

Clona el repositorio:git clone https://github.com/tu_usuario/novelas-scraping.git


Construye la imagen de Docker:docker build -t novelas-jupyter .


Corre el contenedor:docker run -p 8888:8888 -v "$(pwd)/notebooks:/app/notebooks" -v "$(pwd)/output:/output" novelas-jupyter


Abre Jupyter Lab en http://127.0.0.1:8888 y ejecuta notebooks/analisis_novelas.ipynb.

Estructura

Dockerfile: Configura el contenedor con Python y Jupyter Lab.
requirements.txt: Dependencias del proyecto.
notebooks/analisis_novelas.ipynb: Notebook con el análisis.
output/: Carpeta para resultados (ej. nubes de palabras).

Resultados
El notebook genera una nube de palabras que muestra las palabras más frecuentes en Moby Dick, útil para análisis literario.

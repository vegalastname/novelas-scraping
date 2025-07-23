# Usar imagen base de Python 3.12 (slim para mantenerlo liviano)
FROM python:3.12-slim

# Establecer directorio de trabajo
WORKDIR /app

# Copiar requirements y instalar dependencias
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el código (incluye notebooks si los creas)
COPY . .

# Exponer el puerto de Jupyter Lab (8888 por defecto)
EXPOSE 8888

# Volumen para output y notebooks persistentes
VOLUME /app/notebooks
VOLUME /output

# Comando por defecto: Iniciar Jupyter Lab sin token para simplicidad (usa --allow-root si es necesario)
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]

# Instalar Selenium y dependencias ligeras
RUN apt-get update && apt-get install -y \
    wget \
    unzip \
    chromium-driver

RUN pip install selenium
